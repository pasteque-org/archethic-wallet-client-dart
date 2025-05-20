import 'package:freezed_annotation/freezed_annotation.dart';

part 'remove_service.freezed.dart';
part 'remove_service.g.dart';

@freezed
abstract class RemoveServiceRequest with _$RemoveServiceRequest {
  const factory RemoveServiceRequest({required final String name}) =
      _RemoveServiceRequest;
  const RemoveServiceRequest._();

  factory RemoveServiceRequest.fromJson(final Map<String, dynamic> json) =>
      _$RemoveServiceRequestFromJson(json);
}
