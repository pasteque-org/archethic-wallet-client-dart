import 'package:archethic_lib_dart/archethic_lib_dart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_services_from_keychain.freezed.dart';
part 'get_services_from_keychain.g.dart';

@freezed
abstract class GetServicesFromKeychainResult
    with _$GetServicesFromKeychainResult {
  const factory GetServicesFromKeychainResult({
    required final List<Service> services,
  }) = _GetServicesFromKeychainResult;
  const GetServicesFromKeychainResult._();

  factory GetServicesFromKeychainResult.fromJson(
    final Map<String, dynamic> json,
  ) => _$GetServicesFromKeychainResultFromJson(json);
}

@freezed
abstract class GetServicesFromKeychainRequest
    with _$GetServicesFromKeychainRequest {
  const factory GetServicesFromKeychainRequest() =
      _GetServicesFromKeychainRequest;
  const GetServicesFromKeychainRequest._();

  factory GetServicesFromKeychainRequest.fromJson(
    final Map<String, dynamic> json,
  ) => _$GetServicesFromKeychainRequestFromJson(json);
}
