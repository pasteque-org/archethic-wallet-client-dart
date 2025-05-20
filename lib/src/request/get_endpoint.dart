import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_endpoint.freezed.dart';
part 'get_endpoint.g.dart';

@freezed
abstract class GetEndpointResult with _$GetEndpointResult {
  const factory GetEndpointResult({required final String endpointUrl}) =
      _GetEndpointResult;
  const GetEndpointResult._();

  factory GetEndpointResult.fromJson(final Map<String, dynamic> json) =>
      _$GetEndpointResultFromJson(json);
}

@freezed
abstract class GetEndpointRequest with _$GetEndpointRequest {
  const factory GetEndpointRequest() = _GetEndpointRequest;
  const GetEndpointRequest._();

  factory GetEndpointRequest.fromJson(final Map<String, dynamic> json) =>
      _$GetEndpointRequestFromJson(json);
}
