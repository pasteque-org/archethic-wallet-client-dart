// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_payloads.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignPayloadsResult _$SignPayloadsResultFromJson(
  Map<String, dynamic> json,
) => _SignPayloadsResult(
  signedPayloads:
      (json['signedPayloads'] as List<dynamic>)
          .map(
            (e) => SignPayloadsResultDetail.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
);

Map<String, dynamic> _$SignPayloadsResultToJson(_SignPayloadsResult instance) =>
    <String, dynamic>{'signedPayloads': instance.signedPayloads};

_SignPayloadsResultDetail _$SignPayloadsResultDetailFromJson(
  Map<String, dynamic> json,
) => _SignPayloadsResultDetail(signedPayload: json['signedPayload'] as String);

Map<String, dynamic> _$SignPayloadsResultDetailToJson(
  _SignPayloadsResultDetail instance,
) => <String, dynamic>{'signedPayload': instance.signedPayload};

_SignPayloadRequestData _$SignPayloadRequestDataFromJson(
  Map<String, dynamic> json,
) => _SignPayloadRequestData(
  payload: json['payload'] as String,
  isHexa: json['isHexa'] as bool,
);

Map<String, dynamic> _$SignPayloadRequestDataToJson(
  _SignPayloadRequestData instance,
) => <String, dynamic>{'payload': instance.payload, 'isHexa': instance.isHexa};

_SignPayloadRequest _$SignPayloadRequestFromJson(Map<String, dynamic> json) =>
    _SignPayloadRequest(
      serviceName: json['serviceName'] as String,
      pathSuffix: json['pathSuffix'] as String? ?? '',
      description: json['description'] as Map<String, dynamic>? ?? const {},
      payloads:
          (json['payloads'] as List<dynamic>?)
              ?.map(
                (e) =>
                    SignPayloadRequestData.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
    );

Map<String, dynamic> _$SignPayloadRequestToJson(_SignPayloadRequest instance) =>
    <String, dynamic>{
      'serviceName': instance.serviceName,
      'pathSuffix': instance.pathSuffix,
      'description': instance.description,
      'payloads': instance.payloads,
    };
