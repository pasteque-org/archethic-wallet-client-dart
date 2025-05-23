import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_payloads.freezed.dart';
part 'sign_payloads.g.dart';

/// Represents the result of a sign payloads operation.
@freezed
abstract class SignPayloadsResult with _$SignPayloadsResult {
  /// Creates a [SignPayloadsResult] instance.
  ///
  /// [signedPayloads] is a list of details for each signed payload.
  const factory SignPayloadsResult({
    required final List<SignPayloadsResultDetail> signedPayloads,
  }) = _SignPayloadsResult;
  const SignPayloadsResult._();

  /// Creates a [SignPayloadsResult] instance from a JSON object.
  factory SignPayloadsResult.fromJson(final Map<String, dynamic> json) =>
      _$SignPayloadsResultFromJson(json);
}

/// Represents the details of a single signed payload.
@freezed
abstract class SignPayloadsResultDetail with _$SignPayloadsResultDetail {
  /// Creates a [SignPayloadsResultDetail] instance.
  ///
  /// [signedPayload] is the signature of the payload.
  const factory SignPayloadsResultDetail({
    /// Signature of payload
    required final String signedPayload,
  }) = _SignPayloadsResultDetail;
  const SignPayloadsResultDetail._();

  /// Creates a [SignPayloadsResultDetail] instance from a JSON object.
  factory SignPayloadsResultDetail.fromJson(final Map<String, dynamic> json) =>
      _$SignPayloadsResultDetailFromJson(json);
}

/// Represents the data for a single payload to be signed.
@freezed
abstract class SignPayloadRequestData with _$SignPayloadRequestData {
  /// Creates a [SignPayloadRequestData] instance.
  ///
  /// [payload] is the payload string to be signed.
  /// [isHexa] indicates if the [payload] is in hexadecimal format.
  const factory SignPayloadRequestData({
    required final String payload,
    required final bool isHexa,
  }) = _SignPayloadRequestData;
  const SignPayloadRequestData._();

  /// Creates a [SignPayloadRequestData] instance from a JSON object.
  factory SignPayloadRequestData.fromJson(final Map<String, dynamic> json) =>
      _$SignPayloadRequestDataFromJson(json);
}

/// Represents a request to sign one or more payloads.
@freezed
abstract class SignPayloadRequest with _$SignPayloadRequest {
  /// Creates a [SignPayloadRequest] instance.
  ///
  /// [serviceName] is the name of the service to use for identifying the derivation path.
  /// [pathSuffix] is an optional additional string to append to the service derivation path.
  /// [description] is an optional map of localized descriptions explaining the purpose of the signature.
  /// [payloads] is a list of [SignPayloadRequestData] objects to be signed.
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

  /// Creates a [SignPayloadRequest] instance from a JSON object.
  factory SignPayloadRequest.fromJson(final Map<String, dynamic> json) =>
      _$SignPayloadRequestFromJson(json);
}
