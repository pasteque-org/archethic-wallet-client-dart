// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_sub.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AccountBalance _$AccountBalanceFromJson(Map<String, dynamic> json) =>
    _AccountBalance(
      nativeTokenName: json['nativeTokenName'] as String,
      nativeTokenValue: (json['nativeTokenValue'] as num).toDouble(),
    );

Map<String, dynamic> _$AccountBalanceToJson(_AccountBalance instance) =>
    <String, dynamic>{
      'nativeTokenName': instance.nativeTokenName,
      'nativeTokenValue': instance.nativeTokenValue,
    };

_Account _$AccountFromJson(Map<String, dynamic> json) => _Account(
  name: json['name'] as String,
  genesisAddress: json['genesisAddress'] as String,
  lastAddress: json['lastAddress'] as String?,
  balance:
      json['balance'] == null
          ? null
          : AccountBalance.fromJson(json['balance'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AccountToJson(_Account instance) => <String, dynamic>{
  'name': instance.name,
  'genesisAddress': instance.genesisAddress,
  'lastAddress': instance.lastAddress,
  'balance': instance.balance,
};

_SubscribeAccountRequest _$SubscribeAccountRequestFromJson(
  Map<String, dynamic> json,
) => _SubscribeAccountRequest(serviceName: json['serviceName'] as String);

Map<String, dynamic> _$SubscribeAccountRequestToJson(
  _SubscribeAccountRequest instance,
) => <String, dynamic>{'serviceName': instance.serviceName};

_SubscribeCurrentAccountRequest _$SubscribeCurrentAccountRequestFromJson(
  Map<String, dynamic> json,
) => _SubscribeCurrentAccountRequest();

Map<String, dynamic> _$SubscribeCurrentAccountRequestToJson(
  _SubscribeCurrentAccountRequest instance,
) => <String, dynamic>{};
