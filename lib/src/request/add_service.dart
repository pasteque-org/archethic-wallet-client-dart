import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_service.freezed.dart';
part 'add_service.g.dart';

@freezed
abstract class AddServiceRequest with _$AddServiceRequest {
  const factory AddServiceRequest({required final String name}) =
      _AddServiceRequest;
  const AddServiceRequest._();

  factory AddServiceRequest.fromJson(final Map<String, dynamic> json) =>
      _$AddServiceRequestFromJson(json);
}
