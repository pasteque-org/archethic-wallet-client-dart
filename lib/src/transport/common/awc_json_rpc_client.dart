part of '../archethic_wallet_client.dart';

abstract class AWCJsonRPCClient extends ArchethicDAppClient {
  AWCJsonRPCClient({
    required this.channelBuilder,
    required this.origin,
    required this.disposeChannel,
  }) : super._();

  @override
  final RequestOrigin origin;
  final FutureOr<StreamChannel<String>> Function() channelBuilder;
  final FutureOr<void> Function(StreamChannel<String> channel) disposeChannel;

  Peer? _client;
  StreamChannel<String>? _channel;
  final _connectionStateController =
      StreamController<ArchethicDappConnectionState>.broadcast()
        ..add(const ArchethicDappConnectionState.disconnected());

  static final _logger = Logger('AWC-JsonRPCClient');

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

          _channel = await _connect();
          _logger.info('Connection opened');
          _connectionStateController.add(
            const ArchethicDappConnectionState.connected(),
          );

          final client = Peer(
            _channel!.cast<String>(),
          )..registerMethod('addSubscriptionNotification', (final params) {
            _logger.info('Received value');
            _subscriptionValues.add(SubscriptionUpdate.fromJson(params.value));
          });

          _client = client;

          unawaited(
            client.listen().then((final value) {
              _logger.info('Connection closed');
              _connectionStateController.add(
                const ArchethicDappConnectionState.disconnected(),
              );
            }),
          );
        },
      );
  @override
  Future<void> connect() => _connectTask.run();

  Future<StreamChannel<String>> _connect() async {
    try {
      return await channelBuilder();
    } on Exception catch (error, stack) {
      _logger.severe('Connection failed', error, stack);
      _connectionStateController.add(
        const ArchethicDappConnectionState.disconnected(),
      );
      throw Failure.connectivity;
    }
  }

  SingletonTask<void>? __closeTask;
  SingletonTask<void> get _closeTask =>
      __closeTask ??= SingletonTask(
        name: 'Close',
        task: () async {
          await _client?.close();
          _client = null;
          await disposeChannel(_channel!);
          _channel = null;
        },
      );
  @override
  Future<void> close() => _closeTask.run();

  Future<Subscription<Map<String, dynamic>>> _subscribe({
    required final String method,
    final Map<String, dynamic> params = const {},
  }) async {
    final subscriptionData = await _send(method: method, params: params);

    final subscriptionId = subscriptionData['subscriptionId'];
    return Subscription(
      id: subscriptionId,
      updates: _subscriptionValues.stream
          .where((final event) => event.subscriptionId == subscriptionId)
          .map((final event) => event.data),
    );
  }

  Future<Map<String, dynamic>> _send({
    required final String method,
    final Map<String, dynamic> params = const {},
  }) async {
    if (_client == null || _client!.isClosed) {
      _client = null;
      await connect();
    }
    _logger.info('Send command $method, params : ${jsonEncode(params)}');
    return _client!
        .sendRequest(
          method,
          Request(version: 1, origin: origin, payload: params).toJson(),
        )
        .then(
          (final result) {
            _logger.info('Response received :  ${jsonEncode(result)}');
            return result;
          },
          onError: (final e, final stack) {
            if (e is StateError) {
              _logger.severe('Bad connection state.', e, stack);
              throw Failure.connectivity;
            }
            if (e is RpcException) {
              _logger.severe('Rpc request failed.', e, stack);
              throw Failure.fromRpcException(e);
            }

            _logger.severe('Rpc request failed.', e, stack);
            throw Failure.other;
          },
        );
  }

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
    await _send(
      method: 'unsubscribeAccount',
      params: {'subscriptionId': subscriptionId},
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
      params: {'subscriptionId': subscriptionId},
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
