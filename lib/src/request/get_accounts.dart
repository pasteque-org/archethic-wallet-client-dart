import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_accounts.freezed.dart';
part 'get_accounts.g.dart';

/// Represents an account as returned by the wallet application.
@freezed
abstract class AppAccount with _$AppAccount {
  /// Creates an [AppAccount] instance.
  ///
  /// [shortName] is the user-friendly name of the account.
  /// [serviceName] is the identifier for the service associated with the account.
  /// [genesisAddress] is the genesis address of the account.
  const factory AppAccount({
    required final String shortName,
    required final String serviceName,
    required final String genesisAddress,
  }) = _AppAccount;

  const AppAccount._();

  /// Creates an [AppAccount] instance from a JSON object.
  factory AppAccount.fromJson(final Map<String, dynamic> json) =>
      _$AppAccountFromJson(json);
}

/// Represents the result of a request to get accounts.
@freezed
abstract class GetAccountsResult with _$GetAccountsResult {
  /// Creates a [GetAccountsResult] instance.
  ///
  /// [accounts] is a list of [AppAccount] objects available in the wallet.
  const factory GetAccountsResult({required final List<AppAccount> accounts}) =
      _GetAccountsResult;
  const GetAccountsResult._();

  /// Creates a [GetAccountsResult] instance from a JSON object.
  factory GetAccountsResult.fromJson(final Map<String, dynamic> json) =>
      _$GetAccountsResultFromJson(json);
}

/// Represents a request to retrieve available accounts from the wallet.
@freezed
abstract class GetAccountsRequest with _$GetAccountsRequest {
  /// Creates a [GetAccountsRequest] instance.
  const factory GetAccountsRequest() = _GetAccountsRequest;
  const GetAccountsRequest._();

  /// Creates a [GetAccountsRequest] instance from a JSON object.
  factory GetAccountsRequest.fromJson(final Map<String, dynamic> json) =>
      _$GetAccountsRequestFromJson(json);
}
