// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_transactions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignTransactionsResult {

 List<SignTransactionsResultDetail> get signedTxs;
/// Create a copy of SignTransactionsResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignTransactionsResultCopyWith<SignTransactionsResult> get copyWith => _$SignTransactionsResultCopyWithImpl<SignTransactionsResult>(this as SignTransactionsResult, _$identity);

  /// Serializes this SignTransactionsResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignTransactionsResult&&const DeepCollectionEquality().equals(other.signedTxs, signedTxs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(signedTxs));

@override
String toString() {
  return 'SignTransactionsResult(signedTxs: $signedTxs)';
}


}

/// @nodoc
abstract mixin class $SignTransactionsResultCopyWith<$Res>  {
  factory $SignTransactionsResultCopyWith(SignTransactionsResult value, $Res Function(SignTransactionsResult) _then) = _$SignTransactionsResultCopyWithImpl;
@useResult
$Res call({
 List<SignTransactionsResultDetail> signedTxs
});




}
/// @nodoc
class _$SignTransactionsResultCopyWithImpl<$Res>
    implements $SignTransactionsResultCopyWith<$Res> {
  _$SignTransactionsResultCopyWithImpl(this._self, this._then);

  final SignTransactionsResult _self;
  final $Res Function(SignTransactionsResult) _then;

/// Create a copy of SignTransactionsResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? signedTxs = null,}) {
  return _then(_self.copyWith(
signedTxs: null == signedTxs ? _self.signedTxs : signedTxs // ignore: cast_nullable_to_non_nullable
as List<SignTransactionsResultDetail>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SignTransactionsResult extends SignTransactionsResult {
  const _SignTransactionsResult({required final  List<SignTransactionsResultDetail> signedTxs}): _signedTxs = signedTxs,super._();
  factory _SignTransactionsResult.fromJson(Map<String, dynamic> json) => _$SignTransactionsResultFromJson(json);

 final  List<SignTransactionsResultDetail> _signedTxs;
@override List<SignTransactionsResultDetail> get signedTxs {
  if (_signedTxs is EqualUnmodifiableListView) return _signedTxs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_signedTxs);
}


/// Create a copy of SignTransactionsResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignTransactionsResultCopyWith<_SignTransactionsResult> get copyWith => __$SignTransactionsResultCopyWithImpl<_SignTransactionsResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignTransactionsResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignTransactionsResult&&const DeepCollectionEquality().equals(other._signedTxs, _signedTxs));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_signedTxs));

@override
String toString() {
  return 'SignTransactionsResult(signedTxs: $signedTxs)';
}


}

/// @nodoc
abstract mixin class _$SignTransactionsResultCopyWith<$Res> implements $SignTransactionsResultCopyWith<$Res> {
  factory _$SignTransactionsResultCopyWith(_SignTransactionsResult value, $Res Function(_SignTransactionsResult) _then) = __$SignTransactionsResultCopyWithImpl;
@override @useResult
$Res call({
 List<SignTransactionsResultDetail> signedTxs
});




}
/// @nodoc
class __$SignTransactionsResultCopyWithImpl<$Res>
    implements _$SignTransactionsResultCopyWith<$Res> {
  __$SignTransactionsResultCopyWithImpl(this._self, this._then);

  final _SignTransactionsResult _self;
  final $Res Function(_SignTransactionsResult) _then;

/// Create a copy of SignTransactionsResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? signedTxs = null,}) {
  return _then(_SignTransactionsResult(
signedTxs: null == signedTxs ? _self._signedTxs : signedTxs // ignore: cast_nullable_to_non_nullable
as List<SignTransactionsResultDetail>,
  ));
}


}


/// @nodoc
mixin _$SignTransactionsResultDetail {

/// Address: hash of the new generated public key for the given transaction
 String get address;/// Previous generated public key matching the previous signature
 String get previousPublicKey;/// Signature from the previous public key
 String get previousSignature;/// Signature from the device which originated the transaction (used in the Proof of work)
 String get originSignature;
/// Create a copy of SignTransactionsResultDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignTransactionsResultDetailCopyWith<SignTransactionsResultDetail> get copyWith => _$SignTransactionsResultDetailCopyWithImpl<SignTransactionsResultDetail>(this as SignTransactionsResultDetail, _$identity);

  /// Serializes this SignTransactionsResultDetail to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignTransactionsResultDetail&&(identical(other.address, address) || other.address == address)&&(identical(other.previousPublicKey, previousPublicKey) || other.previousPublicKey == previousPublicKey)&&(identical(other.previousSignature, previousSignature) || other.previousSignature == previousSignature)&&(identical(other.originSignature, originSignature) || other.originSignature == originSignature));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,address,previousPublicKey,previousSignature,originSignature);

@override
String toString() {
  return 'SignTransactionsResultDetail(address: $address, previousPublicKey: $previousPublicKey, previousSignature: $previousSignature, originSignature: $originSignature)';
}


}

/// @nodoc
abstract mixin class $SignTransactionsResultDetailCopyWith<$Res>  {
  factory $SignTransactionsResultDetailCopyWith(SignTransactionsResultDetail value, $Res Function(SignTransactionsResultDetail) _then) = _$SignTransactionsResultDetailCopyWithImpl;
@useResult
$Res call({
 String address, String previousPublicKey, String previousSignature, String originSignature
});




}
/// @nodoc
class _$SignTransactionsResultDetailCopyWithImpl<$Res>
    implements $SignTransactionsResultDetailCopyWith<$Res> {
  _$SignTransactionsResultDetailCopyWithImpl(this._self, this._then);

  final SignTransactionsResultDetail _self;
  final $Res Function(SignTransactionsResultDetail) _then;

/// Create a copy of SignTransactionsResultDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? address = null,Object? previousPublicKey = null,Object? previousSignature = null,Object? originSignature = null,}) {
  return _then(_self.copyWith(
address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,previousPublicKey: null == previousPublicKey ? _self.previousPublicKey : previousPublicKey // ignore: cast_nullable_to_non_nullable
as String,previousSignature: null == previousSignature ? _self.previousSignature : previousSignature // ignore: cast_nullable_to_non_nullable
as String,originSignature: null == originSignature ? _self.originSignature : originSignature // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SignTransactionsResultDetail extends SignTransactionsResultDetail {
  const _SignTransactionsResultDetail({required this.address, required this.previousPublicKey, required this.previousSignature, required this.originSignature}): super._();
  factory _SignTransactionsResultDetail.fromJson(Map<String, dynamic> json) => _$SignTransactionsResultDetailFromJson(json);

/// Address: hash of the new generated public key for the given transaction
@override final  String address;
/// Previous generated public key matching the previous signature
@override final  String previousPublicKey;
/// Signature from the previous public key
@override final  String previousSignature;
/// Signature from the device which originated the transaction (used in the Proof of work)
@override final  String originSignature;

/// Create a copy of SignTransactionsResultDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignTransactionsResultDetailCopyWith<_SignTransactionsResultDetail> get copyWith => __$SignTransactionsResultDetailCopyWithImpl<_SignTransactionsResultDetail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignTransactionsResultDetailToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignTransactionsResultDetail&&(identical(other.address, address) || other.address == address)&&(identical(other.previousPublicKey, previousPublicKey) || other.previousPublicKey == previousPublicKey)&&(identical(other.previousSignature, previousSignature) || other.previousSignature == previousSignature)&&(identical(other.originSignature, originSignature) || other.originSignature == originSignature));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,address,previousPublicKey,previousSignature,originSignature);

@override
String toString() {
  return 'SignTransactionsResultDetail(address: $address, previousPublicKey: $previousPublicKey, previousSignature: $previousSignature, originSignature: $originSignature)';
}


}

/// @nodoc
abstract mixin class _$SignTransactionsResultDetailCopyWith<$Res> implements $SignTransactionsResultDetailCopyWith<$Res> {
  factory _$SignTransactionsResultDetailCopyWith(_SignTransactionsResultDetail value, $Res Function(_SignTransactionsResultDetail) _then) = __$SignTransactionsResultDetailCopyWithImpl;
@override @useResult
$Res call({
 String address, String previousPublicKey, String previousSignature, String originSignature
});




}
/// @nodoc
class __$SignTransactionsResultDetailCopyWithImpl<$Res>
    implements _$SignTransactionsResultDetailCopyWith<$Res> {
  __$SignTransactionsResultDetailCopyWithImpl(this._self, this._then);

  final _SignTransactionsResultDetail _self;
  final $Res Function(_SignTransactionsResultDetail) _then;

/// Create a copy of SignTransactionsResultDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? address = null,Object? previousPublicKey = null,Object? previousSignature = null,Object? originSignature = null,}) {
  return _then(_SignTransactionsResultDetail(
address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,previousPublicKey: null == previousPublicKey ? _self.previousPublicKey : previousPublicKey // ignore: cast_nullable_to_non_nullable
as String,previousSignature: null == previousSignature ? _self.previousSignature : previousSignature // ignore: cast_nullable_to_non_nullable
as String,originSignature: null == originSignature ? _self.originSignature : originSignature // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$SignTransactionRequestData {

 Data get data; String get type; int get version;
/// Create a copy of SignTransactionRequestData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignTransactionRequestDataCopyWith<SignTransactionRequestData> get copyWith => _$SignTransactionRequestDataCopyWithImpl<SignTransactionRequestData>(this as SignTransactionRequestData, _$identity);

  /// Serializes this SignTransactionRequestData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignTransactionRequestData&&(identical(other.data, data) || other.data == data)&&(identical(other.type, type) || other.type == type)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,type,version);

@override
String toString() {
  return 'SignTransactionRequestData(data: $data, type: $type, version: $version)';
}


}

/// @nodoc
abstract mixin class $SignTransactionRequestDataCopyWith<$Res>  {
  factory $SignTransactionRequestDataCopyWith(SignTransactionRequestData value, $Res Function(SignTransactionRequestData) _then) = _$SignTransactionRequestDataCopyWithImpl;
@useResult
$Res call({
 Data data, String type, int version
});


$DataCopyWith<$Res> get data;

}
/// @nodoc
class _$SignTransactionRequestDataCopyWithImpl<$Res>
    implements $SignTransactionRequestDataCopyWith<$Res> {
  _$SignTransactionRequestDataCopyWithImpl(this._self, this._then);

  final SignTransactionRequestData _self;
  final $Res Function(SignTransactionRequestData) _then;

/// Create a copy of SignTransactionRequestData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? type = null,Object? version = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of SignTransactionRequestData
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

class _SignTransactionRequestData extends SignTransactionRequestData {
  const _SignTransactionRequestData({required this.data, required this.type, required this.version}): super._();
  factory _SignTransactionRequestData.fromJson(Map<String, dynamic> json) => _$SignTransactionRequestDataFromJson(json);

@override final  Data data;
@override final  String type;
@override final  int version;

/// Create a copy of SignTransactionRequestData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignTransactionRequestDataCopyWith<_SignTransactionRequestData> get copyWith => __$SignTransactionRequestDataCopyWithImpl<_SignTransactionRequestData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignTransactionRequestDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignTransactionRequestData&&(identical(other.data, data) || other.data == data)&&(identical(other.type, type) || other.type == type)&&(identical(other.version, version) || other.version == version));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,data,type,version);

@override
String toString() {
  return 'SignTransactionRequestData(data: $data, type: $type, version: $version)';
}


}

/// @nodoc
abstract mixin class _$SignTransactionRequestDataCopyWith<$Res> implements $SignTransactionRequestDataCopyWith<$Res> {
  factory _$SignTransactionRequestDataCopyWith(_SignTransactionRequestData value, $Res Function(_SignTransactionRequestData) _then) = __$SignTransactionRequestDataCopyWithImpl;
@override @useResult
$Res call({
 Data data, String type, int version
});


@override $DataCopyWith<$Res> get data;

}
/// @nodoc
class __$SignTransactionRequestDataCopyWithImpl<$Res>
    implements _$SignTransactionRequestDataCopyWith<$Res> {
  __$SignTransactionRequestDataCopyWithImpl(this._self, this._then);

  final _SignTransactionRequestData _self;
  final $Res Function(_SignTransactionRequestData) _then;

/// Create a copy of SignTransactionRequestData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? type = null,Object? version = null,}) {
  return _then(_SignTransactionRequestData(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Data,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of SignTransactionRequestData
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
mixin _$SignTransactionRequest {

/// Service name to identify the derivation path to use
 String get serviceName;/// Additional information to add to a service derivation path (optional - default to empty)
 String get pathSuffix;/// Description to explain the signature in multiple languages (key=Locale, value=description)
 Map<String, dynamic> get description;/// - List of transaction's infos
 List<SignTransactionRequestData> get transactions;
/// Create a copy of SignTransactionRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignTransactionRequestCopyWith<SignTransactionRequest> get copyWith => _$SignTransactionRequestCopyWithImpl<SignTransactionRequest>(this as SignTransactionRequest, _$identity);

  /// Serializes this SignTransactionRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignTransactionRequest&&(identical(other.serviceName, serviceName) || other.serviceName == serviceName)&&(identical(other.pathSuffix, pathSuffix) || other.pathSuffix == pathSuffix)&&const DeepCollectionEquality().equals(other.description, description)&&const DeepCollectionEquality().equals(other.transactions, transactions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,serviceName,pathSuffix,const DeepCollectionEquality().hash(description),const DeepCollectionEquality().hash(transactions));

@override
String toString() {
  return 'SignTransactionRequest(serviceName: $serviceName, pathSuffix: $pathSuffix, description: $description, transactions: $transactions)';
}


}

/// @nodoc
abstract mixin class $SignTransactionRequestCopyWith<$Res>  {
  factory $SignTransactionRequestCopyWith(SignTransactionRequest value, $Res Function(SignTransactionRequest) _then) = _$SignTransactionRequestCopyWithImpl;
@useResult
$Res call({
 String serviceName, String pathSuffix, Map<String, dynamic> description, List<SignTransactionRequestData> transactions
});




}
/// @nodoc
class _$SignTransactionRequestCopyWithImpl<$Res>
    implements $SignTransactionRequestCopyWith<$Res> {
  _$SignTransactionRequestCopyWithImpl(this._self, this._then);

  final SignTransactionRequest _self;
  final $Res Function(SignTransactionRequest) _then;

/// Create a copy of SignTransactionRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? serviceName = null,Object? pathSuffix = null,Object? description = null,Object? transactions = null,}) {
  return _then(_self.copyWith(
serviceName: null == serviceName ? _self.serviceName : serviceName // ignore: cast_nullable_to_non_nullable
as String,pathSuffix: null == pathSuffix ? _self.pathSuffix : pathSuffix // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,transactions: null == transactions ? _self.transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<SignTransactionRequestData>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SignTransactionRequest extends SignTransactionRequest {
  const _SignTransactionRequest({required this.serviceName, this.pathSuffix = '', final  Map<String, dynamic> description = const {}, final  List<SignTransactionRequestData> transactions = const []}): _description = description,_transactions = transactions,super._();
  factory _SignTransactionRequest.fromJson(Map<String, dynamic> json) => _$SignTransactionRequestFromJson(json);

/// Service name to identify the derivation path to use
@override final  String serviceName;
/// Additional information to add to a service derivation path (optional - default to empty)
@override@JsonKey() final  String pathSuffix;
/// Description to explain the signature in multiple languages (key=Locale, value=description)
 final  Map<String, dynamic> _description;
/// Description to explain the signature in multiple languages (key=Locale, value=description)
@override@JsonKey() Map<String, dynamic> get description {
  if (_description is EqualUnmodifiableMapView) return _description;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_description);
}

/// - List of transaction's infos
 final  List<SignTransactionRequestData> _transactions;
/// - List of transaction's infos
@override@JsonKey() List<SignTransactionRequestData> get transactions {
  if (_transactions is EqualUnmodifiableListView) return _transactions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_transactions);
}


/// Create a copy of SignTransactionRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignTransactionRequestCopyWith<_SignTransactionRequest> get copyWith => __$SignTransactionRequestCopyWithImpl<_SignTransactionRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignTransactionRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignTransactionRequest&&(identical(other.serviceName, serviceName) || other.serviceName == serviceName)&&(identical(other.pathSuffix, pathSuffix) || other.pathSuffix == pathSuffix)&&const DeepCollectionEquality().equals(other._description, _description)&&const DeepCollectionEquality().equals(other._transactions, _transactions));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,serviceName,pathSuffix,const DeepCollectionEquality().hash(_description),const DeepCollectionEquality().hash(_transactions));

@override
String toString() {
  return 'SignTransactionRequest(serviceName: $serviceName, pathSuffix: $pathSuffix, description: $description, transactions: $transactions)';
}


}

/// @nodoc
abstract mixin class _$SignTransactionRequestCopyWith<$Res> implements $SignTransactionRequestCopyWith<$Res> {
  factory _$SignTransactionRequestCopyWith(_SignTransactionRequest value, $Res Function(_SignTransactionRequest) _then) = __$SignTransactionRequestCopyWithImpl;
@override @useResult
$Res call({
 String serviceName, String pathSuffix, Map<String, dynamic> description, List<SignTransactionRequestData> transactions
});




}
/// @nodoc
class __$SignTransactionRequestCopyWithImpl<$Res>
    implements _$SignTransactionRequestCopyWith<$Res> {
  __$SignTransactionRequestCopyWithImpl(this._self, this._then);

  final _SignTransactionRequest _self;
  final $Res Function(_SignTransactionRequest) _then;

/// Create a copy of SignTransactionRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? serviceName = null,Object? pathSuffix = null,Object? description = null,Object? transactions = null,}) {
  return _then(_SignTransactionRequest(
serviceName: null == serviceName ? _self.serviceName : serviceName // ignore: cast_nullable_to_non_nullable
as String,pathSuffix: null == pathSuffix ? _self.pathSuffix : pathSuffix // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self._description : description // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,transactions: null == transactions ? _self._transactions : transactions // ignore: cast_nullable_to_non_nullable
as List<SignTransactionRequestData>,
  ));
}


}

// dart format on
