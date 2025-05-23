import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_endpoint.freezed.dart';
part 'get_endpoint.g.dart';

/// Represents the result of a request to get the wallet's current endpoint URL.
@freezed
abstract class GetEndpointResult with _$GetEndpointResult {
  /// Creates a [GetEndpointResult] instance.
  ///
  /// [endpointUrl] is the URL of the wallet's current Archethic network endpoint.
  const factory GetEndpointResult({required final String endpointUrl}) =
      _GetEndpointResult;
  const GetEndpointResult._();

  /// Creates a [GetEndpointResult] instance from a JSON object.
  factory GetEndpointResult.fromJson(final Map<String, dynamic> json) =>
      _$GetEndpointResultFromJson(json);
}

/// Represents a request to retrieve the wallet's current Archethic network endpoint URL.
/// This request typically does not have any parameters.
@freezed
abstract class GetEndpointRequest with _$GetEndpointRequest {
  /// Creates a [GetEndpointRequest] instance.
  const factory GetEndpointRequest() = _GetEndpointRequest;
  const GetEndpointRequest._();

  /// Creates a [GetEndpointRequest] instance from a JSON object.
  factory GetEndpointRequest.fromJson(final Map<String, dynamic> json) =>
      _$GetEndpointRequestFromJson(json);
}
