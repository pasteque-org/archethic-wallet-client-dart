// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_transactions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignTransactionsResult _$SignTransactionsResultFromJson(
  Map<String, dynamic> json,
) => _SignTransactionsResult(
  signedTxs:
      (json['signedTxs'] as List<dynamic>)
          .map(
            (e) => SignTransactionsResultDetail.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
);

Map<String, dynamic> _$SignTransactionsResultToJson(
  _SignTransactionsResult instance,
) => <String, dynamic>{'signedTxs': instance.signedTxs};

_SignTransactionsResultDetail _$SignTransactionsResultDetailFromJson(
  Map<String, dynamic> json,
) => _SignTransactionsResultDetail(
  address: json['address'] as String,
  previousPublicKey: json['previousPublicKey'] as String,
  previousSignature: json['previousSignature'] as String,
  originSignature: json['originSignature'] as String,
);

Map<String, dynamic> _$SignTransactionsResultDetailToJson(
  _SignTransactionsResultDetail instance,
) => <String, dynamic>{
  'address': instance.address,
  'previousPublicKey': instance.previousPublicKey,
  'previousSignature': instance.previousSignature,
  'originSignature': instance.originSignature,
};

_SignTransactionRequestData _$SignTransactionRequestDataFromJson(
  Map<String, dynamic> json,
) => _SignTransactionRequestData(
  data: Data.fromJson(json['data'] as Map<String, dynamic>),
  type: json['type'] as String,
  version: (json['version'] as num).toInt(),
);

Map<String, dynamic> _$SignTransactionRequestDataToJson(
  _SignTransactionRequestData instance,
) => <String, dynamic>{
  'data': instance.data,
  'type': instance.type,
  'version': instance.version,
};

_SignTransactionRequest _$SignTransactionRequestFromJson(
  Map<String, dynamic> json,
) => _SignTransactionRequest(
  serviceName: json['serviceName'] as String,
  pathSuffix: json['pathSuffix'] as String? ?? '',
  description: json['description'] as Map<String, dynamic>? ?? const {},
  transactions:
      (json['transactions'] as List<dynamic>?)
          ?.map(
            (e) =>
                SignTransactionRequestData.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const [],
);

Map<String, dynamic> _$SignTransactionRequestToJson(
  _SignTransactionRequest instance,
) => <String, dynamic>{
  'serviceName': instance.serviceName,
  'pathSuffix': instance.pathSuffix,
  'description': instance.description,
  'transactions': instance.transactions,
};
