// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SubscriptionUpdate _$SubscriptionUpdateFromJson(Map<String, dynamic> json) =>
    _SubscriptionUpdate(
      subscriptionId: json['subscriptionId'] as String,
      data: json['data'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$SubscriptionUpdateToJson(_SubscriptionUpdate instance) =>
    <String, dynamic>{
      'subscriptionId': instance.subscriptionId,
      'data': instance.data,
    };

_SubscribeResponse _$SubscribeResponseFromJson(Map<String, dynamic> json) =>
    _SubscribeResponse(subscriptionId: json['subscriptionId'] as String);

Map<String, dynamic> _$SubscribeResponseToJson(_SubscribeResponse instance) =>
    <String, dynamic>{'subscriptionId': instance.subscriptionId};

_UnsubscribeRequest _$UnsubscribeRequestFromJson(Map<String, dynamic> json) =>
    _UnsubscribeRequest(subscriptionId: json['subscriptionId'] as String);

Map<String, dynamic> _$UnsubscribeRequestToJson(_UnsubscribeRequest instance) =>
    <String, dynamic>{'subscriptionId': instance.subscriptionId};
