// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'decrypt_payloads.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DecryptPayloadsResult _$DecryptPayloadsResultFromJson(
  Map<String, dynamic> json,
) => _DecryptPayloadsResult(
  decryptedPayloads:
      (json['decryptedPayloads'] as List<dynamic>)
          .map(
            (e) =>
                DecryptPayloadsResultDetail.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
);

Map<String, dynamic> _$DecryptPayloadsResultToJson(
  _DecryptPayloadsResult instance,
) => <String, dynamic>{'decryptedPayloads': instance.decryptedPayloads};

_DecryptPayloadsResultDetail _$DecryptPayloadsResultDetailFromJson(
  Map<String, dynamic> json,
) => _DecryptPayloadsResultDetail(
  decryptedPayload: json['decryptedPayload'] as String,
);

Map<String, dynamic> _$DecryptPayloadsResultDetailToJson(
  _DecryptPayloadsResultDetail instance,
) => <String, dynamic>{'decryptedPayload': instance.decryptedPayload};

_DecryptPayloadRequestData _$DecryptPayloadRequestDataFromJson(
  Map<String, dynamic> json,
) => _DecryptPayloadRequestData(
  payload: json['payload'] as String,
  isHexa: json['isHexa'] as bool,
);

Map<String, dynamic> _$DecryptPayloadRequestDataToJson(
  _DecryptPayloadRequestData instance,
) => <String, dynamic>{'payload': instance.payload, 'isHexa': instance.isHexa};

_DecryptPayloadRequest _$DecryptPayloadRequestFromJson(
  Map<String, dynamic> json,
) => _DecryptPayloadRequest(
  serviceName: json['serviceName'] as String,
  pathSuffix: json['pathSuffix'] as String? ?? '',
  description: json['description'] as Map<String, dynamic>? ?? const {},
  payloads:
      (json['payloads'] as List<dynamic>?)
          ?.map(
            (e) =>
                DecryptPayloadRequestData.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
);

Map<String, dynamic> _$DecryptPayloadRequestToJson(
  _DecryptPayloadRequest instance,
) => <String, dynamic>{
  'serviceName': instance.serviceName,
  'pathSuffix': instance.pathSuffix,
  'description': instance.description,
  'payloads': instance.payloads,
};
