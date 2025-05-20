import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_accounts.freezed.dart';
part 'get_accounts.g.dart';

@freezed
abstract class AppAccount with _$AppAccount {
  const factory AppAccount({
    required final String shortName,
    required final String serviceName,
    required final String genesisAddress,
  }) = _AppAccount;

  const AppAccount._();

  factory AppAccount.fromJson(final Map<String, dynamic> json) =>
      _$AppAccountFromJson(json);
}

@freezed
abstract class GetAccountsResult with _$GetAccountsResult {
  const factory GetAccountsResult({required final List<AppAccount> accounts}) =
      _GetAccountsResult;
  const GetAccountsResult._();

  factory GetAccountsResult.fromJson(final Map<String, dynamic> json) =>
      _$GetAccountsResultFromJson(json);
}

@freezed
abstract class GetAccountsRequest with _$GetAccountsRequest {
  const factory GetAccountsRequest() = _GetAccountsRequest;
  const GetAccountsRequest._();

  factory GetAccountsRequest.fromJson(final Map<String, dynamic> json) =>
      _$GetAccountsRequestFromJson(json);
}
