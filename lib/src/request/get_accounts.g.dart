// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_accounts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppAccount _$AppAccountFromJson(Map<String, dynamic> json) => _AppAccount(
  shortName: json['shortName'] as String,
  serviceName: json['serviceName'] as String,
  genesisAddress: json['genesisAddress'] as String,
);

Map<String, dynamic> _$AppAccountToJson(_AppAccount instance) =>
    <String, dynamic>{
      'shortName': instance.shortName,
      'serviceName': instance.serviceName,
      'genesisAddress': instance.genesisAddress,
    };

_GetAccountsResult _$GetAccountsResultFromJson(Map<String, dynamic> json) =>
    _GetAccountsResult(
      accounts:
          (json['accounts'] as List<dynamic>)
              .map((e) => AppAccount.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$GetAccountsResultToJson(_GetAccountsResult instance) =>
    <String, dynamic>{'accounts': instance.accounts};

_GetAccountsRequest _$GetAccountsRequestFromJson(Map<String, dynamic> json) =>
    _GetAccountsRequest();

Map<String, dynamic> _$GetAccountsRequestToJson(_GetAccountsRequest instance) =>
    <String, dynamic>{};
