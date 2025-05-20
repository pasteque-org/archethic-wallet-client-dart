import 'package:freezed_annotation/freezed_annotation.dart';

part 'decrypt_payloads.freezed.dart';
part 'decrypt_payloads.g.dart';

@freezed
abstract class DecryptPayloadsResult with _$DecryptPayloadsResult {
  const factory DecryptPayloadsResult({
    required final List<DecryptPayloadsResultDetail> decryptedPayloads,
  }) = _DecryptPayloadsResult;
  const DecryptPayloadsResult._();

  factory DecryptPayloadsResult.fromJson(final Map<String, dynamic> json) =>
      _$DecryptPayloadsResultFromJson(json);
}

@freezed
abstract class DecryptPayloadsResultDetail with _$DecryptPayloadsResultDetail {
  const factory DecryptPayloadsResultDetail({
    required final String decryptedPayload,
  }) = _DecryptPayloadsResultDetail;
  const DecryptPayloadsResultDetail._();

  factory DecryptPayloadsResultDetail.fromJson(
    final Map<String, dynamic> json,
  ) => _$DecryptPayloadsResultDetailFromJson(json);
}

@freezed
abstract class DecryptPayloadRequestData with _$DecryptPayloadRequestData {
  const factory DecryptPayloadRequestData({
    required final String payload,
    required final bool isHexa,
  }) = _DecryptPayloadRequestData;
  const DecryptPayloadRequestData._();

  factory DecryptPayloadRequestData.fromJson(final Map<String, dynamic> json) =>
      _$DecryptPayloadRequestDataFromJson(json);
}

@freezed
abstract class DecryptPayloadRequest with _$DecryptPayloadRequest {
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

  factory DecryptPayloadRequest.fromJson(final Map<String, dynamic> json) =>
      _$DecryptPayloadRequestFromJson(json);
}
