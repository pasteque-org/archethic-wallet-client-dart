import 'package:freezed_annotation/freezed_annotation.dart';

part 'remove_service.freezed.dart';
part 'remove_service.g.dart';

/// Represents a request to remove a service from the user's keychain.
@freezed
abstract class RemoveServiceRequest with _$RemoveServiceRequest {
  /// Creates a [RemoveServiceRequest] instance.
  ///
  /// [name] is the name of the service to be removed.
  const factory RemoveServiceRequest({required final String name}) =
      _RemoveServiceRequest;
  const RemoveServiceRequest._();

  /// Creates a [RemoveServiceRequest] instance from a JSON object.
  factory RemoveServiceRequest.fromJson(final Map<String, dynamic> json) =>
      _$RemoveServiceRequestFromJson(json);
}
