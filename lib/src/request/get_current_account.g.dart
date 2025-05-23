// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_current_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetCurrentAccountResult _$GetCurrentAccountResultFromJson(
  Map<String, dynamic> json,
) => _GetCurrentAccountResult(
  shortName: json['shortName'] as String,
  serviceName: json['serviceName'] as String,
  genesisAddress: json['genesisAddress'] as String,
);

Map<String, dynamic> _$GetCurrentAccountResultToJson(
  _GetCurrentAccountResult instance,
) => <String, dynamic>{
  'shortName': instance.shortName,
  'serviceName': instance.serviceName,
  'genesisAddress': instance.genesisAddress,
};

_GetCurrentAccountRequest _$GetCurrentAccountRequestFromJson(
  Map<String, dynamic> json,
) => _GetCurrentAccountRequest();

Map<String, dynamic> _$GetCurrentAccountRequestToJson(
  _GetCurrentAccountRequest instance,
) => <String, dynamic>{};
