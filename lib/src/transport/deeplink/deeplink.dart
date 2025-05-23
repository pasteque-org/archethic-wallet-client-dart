part of '../archethic_wallet_client.dart';

/// An implementation of [ArchethicDAppClient] that uses deeplinks for communication
/// with the Archethic Wallet mobile application.
///
/// This client is primarily intended for mobile platforms (Android and iOS) where
/// deeplink RPC is available.
class DeeplinkArchethicDappClient extends ArchethicDAppClient {
  /// Creates a [DeeplinkArchethicDappClient] instance.
  ///
  /// [origin] specifies the [RequestOrigin] of the DApp making the requests.
  /// [replyBaseUrl] is the base URL that the Archethic Wallet will use to send
  /// responses back to this DApp via deeplink.
  DeeplinkArchethicDappClient({
    required this.origin,
    required this.replyBaseUrl,
  }) : super._();

  final _deeplinkRpcClient = DeeplinkRpcClient();
  final _state = const ArchethicDappConnectionState.connected();

  /// The base URL for deeplink responses from the wallet to this DApp.
  /// Example: `flutterdappexample://dapp.example`
  final String replyBaseUrl;

  /// The base URL for deeplink requests from this DApp to the Archethic Wallet.
  static const requestBaseUrl = 'aewallet://archethic.tech';

  /// Checks if the Archethic Wallet is likely available to handle deeplink requests.
  ///
  /// - On mobile platforms (Android/iOS), it attempts to query if the `aewallet://` scheme can be launched.
  /// - On Web, it assumes availability as direct checking is not possible.
  /// - Returns `false` for non-mobile and non-web platforms.
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

  /// Handles an incoming deeplink URL string.
  ///
  /// This method should be called when the application receives a deeplink.
  /// It passes the URL to the underlying [DeeplinkRpcClient] to process
  /// potential responses from the Archethic Wallet.
  /// Returns `true` if the deeplink was handled as an RPC response, `false` otherwise.
  bool handleRoute(final String? path) =>
      _deeplinkRpcClient.handleResponse(path);

  @override
  ArchethicDappConnectionState get state => _state;

  @override
  Stream<ArchethicDappConnectionState> get connectionStateStream async* {
    // For deeplink, the connection is considered always active if the wallet is available.
    // There isn't a persistent connection to maintain or monitor in the same way as a websocket.
    yield const ArchethicDappConnectionState.connected();
  }

  @override
  Future<void> connect() async {
    // No explicit connection step is required for deeplink communication.
    // Availability is checked via `isAvailable`.
    return;
  }

  @override
  Future<void> close() async {
    // No explicit disconnection step is required for deeplink communication.
    return;
  }

  /// Sends a request to the Archethic Wallet via deeplink.
  ///
  /// [requestEndpoint] is the specific RPC method path (e.g., 'get_endpoint').
  /// [replyEndpoint] is the path the wallet will use in the reply deeplink.
  /// [requiresUserInteraction] indicates if the operation requires user confirmation in the wallet.
  /// This affects the timeout duration for the request.
  /// [params] are the parameters for the RPC request.
  Future<DeeplinkRpcResponse>
  _send({
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
          // Use a shorter timeout for requests not requiring user interaction (e.g., status checks)
          : _deeplinkRpcClient.send(
            request: DeeplinkRpcRequest(
              requestUrl: '$requestBaseUrl/$requestEndpoint',
              replyUrl: '$replyBaseUrl/$replyEndpoint',
              params:
                  Request(version: 1, origin: origin, payload: params).toJson(),
            ),
            timeout: const Duration(seconds: 5),
          );

  //============================================================================
  // RPC Method Implementations
  //============================================================================
  // Each method implementation follows a similar pattern:
  // 1. Call `_send` with appropriate request/reply endpoints and parameters.
  // 2. Map the `DeeplinkRpcResponse` to a `Result<SuccessType, Failure>`.
  //    - On success, parse the JSON response into the expected result type.
  //    - On failure, convert the `DeeplinkRpcFailure` to a client `Failure`.
  //============================================================================

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
            // Assuming RefreshCurrentAccountResponse.fromJson can handle an empty map or specific structure
            RefreshCurrentAccountResponse.fromJson(
              success as Map<String, dynamic>? ?? {},
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
  ) async {
    // Subscriptions are not supported over deeplink due to its stateless nature.
    return const Result.failure(Failure.unsupportedMethod);
  }

  @override
  Future<void> unsubscribeAccount(final String subscriptionId) async {
    // Subscriptions are not supported, so unsubscribe is a no-op.
    return;
  }

  @override
  Future<Result<Subscription<Account>, Failure>>
  subscribeCurrentAccount() async {
    // Subscriptions are not supported over deeplink.
    return const Result.failure(Failure.unsupportedMethod);
  }

  @override
  Future<void> unsubscribeCurrentAccount(final String subscriptionId) async {
    // Subscriptions are not supported, so unsubscribe is a no-op.
    return;
  }

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
    requiresUserInteraction:
        false, // Deriving a keypair might not need UI confirmation
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
    requiresUserInteraction:
        false, // Deriving an address might not need UI confirmation
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
    requiresUserInteraction: true, // Encryption might involve user keys
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
