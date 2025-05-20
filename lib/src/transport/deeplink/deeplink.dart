part of '../archethic_wallet_client.dart';

class DeeplinkArchethicDappClient extends ArchethicDAppClient {
  DeeplinkArchethicDappClient({
    required this.origin,
    required this.replyBaseUrl,
  }) : super._();

  final _deeplinkRpcClient = DeeplinkRpcClient();
  final _state = const ArchethicDappConnectionState.connected();

  final String replyBaseUrl;
  static const requestBaseUrl = 'aewallet://archethic.tech';

  static Future<bool> get isAvailable async {
    final isMobileOS =
        defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS;

    // Deeplink available on mobile platforms only
    if (!isMobileOS) {
      return false;
    }

    // When running in web browser, we cannot check
    // if aewallet is installed.
    // So, guessing it is available.
    if (kIsWeb) {
      return true;
    }

    // When running in a native app, we can check if
    // aewallet is installed
    return canLaunchUrl(Uri.parse(requestBaseUrl));
  }

  @override
  final RequestOrigin origin;

  bool handleRoute(final String? path) =>
      _deeplinkRpcClient.handleResponse(path);

  @override
  ArchethicDappConnectionState get state => _state;

  @override
  Stream<ArchethicDappConnectionState> get connectionStateStream async* {
    yield const ArchethicDappConnectionState.connected();
  }

  @override
  Future<void> connect() async {
    return;
  }

  @override
  Future<void> close() async {
    return;
  }

  /// [requiresUserInteraction] will determine the timeout duration :
  /// if no interaction is required, timeout will be short.
  Future<DeeplinkRpcResponse> _send({
    required final String requestEndpoint,
    required final String replyEndpoint,
    required final bool requiresUserInteraction,
    final Map<String, dynamic> params = const {},
  }) =>
      requiresUserInteraction
          ? _deeplinkRpcClient.send(
            request: DeeplinkRpcRequest(
              requestUrl: '$requestBaseUrl/$requestEndpoint',
              replyUrl: '$replyBaseUrl/$replyEndpoint',
              params:
                  Request(version: 1, origin: origin, payload: params).toJson(),
            ),
          )
          : _deeplinkRpcClient.send(
            request: DeeplinkRpcRequest(
              requestUrl: '$requestBaseUrl/$requestEndpoint',
              replyUrl: '$replyBaseUrl/$replyEndpoint',
              params:
                  Request(version: 1, origin: origin, payload: params).toJson(),
            ),
            timeout: const Duration(seconds: 5),
          );

  @override
  Future<Result<GetEndpointResult, Failure>> getEndpoint() => _send(
    requiresUserInteraction: false,
    requestEndpoint: 'get_endpoint',
    replyEndpoint: 'get_endpoint_result',
  ).then(
    (final result) => result.map(
      failure:
          (final failure) =>
              Result.failure(Failure.fromDeeplinkRpcFailure(failure)),
      success:
          (final success) => Result.success(
            GetEndpointResult.fromJson(success as Map<String, dynamic>),
          ),
    ),
  );

  @override
  Future<Result<RefreshCurrentAccountResponse, Failure>>
  refreshCurrentAccount() => _send(
    requiresUserInteraction: false,
    requestEndpoint: 'refresh_current_account',
    replyEndpoint: 'refresh_current_account_result',
  ).then(
    (final result) => result.map(
      failure:
          (final failure) =>
              Result.failure(Failure.fromDeeplinkRpcFailure(failure)),
      success:
          (final success) => Result.success(
            RefreshCurrentAccountResponse.fromJson(
              success as Map<String, dynamic>,
            ),
          ),
    ),
  );

  @override
  Future<Result<SendTransactionResult, Failure>> sendTransaction(
    final SendTransactionRequest data,
  ) => _send(
    requiresUserInteraction: true,
    requestEndpoint: 'send_transaction',
    replyEndpoint: 'send_transaction_result',
    params: data.toJson(),
  ).then(
    (final result) => result.map(
      failure:
          (final failure) =>
              Result.failure(Failure.fromDeeplinkRpcFailure(failure)),
      success:
          (final success) => Result.success(
            SendTransactionResult.fromJson(success as Map<String, dynamic>),
          ),
    ),
  );

  @override
  Future<Result<GetAccountsResult, Failure>> getAccounts() => _send(
    requiresUserInteraction: false,
    requestEndpoint: 'get_accounts',
    replyEndpoint: 'get_accounts_result',
  ).then(
    (final result) => result.map(
      failure:
          (final failure) =>
              Result.failure(Failure.fromDeeplinkRpcFailure(failure)),
      success:
          (final success) => Result.success(
            GetAccountsResult.fromJson(success as Map<String, dynamic>),
          ),
    ),
  );

  @override
  Future<Result<GetCurrentAccountResult, Failure>> getCurrentAccount() => _send(
    requiresUserInteraction: false,
    requestEndpoint: 'get_current_account',
    replyEndpoint: 'get_current_account_result',
  ).then(
    (final result) => result.map(
      failure:
          (final failure) =>
              Result.failure(Failure.fromDeeplinkRpcFailure(failure)),
      success:
          (final success) => Result.success(
            GetCurrentAccountResult.fromJson(success as Map<String, dynamic>),
          ),
    ),
  );

  @override
  Future<Result<Subscription<Account>, Failure>> subscribeAccount(
    final String accountName,
  ) async => const Result.failure(Failure.unsupportedMethod);

  @override
  Future<void> unsubscribeAccount(final String subscriptionId) async {}

  @override
  Future<Result<Subscription<Account>, Failure>>
  subscribeCurrentAccount() async =>
      const Result.failure(Failure.unsupportedMethod);

  @override
  Future<void> unsubscribeCurrentAccount(final String subscriptionId) async {}

  @override
  Future<Result<SendTransactionResult, Failure>> addService(
    final AddServiceRequest data,
  ) => _send(
    requiresUserInteraction: true,
    requestEndpoint: 'add_service',
    replyEndpoint: 'add_service_result',
    params: data.toJson(),
  ).then(
    (final result) => result.map(
      failure:
          (final failure) =>
              Result.failure(Failure.fromDeeplinkRpcFailure(failure)),
      success:
          (final success) => Result.success(
            SendTransactionResult.fromJson(success as Map<String, dynamic>),
          ),
    ),
  );

  @override
  Future<Result<SendTransactionResult, Failure>> removeService(
    final RemoveServiceRequest data,
  ) => _send(
    requiresUserInteraction: true,
    requestEndpoint: 'remove_service',
    replyEndpoint: 'remove_service_result',
    params: data.toJson(),
  ).then(
    (final result) => result.map(
      failure:
          (final failure) =>
              Result.failure(Failure.fromDeeplinkRpcFailure(failure)),
      success:
          (final success) => Result.success(
            SendTransactionResult.fromJson(success as Map<String, dynamic>),
          ),
    ),
  );

  @override
  Future<Result<GetServicesFromKeychainResult, Failure>>
  getServicesFromKeychain() => _send(
    requiresUserInteraction: false,
    requestEndpoint: 'get_services_from_keychain',
    replyEndpoint: 'get_services_from_keychain_result',
  ).then(
    (final result) => result.map(
      failure:
          (final failure) =>
              Result.failure(Failure.fromDeeplinkRpcFailure(failure)),
      success:
          (final success) => Result.success(
            GetServicesFromKeychainResult.fromJson(
              success as Map<String, dynamic>,
            ),
          ),
    ),
  );

  @override
  Future<Result<KeychainDeriveKeypairResult, Failure>> keychainDeriveKeyPair(
    final KeychainDeriveKeypairRequest data,
  ) => _send(
    requiresUserInteraction: false,
    requestEndpoint: 'keychain_derive_keypair',
    replyEndpoint: 'keychain_derive_keypair_result',
    params: data.toJson(),
  ).then(
    (final result) => result.map(
      failure:
          (final failure) =>
              Result.failure(Failure.fromDeeplinkRpcFailure(failure)),
      success:
          (final success) => Result.success(
            KeychainDeriveKeypairResult.fromJson(
              success as Map<String, dynamic>,
            ),
          ),
    ),
  );

  @override
  Future<Result<KeychainDeriveAddressResult, Failure>> keychainDeriveAddress(
    final KeychainDeriveAddressRequest data,
  ) => _send(
    requiresUserInteraction: false,
    requestEndpoint: 'keychain_derive_address',
    replyEndpoint: 'keychain_derive_address_result',
    params: data.toJson(),
  ).then(
    (final result) => result.map(
      failure:
          (final failure) =>
              Result.failure(Failure.fromDeeplinkRpcFailure(failure)),
      success:
          (final success) => Result.success(
            KeychainDeriveAddressResult.fromJson(
              success as Map<String, dynamic>,
            ),
          ),
    ),
  );

  @override
  Future<Result<SignTransactionsResult, Failure>> signTransactions(
    final SignTransactionRequest data,
  ) => _send(
    requiresUserInteraction: true,
    requestEndpoint: 'sign_transactions',
    replyEndpoint: 'sign_transactions_result',
    params: data.toJson(),
  ).then(
    (final result) => result.map(
      failure:
          (final failure) =>
              Result.failure(Failure.fromDeeplinkRpcFailure(failure)),
      success:
          (final success) => Result.success(
            SignTransactionsResult.fromJson(success as Map<String, dynamic>),
          ),
    ),
  );

  @override
  Future<Result<SignPayloadsResult, Failure>> signPayloads(
    final SignPayloadRequest data,
  ) => _send(
    requiresUserInteraction: true,
    requestEndpoint: 'sign_payloads',
    replyEndpoint: 'sign_payloads_result',
    params: data.toJson(),
  ).then(
    (final result) => result.map(
      failure:
          (final failure) =>
              Result.failure(Failure.fromDeeplinkRpcFailure(failure)),
      success:
          (final success) => Result.success(
            SignPayloadsResult.fromJson(success as Map<String, dynamic>),
          ),
    ),
  );

  @override
  Future<Result<EncryptPayloadsResult, Failure>> encryptPayloads(
    final EncryptPayloadRequest data,
  ) => _send(
    requiresUserInteraction: false,
    requestEndpoint: 'encrypt_payloads',
    replyEndpoint: 'encrypt_payloads_result',
    params: data.toJson(),
  ).then(
    (final result) => result.map(
      failure:
          (final failure) =>
              Result.failure(Failure.fromDeeplinkRpcFailure(failure)),
      success:
          (final success) => Result.success(
            EncryptPayloadsResult.fromJson(success as Map<String, dynamic>),
          ),
    ),
  );

  @override
  Future<Result<DecryptPayloadsResult, Failure>> decryptPayloads(
    final DecryptPayloadRequest data,
  ) => _send(
    requiresUserInteraction: true,
    requestEndpoint: 'decrypt_payloads',
    replyEndpoint: 'decrypt_payloads_result',
    params: data.toJson(),
  ).then(
    (final result) => result.map(
      failure:
          (final failure) =>
              Result.failure(Failure.fromDeeplinkRpcFailure(failure)),
      success:
          (final success) => Result.success(
            DecryptPayloadsResult.fromJson(success as Map<String, dynamic>),
          ),
    ),
  );
}
