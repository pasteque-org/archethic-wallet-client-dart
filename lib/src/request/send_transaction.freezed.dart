// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SendTransactionResult {

 String get transactionAddress; int get nbConfirmations; int get maxConfirmations;
/// Create a copy of SendTransactionResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SendTransactionResultCopyWith<SendTransactionResult> get copyWith => _$SendTransactionResultCopyWithImpl<SendTransactionResult>(this as SendTransactionResult, _$identity);

  /// Serializes this SendTransactionResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendTransactionResult&&(identical(other.transactionAddress, transactionAddress) || other.transactionAddress == transactionAddress)&&(identical(other.nbConfirmations, nbConfirmations) || other.nbConfirmations == nbConfirmations)&&(identical(other.maxConfirmations, maxConfirmations) || other.maxConfirmations == maxConfirmations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionAddress,nbConfirmations,maxConfirmations);

@override
String toString() {
  return 'SendTransactionResult(transactionAddress: $transactionAddress, nbConfirmations: $nbConfirmations, maxConfirmations: $maxConfirmations)';
}


}

/// @nodoc
abstract mixin class $SendTransactionResultCopyWith<$Res>  {
  factory $SendTransactionResultCopyWith(SendTransactionResult value, $Res Function(SendTransactionResult) _then) = _$SendTransactionResultCopyWithImpl;
@useResult
$Res call({
 String transactionAddress, int nbConfirmations, int maxConfirmations
});




}
/// @nodoc
class _$SendTransactionResultCopyWithImpl<$Res>
    implements $SendTransactionResultCopyWith<$Res> {
  _$SendTransactionResultCopyWithImpl(this._self, this._then);

  final SendTransactionResult _self;
  final $Res Function(SendTransactionResult) _then;

/// Create a copy of SendTransactionResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transactionAddress = null,Object? nbConfirmations = null,Object? maxConfirmations = null,}) {
  return _then(_self.copyWith(
transactionAddress: null == transactionAddress ? _self.transactionAddress : transactionAddress // ignore: cast_nullable_to_non_nullable
as String,nbConfirmations: null == nbConfirmations ? _self.nbConfirmations : nbConfirmations // ignore: cast_nullable_to_non_nullable
as int,maxConfirmations: null == maxConfirmations ? _self.maxConfirmations : maxConfirmations // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SendTransactionResult extends SendTransactionResult {
  const _SendTransactionResult({required this.transactionAddress, required this.nbConfirmations, required this.maxConfirmations}): super._();
  factory _SendTransactionResult.fromJson(Map<String, dynamic> json) => _$SendTransactionResultFromJson(json);

@override final  String transactionAddress;
@override final  int nbConfirmations;
@override final  int maxConfirmations;

/// Create a copy of SendTransactionResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SendTransactionResultCopyWith<_SendTransactionResult> get copyWith => __$SendTransactionResultCopyWithImpl<_SendTransactionResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SendTransactionResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SendTransactionResult&&(identical(other.transactionAddress, transactionAddress) || other.transactionAddress == transactionAddress)&&(identical(other.nbConfirmations, nbConfirmations) || other.nbConfirmations == nbConfirmations)&&(identical(other.maxConfirmations, maxConfirmations) || other.maxConfirmations == maxConfirmations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,transactionAddress,nbConfirmations,maxConfirmations);

@override
String toString() {
  return 'SendTransactionResult(transactionAddress: $transactionAddress, nbConfirmations: $nbConfirmations, maxConfirmations: $maxConfirmations)';
}


}

/// @nodoc
abstract mixin class _$SendTransactionResultCopyWith<$Res> implements $SendTransactionResultCopyWith<$Res> {
  factory _$SendTransactionResultCopyWith(_SendTransactionResult value, $Res Function(_SendTransactionResult) _then) = __$SendTransactionResultCopyWithImpl;
@override @useResult
$Res call({
 String transactionAddress, int nbConfirmations, int maxConfirmations
});




}
/// @nodoc
class __$SendTransactionResultCopyWithImpl<$Res>
    implements _$SendTransactionResultCopyWith<$Res> {
  __$SendTransactionResultCopyWithImpl(this._self, this._then);

  final _SendTransactionResult _self;
  final $Res Function(_SendTransactionResult) _then;

/// Create a copy of SendTransactionResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transactionAddress = null,Object? nbConfirmations = null,Object? maxConfirmations = null,}) {
  return _then(_SendTransactionResult(
transactionAddress: null == transactionAddress ? _self.transactionAddress : transactionAddress // ignore: cast_nullable_to_non_nullable
as String,nbConfirmations: null == nbConfirmations ? _self.nbConfirmations : nbConfirmations // ignore: cast_nullable_to_non_nullable
as int,maxConfirmations: null == maxConfirmations ? _self.maxConfirmations : maxConfirmations // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$SendTransactionRequest {

/// - [Data]: transaction data zone (identity, keychain, smart contract, etc.)
 Data get data;/// - Type: transaction type
 String get type;/// - Version: version of the transaction (used for backward compatiblity)
 int get version;/// - Flag to generate and add the encrypted smart contract's seed in a secret
 bool? get generateEncryptedSeedSC;
/// Create a copy of SendTransactionRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SendTransactionRequestCopyWith<SendTransactionRequest> get copyWith => _$SendTransactionRequestCopyWithImpl<SendTransactionRequest>(this as SendTransactionRequest, _$identity);

  /// Serializes this SendTransactionRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendTransactionRequest&&(identical(other.data, data) || other.data == data)&&(identical(other.type, type) || other.type == type)&&(identical(other.version, version) || other.version == version)&&(identical(other.generateEncryptedSeedSC, generateEncryptedSeedSC) || other.generateEncryptedSeedSC == generateEncryptedSeedSC));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,type,version,generateEncryptedSeedSC);

@override
String toString() {
  return 'SendTransactionRequest(data: $data, type: $type, version: $version, generateEncryptedSeedSC: $generateEncryptedSeedSC)';
}


}

/// @nodoc
abstract mixin class $SendTransactionRequestCopyWith<$Res>  {
  factory $SendTransactionRequestCopyWith(SendTransactionRequest value, $Res Function(SendTransactionRequest) _then) = _$SendTransactionRequestCopyWithImpl;
@useResult
$Res call({
 Data data, String type, int version, bool? generateEncryptedSeedSC
});


$DataCopyWith<$Res> get data;

}
/// @nodoc
class _$SendTransactionRequestCopyWithImpl<$Res>
    implements $SendTransactionRequestCopyWith<$Res> {
  _$SendTransactionRequestCopyWithImpl(this._self, this._then);

  final SendTransactionRequest _self;
  final $Res Function(SendTransactionRequest) _then;

/// Create a copy of SendTransactionRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? type = null,Object? version = null,Object? generateEncryptedSeedSC = freezed,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,generateEncryptedSeedSC: freezed == generateEncryptedSeedSC ? _self.generateEncryptedSeedSC : generateEncryptedSeedSC // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of SendTransactionRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DataCopyWith<$Res> get data {
  
  return $DataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _SendTransactionRequest extends SendTransactionRequest {
  const _SendTransactionRequest({required this.data, required this.type, required this.version, this.generateEncryptedSeedSC}): super._();
  factory _SendTransactionRequest.fromJson(Map<String, dynamic> json) => _$SendTransactionRequestFromJson(json);

/// - [Data]: transaction data zone (identity, keychain, smart contract, etc.)
@override final  Data data;
/// - Type: transaction type
@override final  String type;
/// - Version: version of the transaction (used for backward compatiblity)
@override final  int version;
/// - Flag to generate and add the encrypted smart contract's seed in a secret
@override final  bool? generateEncryptedSeedSC;

/// Create a copy of SendTransactionRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SendTransactionRequestCopyWith<_SendTransactionRequest> get copyWith => __$SendTransactionRequestCopyWithImpl<_SendTransactionRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SendTransactionRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SendTransactionRequest&&(identical(other.data, data) || other.data == data)&&(identical(other.type, type) || other.type == type)&&(identical(other.version, version) || other.version == version)&&(identical(other.generateEncryptedSeedSC, generateEncryptedSeedSC) || other.generateEncryptedSeedSC == generateEncryptedSeedSC));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,type,version,generateEncryptedSeedSC);

@override
String toString() {
  return 'SendTransactionRequest(data: $data, type: $type, version: $version, generateEncryptedSeedSC: $generateEncryptedSeedSC)';
}


}

/// @nodoc
abstract mixin class _$SendTransactionRequestCopyWith<$Res> implements $SendTransactionRequestCopyWith<$Res> {
  factory _$SendTransactionRequestCopyWith(_SendTransactionRequest value, $Res Function(_SendTransactionRequest) _then) = __$SendTransactionRequestCopyWithImpl;
@override @useResult
$Res call({
 Data data, String type, int version, bool? generateEncryptedSeedSC
});


@override $DataCopyWith<$Res> get data;

}
/// @nodoc
class __$SendTransactionRequestCopyWithImpl<$Res>
    implements _$SendTransactionRequestCopyWith<$Res> {
  __$SendTransactionRequestCopyWithImpl(this._self, this._then);

  final _SendTransactionRequest _self;
  final $Res Function(_SendTransactionRequest) _then;

/// Create a copy of SendTransactionRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? type = null,Object? version = null,Object? generateEncryptedSeedSC = freezed,}) {
  return _then(_SendTransactionRequest(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,generateEncryptedSeedSC: freezed == generateEncryptedSeedSC ? _self.generateEncryptedSeedSC : generateEncryptedSeedSC // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of SendTransactionRequest
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DataCopyWith<$Res> get data {
  
  return $DataCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

// dart format on
