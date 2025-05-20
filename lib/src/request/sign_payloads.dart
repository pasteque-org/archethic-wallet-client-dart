import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_payloads.freezed.dart';
part 'sign_payloads.g.dart';

@freezed
abstract class SignPayloadsResult with _$SignPayloadsResult {
  const factory SignPayloadsResult({
    required final List<SignPayloadsResultDetail> signedPayloads,
  }) = _SignPayloadsResult;
  const SignPayloadsResult._();

  factory SignPayloadsResult.fromJson(final Map<String, dynamic> json) =>
      _$SignPayloadsResultFromJson(json);
}

@freezed
abstract class SignPayloadsResultDetail with _$SignPayloadsResultDetail {
  const factory SignPayloadsResultDetail({
    /// Signature of payload
    required final String signedPayload,
  }) = _SignPayloadsResultDetail;
  const SignPayloadsResultDetail._();

  factory SignPayloadsResultDetail.fromJson(final Map<String, dynamic> json) =>
      _$SignPayloadsResultDetailFromJson(json);
}

@freezed
abstract class SignPayloadRequestData with _$SignPayloadRequestData {
  const factory SignPayloadRequestData({
    required final String payload,
    required final bool isHexa,
  }) = _SignPayloadRequestData;
  const SignPayloadRequestData._();

  factory SignPayloadRequestData.fromJson(final Map<String, dynamic> json) =>
      _$SignPayloadRequestDataFromJson(json);
}

@freezed
abstract class SignPayloadRequest with _$SignPayloadRequest {
  const factory SignPayloadRequest({
    /// Service name to identify the derivation path to use
    required final String serviceName,

    /// Additional information to add to a service derivation path (optional - default to empty)
    @Default('') final String pathSuffix,

    /// Description to explain the signature in multiple languages (key=Locale, value=description)
    @Default({}) final Map<String, dynamic> description,

    /// - List of payloads to sign
    @Default([]) final List<SignPayloadRequestData> payloads,
  }) = _SignPayloadRequest;

  const SignPayloadRequest._();

  factory SignPayloadRequest.fromJson(final Map<String, dynamic> json) =>
      _$SignPayloadRequestFromJson(json);
}
