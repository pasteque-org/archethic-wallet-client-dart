import 'package:archethic_lib_dart/archethic_lib_dart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_transactions.freezed.dart';
part 'sign_transactions.g.dart';

/// Represents the result of a sign transactions operation.
@freezed
abstract class SignTransactionsResult with _$SignTransactionsResult {
  /// Creates a [SignTransactionsResult] instance.
  ///
  /// [signedTxs] is a list of details for each signed transaction.
  const factory SignTransactionsResult({
    required final List<SignTransactionsResultDetail> signedTxs,
  }) = _SignTransactionsResult;
  const SignTransactionsResult._();

  /// Creates a [SignTransactionsResult] instance from a JSON object.
  factory SignTransactionsResult.fromJson(final Map<String, dynamic> json) =>
      _$SignTransactionsResultFromJson(json);
}

/// Represents the details of a single signed transaction.
@freezed
abstract class SignTransactionsResultDetail
    with _$SignTransactionsResultDetail {
  /// Creates a [SignTransactionsResultDetail] instance.
  ///
  /// [address] is the hash of the new generated public key for the transaction.
  /// [previousPublicKey] is the previously generated public key matching the previous signature.
  /// [previousSignature] is the signature from the previous public key.
  /// [originSignature] is the signature from the device that originated the transaction (used in Proof of Work).
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

  /// Creates a [SignTransactionsResultDetail] instance from a JSON object.
  factory SignTransactionsResultDetail.fromJson(
    final Map<String, dynamic> json,
  ) => _$SignTransactionsResultDetailFromJson(json);
}

/// Represents the data for a single transaction to be signed.
@freezed
abstract class SignTransactionRequestData with _$SignTransactionRequestData {
  /// Creates a [SignTransactionRequestData] instance.
  ///
  /// [data] is the transaction data zone (identity, keychain, smart contract, etc.).
  /// [type] is the type of the transaction.
  /// [version] is the version of the transaction, used for backward compatibility.
  const factory SignTransactionRequestData({
    required final Data data,
    required final String type,
    required final int version,
  }) = _SignTransactionRequestData;
  const SignTransactionRequestData._();

  /// Creates a [SignTransactionRequestData] instance from a JSON object.
  factory SignTransactionRequestData.fromJson(
    final Map<String, dynamic> json,
  ) => _$SignTransactionRequestDataFromJson(json);
}

/// Represents a request to sign one or more transactions.
@freezed
abstract class SignTransactionRequest with _$SignTransactionRequest {
  /// Creates a [SignTransactionRequest] instance.
  ///
  /// [serviceName] is the name of the service to use for identifying the derivation path.
  /// [pathSuffix] is an optional additional string to append to the service derivation path.
  /// [description] is an optional map of localized descriptions explaining the purpose of the signature.
  /// [transactions] is a list of [SignTransactionRequestData] objects to be signed.
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

  /// Creates a [SignTransactionRequest] instance from a JSON object.
  factory SignTransactionRequest.fromJson(final Map<String, dynamic> json) =>
      _$SignTransactionRequestFromJson(json);
}
