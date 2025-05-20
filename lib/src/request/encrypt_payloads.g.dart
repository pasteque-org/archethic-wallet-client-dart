// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'encrypt_payloads.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_EncryptPayloadsResult _$EncryptPayloadsResultFromJson(
  Map<String, dynamic> json,
) => _EncryptPayloadsResult(
  encryptedPayloads:
      (json['encryptedPayloads'] as List<dynamic>)
          .map(
            (e) =>
                EncryptPayloadsResultDetail.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
);

Map<String, dynamic> _$EncryptPayloadsResultToJson(
  _EncryptPayloadsResult instance,
) => <String, dynamic>{'encryptedPayloads': instance.encryptedPayloads};

_EncryptPayloadsResultDetail _$EncryptPayloadsResultDetailFromJson(
  Map<String, dynamic> json,
) => _EncryptPayloadsResultDetail(
  encryptedPayload: json['encryptedPayload'] as String,
);

Map<String, dynamic> _$EncryptPayloadsResultDetailToJson(
  _EncryptPayloadsResultDetail instance,
) => <String, dynamic>{'encryptedPayload': instance.encryptedPayload};

_EncryptPayloadRequestData _$EncryptPayloadRequestDataFromJson(
  Map<String, dynamic> json,
) => _EncryptPayloadRequestData(
  payload: json['payload'] as String,
  isHexa: json['isHexa'] as bool,
);

Map<String, dynamic> _$EncryptPayloadRequestDataToJson(
  _EncryptPayloadRequestData instance,
) => <String, dynamic>{'payload': instance.payload, 'isHexa': instance.isHexa};

_EncryptPayloadRequest _$EncryptPayloadRequestFromJson(
  Map<String, dynamic> json,
) => _EncryptPayloadRequest(
  serviceName: json['serviceName'] as String,
  pathSuffix: json['pathSuffix'] as String? ?? '',
  payloads:
      (json['payloads'] as List<dynamic>?)
          ?.map(
            (e) =>
                EncryptPayloadRequestData.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
);

Map<String, dynamic> _$EncryptPayloadRequestToJson(
  _EncryptPayloadRequest instance,
) => <String, dynamic>{
  'serviceName': instance.serviceName,
  'pathSuffix': instance.pathSuffix,
  'payloads': instance.payloads,
};
