import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_sub.freezed.dart';
part 'account_sub.g.dart';

/// Represents the balance of an account in its native token.
@freezed
abstract class AccountBalance with _$AccountBalance {
  /// Creates an [AccountBalance] instance.
  ///
  /// [nativeTokenName] is the name of the native token (e.g., "UCO").
  /// [nativeTokenValue] is the amount of the native token.
  const factory AccountBalance({
    required final String nativeTokenName,
    required final double nativeTokenValue,
  }) = _AccountBalance;
  const AccountBalance._();

  /// Creates an [AccountBalance] instance from a JSON object.
  factory AccountBalance.fromJson(final Map<String, dynamic> json) =>
      _$AccountBalanceFromJson(json);
}

/// Represents an Archethic account with its details.
@freezed
abstract class Account with _$Account {
  /// Creates an [Account] instance.
  ///
  /// [name] is the user-defined name of the account.
  /// [genesisAddress] is the unique genesis address of the account.
  /// [lastAddress] is the optional last known address for the account.
  /// [balance] is the optional balance information for the account.
  const factory Account({
    required final String name,
    required final String genesisAddress,
    final String? lastAddress,
    final AccountBalance? balance,
  }) = _Account;
  const Account._();

  /// Creates an [Account] instance from a JSON object.
  factory Account.fromJson(final Map<String, dynamic> json) =>
      _$AccountFromJson(json);
}

/// Represents a request to subscribe to updates for a specific account.
@freezed
abstract class SubscribeAccountRequest with _$SubscribeAccountRequest {
  /// Creates a [SubscribeAccountRequest] instance.
  ///
  /// [serviceName] is the name of the service associated with the account to subscribe to.
  const factory SubscribeAccountRequest({required final String serviceName}) =
      _SubscribeAccountRequest;
  const SubscribeAccountRequest._();

  /// Creates a [SubscribeAccountRequest] instance from a JSON object.
  factory SubscribeAccountRequest.fromJson(final Map<String, dynamic> json) =>
      _$SubscribeAccountRequestFromJson(json);
}

/// Represents a request to subscribe to updates for the currently selected account in the wallet.
@freezed
abstract class SubscribeCurrentAccountRequest
    with _$SubscribeCurrentAccountRequest {
  /// Creates a [SubscribeCurrentAccountRequest] instance.
  const factory SubscribeCurrentAccountRequest() =
      _SubscribeCurrentAccountRequest;

  const SubscribeCurrentAccountRequest._();

  /// Creates a [SubscribeCurrentAccountRequest] instance from a JSON object.
  factory SubscribeCurrentAccountRequest.fromJson(
    final Map<String, dynamic> json,
  ) => _$SubscribeCurrentAccountRequestFromJson(json);
}

/// Type definition for account subscription notifications.
///
/// Represents the data received when an account update occurs, which can be an [Account] object
/// or `null` if the account information is not available or an error occurred.
typedef SubscribeAccountNotification = Account?;
