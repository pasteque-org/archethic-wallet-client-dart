// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_services_from_keychain.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetServicesFromKeychainResult _$GetServicesFromKeychainResultFromJson(
  Map<String, dynamic> json,
) => _GetServicesFromKeychainResult(
  services:
      (json['services'] as List<dynamic>)
          .map((e) => Service.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$GetServicesFromKeychainResultToJson(
  _GetServicesFromKeychainResult instance,
) => <String, dynamic>{'services': instance.services};

_GetServicesFromKeychainRequest _$GetServicesFromKeychainRequestFromJson(
  Map<String, dynamic> json,
) => _GetServicesFromKeychainRequest();

Map<String, dynamic> _$GetServicesFromKeychainRequestToJson(
  _GetServicesFromKeychainRequest instance,
) => <String, dynamic>{};
