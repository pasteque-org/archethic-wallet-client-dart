import 'package:freezed_annotation/freezed_annotation.dart';

part 'encrypt_payloads.freezed.dart';
part 'encrypt_payloads.g.dart';

@freezed
abstract class EncryptPayloadsResult with _$EncryptPayloadsResult {
  const factory EncryptPayloadsResult({
    required final List<EncryptPayloadsResultDetail> encryptedPayloads,
  }) = _EncryptPayloadsResult;
  const EncryptPayloadsResult._();

  factory EncryptPayloadsResult.fromJson(final Map<String, dynamic> json) =>
      _$EncryptPayloadsResultFromJson(json);
}

@freezed
abstract class EncryptPayloadsResultDetail with _$EncryptPayloadsResultDetail {
  const factory EncryptPayloadsResultDetail({
    required final String encryptedPayload,
  }) = _EncryptPayloadsResultDetail;
  const EncryptPayloadsResultDetail._();

  factory EncryptPayloadsResultDetail.fromJson(
    final Map<String, dynamic> json,
  ) => _$EncryptPayloadsResultDetailFromJson(json);
}

@freezed
abstract class EncryptPayloadRequestData with _$EncryptPayloadRequestData {
  const factory EncryptPayloadRequestData({
    required final String payload,
    required final bool isHexa,
  }) = _EncryptPayloadRequestData;
  const EncryptPayloadRequestData._();

  factory EncryptPayloadRequestData.fromJson(final Map<String, dynamic> json) =>
      _$EncryptPayloadRequestDataFromJson(json);
}

@freezed
abstract class EncryptPayloadRequest with _$EncryptPayloadRequest {
  const factory EncryptPayloadRequest({
    /// Service name to identify the derivation path to use
    required final String serviceName,

    /// Additional information to add to a service derivation path (optional - default to empty)
    @Default('') final String pathSuffix,

    /// - List of payloads to encrypt
    @Default([]) final List<EncryptPayloadRequestData> payloads,
  }) = _EncryptPayloadRequest;

  const EncryptPayloadRequest._();

  factory EncryptPayloadRequest.fromJson(final Map<String, dynamic> json) =>
      _$EncryptPayloadRequestFromJson(json);
}
