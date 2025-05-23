import 'package:freezed_annotation/freezed_annotation.dart';

part 'encrypt_payloads.freezed.dart';
part 'encrypt_payloads.g.dart';

/// Represents the result of an encrypt payloads operation.
@freezed
abstract class EncryptPayloadsResult with _$EncryptPayloadsResult {
  /// Creates an [EncryptPayloadsResult] instance.
  ///
  /// [encryptedPayloads] is a list of details for each encrypted payload.
  const factory EncryptPayloadsResult({
    required final List<EncryptPayloadsResultDetail> encryptedPayloads,
  }) = _EncryptPayloadsResult;
  const EncryptPayloadsResult._();

  /// Creates an [EncryptPayloadsResult] instance from a JSON object.
  factory EncryptPayloadsResult.fromJson(final Map<String, dynamic> json) =>
      _$EncryptPayloadsResultFromJson(json);
}

/// Represents the details of a single encrypted payload.
@freezed
abstract class EncryptPayloadsResultDetail with _$EncryptPayloadsResultDetail {
  /// Creates an [EncryptPayloadsResultDetail] instance.
  ///
  /// [encryptedPayload] is the payload after encryption.
  const factory EncryptPayloadsResultDetail({
    required final String encryptedPayload,
  }) = _EncryptPayloadsResultDetail;
  const EncryptPayloadsResultDetail._();

  /// Creates an [EncryptPayloadsResultDetail] instance from a JSON object.
  factory EncryptPayloadsResultDetail.fromJson(
    final Map<String, dynamic> json,
  ) => _$EncryptPayloadsResultDetailFromJson(json);
}

/// Represents the data for a single payload to be encrypted.
@freezed
abstract class EncryptPayloadRequestData with _$EncryptPayloadRequestData {
  /// Creates an [EncryptPayloadRequestData] instance.
  ///
  /// [payload] is the plaintext payload string.
  /// [isHexa] indicates if the [payload] is in hexadecimal format.
  const factory EncryptPayloadRequestData({
    required final String payload,
    required final bool isHexa,
  }) = _EncryptPayloadRequestData;
  const EncryptPayloadRequestData._();

  /// Creates an [EncryptPayloadRequestData] instance from a JSON object.
  factory EncryptPayloadRequestData.fromJson(final Map<String, dynamic> json) =>
      _$EncryptPayloadRequestDataFromJson(json);
}

/// Represents a request to encrypt one or more payloads.
@freezed
abstract class EncryptPayloadRequest with _$EncryptPayloadRequest {
  /// Creates an [EncryptPayloadRequest] instance.
  ///
  /// [serviceName] is the name of the service to use for identifying the derivation path.
  /// [pathSuffix] is an optional additional string to append to the service derivation path.
  /// [payloads] is a list of [EncryptPayloadRequestData] objects to be encrypted.
  const factory EncryptPayloadRequest({
    /// Service name to identify the derivation path to use
    required final String serviceName,

    /// Additional information to add to a service derivation path (optional - default to empty)
    @Default('') final String pathSuffix,

    /// - List of payloads to encrypt
    @Default([]) final List<EncryptPayloadRequestData> payloads,
  }) = _EncryptPayloadRequest;

  const EncryptPayloadRequest._();

  /// Creates an [EncryptPayloadRequest] instance from a JSON object.
  factory EncryptPayloadRequest.fromJson(final Map<String, dynamic> json) =>
      _$EncryptPayloadRequestFromJson(json);
}
