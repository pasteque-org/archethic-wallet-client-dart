part of '../archethic_wallet_client.dart';

/// Abstract base class for Archethic Wallet Client (AWC) implementations using JSON-RPC.
///
/// This class provides the core functionality for connecting to a wallet,
/// sending requests, and managing the connection state and subscriptions.
/// Concrete implementations will provide specific transport mechanisms (e.g., Deeplink, WebExtension).
abstract class AWCJsonRPCClient extends ArchethicDAppClient {
  /// Creates an [AWCJsonRPCClient] instance.
  ///
  /// [channelBuilder] is a function that returns a [FutureOr] of a [StreamChannel<String>],
  /// responsible for establishing the communication channel.
  /// [origin] specifies the [RequestOrigin] of the DApp making the requests.
  /// [disposeChannel] is a function responsible for cleaning up the communication channel when closed.
  AWCJsonRPCClient({
    required this.channelBuilder,
    required this.origin,
    required this.disposeChannel,
  }) : super._();

  @override
  final RequestOrigin origin;

  /// Function responsible for building the communication [StreamChannel<String>].
  final FutureOr<StreamChannel<String>> Function() channelBuilder;

  /// Function responsible for disposing of the communication [StreamChannel<String>].
  final Future<void>? Function(StreamChannel<String> channel) disposeChannel;

  /// The underlying JSON-RPC peer client. Null if not connected.
  Peer? _client;

  /// The communication channel. Null if not connected.
  StreamChannel<String>? _channel;

  /// Controller for broadcasting connection state changes.
  final _connectionStateController =
      StreamController<ArchethicDappConnectionState>.broadcast()
        ..add(const ArchethicDappConnectionState.disconnected());

  static final _logger = Logger('AWC-JsonRPCClient');

  /// Controller for broadcasting subscription updates.
  final _subscriptionValues = StreamController<SubscriptionUpdate>.broadcast();

  @override
  ArchethicDappConnectionState get state {
    if (_client == null) {
      return const ArchethicDappConnectionState.disconnected();
    }
    if (_client!.isClosed) {
      return const ArchethicDappConnectionState.disconnected();
    }
    return const ArchethicDappConnectionState.connected();
  }

  @override
  Stream<ArchethicDappConnectionState> get connectionStateStream =>
      _connectionStateController.stream;

  SingletonTask<void>? __connectTask;

  /// Singleton task to manage the connection process, ensuring it only runs once at a time.
  SingletonTask<void> get _connectTask =>
      __connectTask ??= SingletonTask(
        name: 'Connect',
        task: () async {
          if (_client != null && !_client!.isClosed) {
            _logger.info('Connection already opened. Connection abort.');
            return;
          }

          _logger.info('Opening connection');
          _connectionStateController.add(
            const ArchethicDappConnectionState.connecting(),
          );

          try {
            _channel = await _connectInternal();
            _logger.info('Connection opened');
            _connectionStateController.add(
              const ArchethicDappConnectionState.connected(),
            );

            final client = Peer(_channel!.cast<String>())
              ..registerMethod('addSubscriptionNotification', (final params) {
                _logger.info('Received subscription update: ${params.value}');
                _subscriptionValues.add(
                  SubscriptionUpdate.fromJson(params.value),
                );
              });

            _client = client;

            // Listen for client closure to update connection state.
            unawaited(
              client
                  .listen()
                  .then((final value) {
                    _logger.info('Connection closed by peer.');
                    _connectionStateController.add(
                      const ArchethicDappConnectionState.disconnected(),
                    );
                  })
                  .catchError((dynamic error, StackTrace stackTrace) {
                    _logger.warning(
                      'Error while listening to client close: $error',
                      error,
                      stackTrace,
                    );
                    _connectionStateController.add(
                      const ArchethicDappConnectionState.disconnected(),
                    );
                  }),
            );
          } catch (e) {
            _logger.severe('Connection process failed: $e');
            _connectionStateController.add(
              const ArchethicDappConnectionState.disconnected(),
            );
            // Re-throw to allow _connectTask to report the error.
            rethrow;
          }
        },
      );

  @override
  Future<void> connect() => _connectTask.run();

  /// Internal method to establish the stream channel.
  /// Handles errors and updates connection state accordingly.
  Future<StreamChannel<String>> _connectInternal() async {
    try {
      return await channelBuilder();
    } on Exception catch (error, stack) {
      _logger.severe('Channel builder failed', error, stack);
      _connectionStateController.add(
        const ArchethicDappConnectionState.disconnected(),
      );
      throw Failure.connectivity;
    }
  }

  SingletonTask<void>? __closeTask;

  /// Singleton task to manage the disconnection process.
  SingletonTask<void> get _closeTask =>
      __closeTask ??= SingletonTask(
        name: 'Close',
        task: () async {
          _logger.info('Closing connection...');
          await _client?.close();
          _client = null;
          if (_channel != null) {
            await disposeChannel(_channel!);
          }
          _channel = null;
          _connectionStateController.add(
            const ArchethicDappConnectionState.disconnected(),
          );
          _logger.info('Connection closed successfully.');
        },
      );

  @override
  Future<void> close() => _closeTask.run();

  /// Internal method to subscribe to a method and receive updates.
  ///
  /// [method] is the RPC method to subscribe to.
  /// [params] are the parameters for the subscription request.
  /// Returns a [Subscription] object that provides the subscription ID and a stream of updates.
  Future<Subscription<Map<String, dynamic>>> _subscribe({
    required final String method,
    final Map<String, dynamic> params = const {},
  }) async {
    final subscriptionData = await _send(method: method, params: params);

    final subscriptionId = subscriptionData['subscriptionId'] as String?;
    if (subscriptionId == null) {
      _logger.severe('Subscription response did not contain a subscriptionId.');
      throw Failure.other; // Or a more specific error
    }
    return Subscription(
      id: subscriptionId,
      updates: _subscriptionValues.stream
          .where((final event) => event.subscriptionId == subscriptionId)
          .map((final event) => event.data),
    );
  }

  /// Internal method to send a JSON-RPC request.
  ///
  /// Ensures the client is connected before sending.
  /// [method] is the RPC method name.
  /// [params] are the parameters for the RPC method.
  /// Returns a [Future] that completes with the RPC response as a [Map<String, dynamic>].
  Future<Map<String, dynamic>> _send({
    required final String method,
    final Map<String, dynamic> params = const {},
  }) async {
    if (_client == null || _client!.isClosed) {
      _logger.info(
        'Client not connected. Attempting to connect before sending $method.',
      );
      _client =
          null; // Ensure we attempt a fresh connection if _client was closed.
      await connect();
      // After connect, _client should be initialized if successful.
      if (_client == null || _client!.isClosed) {
        _logger.severe(
          'Connection failed before sending $method. Throwing connectivity failure.',
        );
        throw Failure.connectivity;
      }
    }
    _logger.info('Sending command: $method, params: ${jsonEncode(params)}');
    try {
      final response = await _client!.sendRequest(
        method,
        Request(version: 1, origin: origin, payload: params).toJson(),
      );
      _logger.info('Response received for $method: ${jsonEncode(response)}');
      return response as Map<String, dynamic>;
    } catch (e, stack) {
      _logger.severe('Error sending request $method: $e', e, stack);
      if (e is StateError) {
        _logger.severe('Bad connection state during $method.', e, stack);
        _connectionStateController.add(
          const ArchethicDappConnectionState.disconnected(),
        );
        throw Failure.connectivity;
      }
      if (e is RpcException) {
        _logger.severe(
          'RpcException during $method: ${e.message} (code: ${e.code})',
          e,
          stack,
        );
        throw Failure.fromRpcException(e);
      }
      // For other exceptions, ensure state is updated if it implies disconnection.
      // This is a judgment call, but if the client itself throws, it might be disconnected.
      if (!(_client?.isClosed == false)) {
        // if client is null or closed
        _connectionStateController.add(
          const ArchethicDappConnectionState.disconnected(),
        );
      }
      throw Failure.other;
    }
  }

  //============================================================================
  // RPC Method Implementations
  //============================================================================

  @override
  Future<Result<GetEndpointResult, Failure>> getEndpoint() => Result.guard(
    () => _send(method: 'getEndpoint').then(GetEndpointResult.fromJson),
  );

  @override
  Future<Result<RefreshCurrentAccountResponse, Failure>>
  refreshCurrentAccount() => Result.guard(
    () => _send(
      method: 'refreshCurrentAccount',
    ).then(RefreshCurrentAccountResponse.fromJson),
  );

  @override
  Future<Result<SendTransactionResult, Failure>> sendTransaction(
    final SendTransactionRequest data,
  ) => Result.guard(
    () => _send(
      method: 'sendTransaction',
      params: data.toJson(),
    ).then(SendTransactionResult.fromJson),
  );

  @override
  Future<Result<GetAccountsResult, Failure>> getAccounts() => Result.guard(
    () => _send(method: 'getAccounts').then(GetAccountsResult.fromJson),
  );

  @override
  Future<Result<GetCurrentAccountResult, Failure>> getCurrentAccount() =>
      Result.guard(
        () => _send(
          method: 'getCurrentAccount',
        ).then(GetCurrentAccountResult.fromJson),
      );

  @override
  Future<Result<Subscription<Account>, Failure>> subscribeAccount(
    final String accountName,
  ) => Result.guard(() async {
    final subscriptionDTO = await _subscribe(
      method: 'subscribeAccount',
      params: SubscribeAccountRequest(serviceName: accountName).toJson(),
    );
    return Subscription(
      id: subscriptionDTO.id,
      updates: subscriptionDTO.updates.map((final accountData) {
        return Account.fromJson(accountData);
      }),
    );
  });

  @override
  Future<void> unsubscribeAccount(final String subscriptionId) async {
    // Unsubscribe is best-effort, typically no response is expected other than success/failure.
    await _send(
      method: 'unsubscribeAccount',
      params: UnsubscribeRequest(subscriptionId: subscriptionId).toJson(),
    );
  }

  @override
  Future<Result<Subscription<Account>, Failure>> subscribeCurrentAccount() =>
      Result.guard(() async {
        final subscriptionDTO = await _subscribe(
          method: 'subscribeCurrentAccount',
        );
        return Subscription(
          id: subscriptionDTO.id,
          updates: subscriptionDTO.updates.map((final accountData) {
            return Account.fromJson(accountData);
          }),
        );
      });

  @override
  Future<void> unsubscribeCurrentAccount(final String subscriptionId) async {
    await _send(
      method: 'unsubscribeCurrentAccount',
      params: UnsubscribeRequest(subscriptionId: subscriptionId).toJson(),
    );
  }

  @override
  Future<Result<SendTransactionResult, Failure>> addService(
    final AddServiceRequest data,
  ) => Result.guard(
    () => _send(
      method: 'addService',
      params: data.toJson(),
    ).then(SendTransactionResult.fromJson),
  );

  @override
  Future<Result<SendTransactionResult, Failure>> removeService(
    final RemoveServiceRequest data,
  ) => Result.guard(
    () => _send(
      method: 'removeService',
      params: data.toJson(),
    ).then(SendTransactionResult.fromJson),
  );

  @override
  Future<Result<GetServicesFromKeychainResult, Failure>>
  getServicesFromKeychain() => Result.guard(
    () => _send(
      method: 'getServicesFromKeychain',
    ).then(GetServicesFromKeychainResult.fromJson),
  );

  @override
  Future<Result<KeychainDeriveKeypairResult, Failure>> keychainDeriveKeyPair(
    final KeychainDeriveKeypairRequest data,
  ) => Result.guard(
    () => _send(
      method: 'keychainDeriveKeypair',
      params: data.toJson(),
    ).then(KeychainDeriveKeypairResult.fromJson),
  );

  @override
  Future<Result<KeychainDeriveAddressResult, Failure>> keychainDeriveAddress(
    final KeychainDeriveAddressRequest data,
  ) => Result.guard(
    () => _send(
      method: 'keychainDeriveAddress',
      params: data.toJson(),
    ).then(KeychainDeriveAddressResult.fromJson),
  );

  @override
  Future<Result<SignTransactionsResult, Failure>> signTransactions(
    final SignTransactionRequest data,
  ) => Result.guard(
    () => _send(
      method: 'signTransactions',
      params: data.toJson(),
    ).then(SignTransactionsResult.fromJson),
  );

  @override
  Future<Result<SignPayloadsResult, Failure>> signPayloads(
    final SignPayloadRequest data,
  ) => Result.guard(
    () => _send(
      method: 'signPayloads',
      params: data.toJson(),
    ).then(SignPayloadsResult.fromJson),
  );

  @override
  Future<Result<EncryptPayloadsResult, Failure>> encryptPayloads(
    final EncryptPayloadRequest data,
  ) => Result.guard(
    () => _send(
      method: 'encryptPayloads',
      params: data.toJson(),
    ).then(EncryptPayloadsResult.fromJson),
  );

  @override
  Future<Result<DecryptPayloadsResult, Failure>> decryptPayloads(
    final DecryptPayloadRequest data,
  ) => Result.guard(
    () => _send(
      method: 'decryptPayloads',
      params: data.toJson(),
    ).then(DecryptPayloadsResult.fromJson),
  );
}
