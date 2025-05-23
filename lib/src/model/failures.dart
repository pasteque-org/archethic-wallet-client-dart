import 'package:deeplink_rpc/deeplink_rpc.dart';
import 'package:json_rpc_2/json_rpc_2.dart';

/// Represents the different types of failures that can occur during operations
/// with the Archethic Wallet Client.
///
/// Each failure type has an associated [code] and [message] for identification
/// and user feedback.
enum Failure implements Exception {
  /// Indicates that the parameters provided in a request were invalid.
  invalidParams(code: -32602, message: 'Invalid parameters'),

  /// Indicates that the requested method is not supported.
  unsupportedMethod(code: -32601, message: 'Unsupported method.'),

  /// Indicates that the user rejected the requested operation.
  userRejected(code: 4001, message: 'User rejected operation'),

  /// Indicates a problem with network connectivity.
  connectivity(code: 4901, message: 'Connectivity issue.'),

  /// Indicates a generic or unspecified technical error.
  other(code: 5000, message: 'Technical error'),

  /// Indicates that an operation timed out before completion.
  timeout(code: 5001, message: 'Operation timeout.'),

  /// Indicates that the validation consensus was not reached for a transaction.
  consensusNotReached(code: 5002, message: 'Validation consensus not reached'),

  /// Indicates that a transaction was invalid.
  invalidTransaction(code: 5003, message: 'Invalid transaction'),

  /// Indicates that there are insufficient funds for the requested operation.
  insufficientFunds(code: 5004, message: 'Insufficient funds.'),

  /// Indicates that the specified account is unknown.
  unknownAccount(code: 5005, message: 'Unknown account.'),

  /// Indicates an issue with a node's confirmation.
  invalidConfirmation(code: 5006, message: 'Invalid node confirmation.'),

  /// Indicates that the requested service was not found.
  serviceNotFound(code: 5007, message: 'Service not found.'),

  /// Indicates that the service to be added already exists in the keychain.
  serviceAlreadyExists(
    code: 5008,
    message: 'Service already exists in the keychain.',
  ),

  /// Indicates that the current session is invalid.
  invalidSession(code: 5009, message: 'Invalid session.');

  /// Creates a [Failure] instance.
  ///
  /// [code] is the numerical code associated with the failure.
  /// [message] is a human-readable description of the failure.
  const Failure({required this.code, required this.message});

  /// Creates a [Failure] instance from an RPC error code.
  ///
  /// If the [code] does not match any known [Failure] type, defaults to [Failure.other].
  factory Failure.fromRpcErrorCode(final int code) => Failure.values.firstWhere(
    (final error) => error.code == code,
    orElse: () => Failure.other,
  );

  /// Creates a [Failure] instance from an [RpcException].
  factory Failure.fromRpcException(final RpcException exception) =>
      Failure.fromRpcErrorCode(exception.code);

  /// Creates a [Failure] instance from a [DeeplinkRpcFailure].
  factory Failure.fromDeeplinkRpcFailure(final DeeplinkRpcFailure failure) =>
      Failure.fromRpcErrorCode(failure.code);

  /// Converts this [Failure] instance to a [DeeplinkRpcFailure].
  DeeplinkRpcFailure toDeeplinkRpcFailure() =>
      DeeplinkRpcFailure(code: code, message: message);

  /// The numerical code associated with this failure type.
  final int code;

  /// A human-readable message describing this failure type.
  final String message;
}
