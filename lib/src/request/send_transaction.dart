import 'package:archethic_lib_dart/archethic_lib_dart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_transaction.freezed.dart';
part 'send_transaction.g.dart';

/// Represents the result of a send transaction operation.
@freezed
abstract class SendTransactionResult with _$SendTransactionResult {
  /// Creates a [SendTransactionResult] instance.
  ///
  /// [transactionAddress] is the address of the sent transaction.
  /// [nbConfirmations] is the number of confirmations received for the transaction.
  /// [maxConfirmations] is the maximum number of confirmations expected.
  const factory SendTransactionResult({
    required final String transactionAddress,
    required final int nbConfirmations,
    required final int maxConfirmations,
  }) = _SendTransactionResult;
  const SendTransactionResult._();

  /// Creates a [SendTransactionResult] instance from a JSON object.
  factory SendTransactionResult.fromJson(final Map<String, dynamic> json) =>
      _$SendTransactionResultFromJson(json);
}

/// Represents a request to send a transaction.
@freezed
abstract class SendTransactionRequest with _$SendTransactionRequest {
  /// Creates a [SendTransactionRequest] instance.
  ///
  /// [data] is the transaction data zone (identity, keychain, smart contract, etc.).
  /// [type] is the type of the transaction.
  /// [version] is the version of the transaction, used for backward compatibility.
  /// [generateEncryptedSeedSC] is an optional flag to generate and add the encrypted
  /// smart contract's seed in a secret.
  const factory SendTransactionRequest({
    /// - [Data]: transaction data zone (identity, keychain, smart contract, etc.)
    required final Data data,

    /// - Type: transaction type
    required final String type,

    /// - Version: version of the transaction (used for backward compatiblity)
    required final int version,

    /// - Flag to generate and add the encrypted smart contract's seed in a secret
    final bool? generateEncryptedSeedSC,
  }) = _SendTransactionRequest;
  const SendTransactionRequest._();

  /// Creates a [SendTransactionRequest] instance from a JSON object.
  factory SendTransactionRequest.fromJson(final Map<String, dynamic> json) =>
      _$SendTransactionRequestFromJson(json);
}
