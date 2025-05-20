import 'package:archethic_lib_dart/archethic_lib_dart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_transactions.freezed.dart';
part 'sign_transactions.g.dart';

@freezed
abstract class SignTransactionsResult with _$SignTransactionsResult {
  const factory SignTransactionsResult({
    required final List<SignTransactionsResultDetail> signedTxs,
  }) = _SignTransactionsResult;
  const SignTransactionsResult._();

  factory SignTransactionsResult.fromJson(final Map<String, dynamic> json) =>
      _$SignTransactionsResultFromJson(json);
}

@freezed
abstract class SignTransactionsResultDetail
    with _$SignTransactionsResultDetail {
  const factory SignTransactionsResultDetail({
    /// Address: hash of the new generated public key for the given transaction
    required final String address,

    /// Previous generated public key matching the previous signature
    required final String previousPublicKey,

    /// Signature from the previous public key
    required final String previousSignature,

    /// Signature from the device which originated the transaction (used in the Proof of work)
    required final String originSignature,
  }) = _SignTransactionsResultDetail;
  const SignTransactionsResultDetail._();

  factory SignTransactionsResultDetail.fromJson(
    final Map<String, dynamic> json,
  ) => _$SignTransactionsResultDetailFromJson(json);
}

@freezed
abstract class SignTransactionRequestData with _$SignTransactionRequestData {
  const factory SignTransactionRequestData({
    required final Data data,
    required final String type,
    required final int version,
  }) = _SignTransactionRequestData;
  const SignTransactionRequestData._();

  factory SignTransactionRequestData.fromJson(
    final Map<String, dynamic> json,
  ) => _$SignTransactionRequestDataFromJson(json);
}

@freezed
abstract class SignTransactionRequest with _$SignTransactionRequest {
  const factory SignTransactionRequest({
    /// Service name to identify the derivation path to use
    required final String serviceName,

    /// Additional information to add to a service derivation path (optional - default to empty)
    @Default('') final String pathSuffix,

    /// Description to explain the signature in multiple languages (key=Locale, value=description)
    @Default({}) final Map<String, dynamic> description,

    /// - List of transaction's infos
    @Default([]) final List<SignTransactionRequestData> transactions,
  }) = _SignTransactionRequest;

  const SignTransactionRequest._();

  factory SignTransactionRequest.fromJson(final Map<String, dynamic> json) =>
      _$SignTransactionRequestFromJson(json);
}
