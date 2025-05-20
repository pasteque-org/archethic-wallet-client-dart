import 'package:archethic_lib_dart/archethic_lib_dart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_transaction.freezed.dart';
part 'send_transaction.g.dart';

@freezed
abstract class SendTransactionResult with _$SendTransactionResult {
  const factory SendTransactionResult({
    required final String transactionAddress,
    required final int nbConfirmations,
    required final int maxConfirmations,
  }) = _SendTransactionResult;
  const SendTransactionResult._();

  factory SendTransactionResult.fromJson(final Map<String, dynamic> json) =>
      _$SendTransactionResultFromJson(json);
}

@freezed
abstract class SendTransactionRequest with _$SendTransactionRequest {
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

  factory SendTransactionRequest.fromJson(final Map<String, dynamic> json) =>
      _$SendTransactionRequestFromJson(json);
}
