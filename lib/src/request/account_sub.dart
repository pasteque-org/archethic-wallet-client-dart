import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_sub.freezed.dart';
part 'account_sub.g.dart';

@freezed
abstract class AccountBalance with _$AccountBalance {
  const factory AccountBalance({
    required final String nativeTokenName,
    required final double nativeTokenValue,
  }) = _AccountBalance;
  const AccountBalance._();

  factory AccountBalance.fromJson(final Map<String, dynamic> json) =>
      _$AccountBalanceFromJson(json);
}

@freezed
abstract class Account with _$Account {
  const factory Account({
    required final String name,
    required final String genesisAddress,
    final String? lastAddress,
    final AccountBalance? balance,
  }) = _Account;
  const Account._();

  factory Account.fromJson(final Map<String, dynamic> json) =>
      _$AccountFromJson(json);
}

@freezed
abstract class SubscribeAccountRequest with _$SubscribeAccountRequest {
  const factory SubscribeAccountRequest({required final String serviceName}) =
      _SubscribeAccountRequest;
  const SubscribeAccountRequest._();

  factory SubscribeAccountRequest.fromJson(final Map<String, dynamic> json) =>
      _$SubscribeAccountRequestFromJson(json);
}

@freezed
abstract class SubscribeCurrentAccountRequest
    with _$SubscribeCurrentAccountRequest {
  const factory SubscribeCurrentAccountRequest() =
      _SubscribeCurrentAccountRequest;

  const SubscribeCurrentAccountRequest._();

  factory SubscribeCurrentAccountRequest.fromJson(
    final Map<String, dynamic> json,
  ) => _$SubscribeCurrentAccountRequestFromJson(json);
}

typedef SubscribeAccountNotification = Account?;
