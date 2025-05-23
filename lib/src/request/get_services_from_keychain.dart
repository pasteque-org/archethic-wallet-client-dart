import 'package:archethic_lib_dart/archethic_lib_dart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_services_from_keychain.freezed.dart';
part 'get_services_from_keychain.g.dart';

/// Represents the result of a request to get services from the keychain.
@freezed
abstract class GetServicesFromKeychainResult
    with _$GetServicesFromKeychainResult {
  /// Creates a [GetServicesFromKeychainResult] instance.
  ///
  /// [services] is a list of [Service] objects stored in the keychain.
  const factory GetServicesFromKeychainResult({
    required final List<Service> services,
  }) = _GetServicesFromKeychainResult;
  const GetServicesFromKeychainResult._();

  /// Creates a [GetServicesFromKeychainResult] instance from a JSON object.
  factory GetServicesFromKeychainResult.fromJson(
    final Map<String, dynamic> json,
  ) => _$GetServicesFromKeychainResultFromJson(json);
}

/// Represents a request to retrieve services stored in the wallet's keychain.
/// This request typically does not have any parameters.
@freezed
abstract class GetServicesFromKeychainRequest
    with _$GetServicesFromKeychainRequest {
  /// Creates a [GetServicesFromKeychainRequest] instance.
  const factory GetServicesFromKeychainRequest() =
      _GetServicesFromKeychainRequest;
  const GetServicesFromKeychainRequest._();

  /// Creates a [GetServicesFromKeychainRequest] instance from a JSON object.
  factory GetServicesFromKeychainRequest.fromJson(
    final Map<String, dynamic> json,
  ) => _$GetServicesFromKeychainRequestFromJson(json);
}
