// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SendTransactionResult _$SendTransactionResultFromJson(
  Map<String, dynamic> json,
) => _SendTransactionResult(
  transactionAddress: json['transactionAddress'] as String,
  nbConfirmations: (json['nbConfirmations'] as num).toInt(),
  maxConfirmations: (json['maxConfirmations'] as num).toInt(),
);

Map<String, dynamic> _$SendTransactionResultToJson(
  _SendTransactionResult instance,
) => <String, dynamic>{
  'transactionAddress': instance.transactionAddress,
  'nbConfirmations': instance.nbConfirmations,
  'maxConfirmations': instance.maxConfirmations,
};

_SendTransactionRequest _$SendTransactionRequestFromJson(
  Map<String, dynamic> json,
) => _SendTransactionRequest(
  data: Data.fromJson(json['data'] as Map<String, dynamic>),
  type: json['type'] as String,
  version: (json['version'] as num).toInt(),
  generateEncryptedSeedSC: json['generateEncryptedSeedSC'] as bool?,
);

Map<String, dynamic> _$SendTransactionRequestToJson(
  _SendTransactionRequest instance,
) => <String, dynamic>{
  'data': instance.data,
  'type': instance.type,
  'version': instance.version,
  'generateEncryptedSeedSC': instance.generateEncryptedSeedSC,
};
