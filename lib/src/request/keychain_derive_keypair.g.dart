// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keychain_derive_keypair.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_KeychainDeriveKeypairResult _$KeychainDeriveKeypairResultFromJson(
  Map<String, dynamic> json,
) => _KeychainDeriveKeypairResult(publicKey: json['publicKey'] as String);

Map<String, dynamic> _$KeychainDeriveKeypairResultToJson(
  _KeychainDeriveKeypairResult instance,
) => <String, dynamic>{'publicKey': instance.publicKey};

_KeychainDeriveKeypairRequest _$KeychainDeriveKeypairRequestFromJson(
  Map<String, dynamic> json,
) => _KeychainDeriveKeypairRequest(
  serviceName: json['serviceName'] as String,
  index: (json['index'] as num?)?.toInt() ?? 0,
  pathSuffix: json['pathSuffix'] as String? ?? '',
);

Map<String, dynamic> _$KeychainDeriveKeypairRequestToJson(
  _KeychainDeriveKeypairRequest instance,
) => <String, dynamic>{
  'serviceName': instance.serviceName,
  'index': instance.index,
  'pathSuffix': instance.pathSuffix,
};
