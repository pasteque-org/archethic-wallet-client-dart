import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_service.freezed.dart';
part 'add_service.g.dart';

/// Represents a request to add a new service to the user's keychain.
@freezed
abstract class AddServiceRequest with _$AddServiceRequest {
  /// Creates an [AddServiceRequest] instance.
  ///
  /// [name] is the name of the service to be added.
  const factory AddServiceRequest({required final String name}) =
      _AddServiceRequest;
  const AddServiceRequest._();

  /// Creates an [AddServiceRequest] instance from a JSON object.
  factory AddServiceRequest.fromJson(final Map<String, dynamic> json) =>
      _$AddServiceRequestFromJson(json);
}
