import 'package:freezed_annotation/freezed_annotation.dart';

part 'decrypt_payloads.freezed.dart';
part 'decrypt_payloads.g.dart';

/// Represents the result of a decrypt payloads operation.
@freezed
abstract class DecryptPayloadsResult with _$DecryptPayloadsResult {
  /// Creates a [DecryptPayloadsResult] instance.
  ///
  /// [decryptedPayloads] is a list of details for each decrypted payload.
  const factory DecryptPayloadsResult({
    required final List<DecryptPayloadsResultDetail> decryptedPayloads,
  }) = _DecryptPayloadsResult;
  const DecryptPayloadsResult._();

  /// Creates a [DecryptPayloadsResult] instance from a JSON object.
  factory DecryptPayloadsResult.fromJson(final Map<String, dynamic> json) =>
      _$DecryptPayloadsResultFromJson(json);
}

/// Represents the details of a single decrypted payload.
@freezed
abstract class DecryptPayloadsResultDetail with _$DecryptPayloadsResultDetail {
  /// Creates a [DecryptPayloadsResultDetail] instance.
  ///
  /// [decryptedPayload] is the payload after decryption.
  const factory DecryptPayloadsResultDetail({
    required final String decryptedPayload,
  }) = _DecryptPayloadsResultDetail;
  const DecryptPayloadsResultDetail._();

  /// Creates a [DecryptPayloadsResultDetail] instance from a JSON object.
  factory DecryptPayloadsResultDetail.fromJson(
    final Map<String, dynamic> json,
  ) => _$DecryptPayloadsResultDetailFromJson(json);
}

/// Represents the data for a single payload to be decrypted.
@freezed
abstract class DecryptPayloadRequestData with _$DecryptPayloadRequestData {
  /// Creates a [DecryptPayloadRequestData] instance.
  ///
  /// [payload] is the encrypted payload string.
  /// [isHexa] indicates if the [payload] is in hexadecimal format.
  const factory DecryptPayloadRequestData({
    required final String payload,
    required final bool isHexa,
  }) = _DecryptPayloadRequestData;
  const DecryptPayloadRequestData._();

  /// Creates a [DecryptPayloadRequestData] instance from a JSON object.
  factory DecryptPayloadRequestData.fromJson(final Map<String, dynamic> json) =>
      _$DecryptPayloadRequestDataFromJson(json);
}

/// Represents a request to decrypt one or more payloads.
@freezed
abstract class DecryptPayloadRequest with _$DecryptPayloadRequest {
  /// Creates a [DecryptPayloadRequest] instance.
  ///
  /// [serviceName] is the name of the service to use for identifying the derivation path.
  /// [pathSuffix] is an optional additional string to append to the service derivation path.
  /// [description] is an optional map of localized descriptions explaining the purpose of the decryption.
  /// [payloads] is a list of [DecryptPayloadRequestData] objects to be decrypted.
  const factory DecryptPayloadRequest({
    /// Service name to identify the derivation path to use
    required final String serviceName,

    /// Additional information to add to a service derivation path (optional - default to empty)
    @Default('') final String pathSuffix,

    /// Description to explain the decryption in multiple languages (key=Locale, value=description)
    @Default({}) final Map<String, dynamic> description,

    /// - List of payloads to decrypt
    @Default([]) final List<DecryptPayloadRequestData> payloads,
  }) = _DecryptPayloadRequest;

  const DecryptPayloadRequest._();

  /// Creates a [DecryptPayloadRequest] instance from a JSON object.
  factory DecryptPayloadRequest.fromJson(final Map<String, dynamic> json) =>
      _$DecryptPayloadRequestFromJson(json);
}
