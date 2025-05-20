// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keychain_derive_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_KeychainDeriveAddressResult _$KeychainDeriveAddressResultFromJson(
  Map<String, dynamic> json,
) => _KeychainDeriveAddressResult(address: json['address'] as String);

Map<String, dynamic> _$KeychainDeriveAddressResultToJson(
  _KeychainDeriveAddressResult instance,
) => <String, dynamic>{'address': instance.address};

_KeychainDeriveAddressRequest _$KeychainDeriveAddressRequestFromJson(
  Map<String, dynamic> json,
) => _KeychainDeriveAddressRequest(
  serviceName: json['serviceName'] as String,
  index: (json['index'] as num?)?.toInt() ?? 0,
  pathSuffix: json['pathSuffix'] as String? ?? '',
);

Map<String, dynamic> _$KeychainDeriveAddressRequestToJson(
  _KeychainDeriveAddressRequest instance,
) => <String, dynamic>{
  'serviceName': instance.serviceName,
  'index': instance.index,
  'pathSuffix': instance.pathSuffix,
};
