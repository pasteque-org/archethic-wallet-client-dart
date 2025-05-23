// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RequestOrigin _$RequestOriginFromJson(Map<String, dynamic> json) =>
    _RequestOrigin(
      name: json['name'] as String,
      url: json['url'] as String?,
      logo: json['logo'] as String?,
    );

Map<String, dynamic> _$RequestOriginToJson(_RequestOrigin instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
      'logo': instance.logo,
    };

_Request _$RequestFromJson(Map<String, dynamic> json) => _Request(
  origin: RequestOrigin.fromJson(json['origin'] as Map<String, dynamic>),
  version: (json['version'] as num).toInt(),
  payload: json['payload'] as Map<String, dynamic>,
);

Map<String, dynamic> _$RequestToJson(_Request instance) => <String, dynamic>{
  'origin': instance.origin,
  'version': instance.version,
  'payload': instance.payload,
};
