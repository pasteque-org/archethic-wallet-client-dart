// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'encrypt_payloads.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EncryptPayloadsResult {

 List<EncryptPayloadsResultDetail> get encryptedPayloads;
/// Create a copy of EncryptPayloadsResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EncryptPayloadsResultCopyWith<EncryptPayloadsResult> get copyWith => _$EncryptPayloadsResultCopyWithImpl<EncryptPayloadsResult>(this as EncryptPayloadsResult, _$identity);

  /// Serializes this EncryptPayloadsResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EncryptPayloadsResult&&const DeepCollectionEquality().equals(other.encryptedPayloads, encryptedPayloads));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(encryptedPayloads));

@override
String toString() {
  return 'EncryptPayloadsResult(encryptedPayloads: $encryptedPayloads)';
}


}

/// @nodoc
abstract mixin class $EncryptPayloadsResultCopyWith<$Res>  {
  factory $EncryptPayloadsResultCopyWith(EncryptPayloadsResult value, $Res Function(EncryptPayloadsResult) _then) = _$EncryptPayloadsResultCopyWithImpl;
@useResult
$Res call({
 List<EncryptPayloadsResultDetail> encryptedPayloads
});




}
/// @nodoc
class _$EncryptPayloadsResultCopyWithImpl<$Res>
    implements $EncryptPayloadsResultCopyWith<$Res> {
  _$EncryptPayloadsResultCopyWithImpl(this._self, this._then);

  final EncryptPayloadsResult _self;
  final $Res Function(EncryptPayloadsResult) _then;

/// Create a copy of EncryptPayloadsResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? encryptedPayloads = null,}) {
  return _then(_self.copyWith(
encryptedPayloads: null == encryptedPayloads ? _self.encryptedPayloads : encryptedPayloads // ignore: cast_nullable_to_non_nullable
as List<EncryptPayloadsResultDetail>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _EncryptPayloadsResult extends EncryptPayloadsResult {
  const _EncryptPayloadsResult({required final  List<EncryptPayloadsResultDetail> encryptedPayloads}): _encryptedPayloads = encryptedPayloads,super._();
  factory _EncryptPayloadsResult.fromJson(Map<String, dynamic> json) => _$EncryptPayloadsResultFromJson(json);

 final  List<EncryptPayloadsResultDetail> _encryptedPayloads;
@override List<EncryptPayloadsResultDetail> get encryptedPayloads {
  if (_encryptedPayloads is EqualUnmodifiableListView) return _encryptedPayloads;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_encryptedPayloads);
}


/// Create a copy of EncryptPayloadsResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EncryptPayloadsResultCopyWith<_EncryptPayloadsResult> get copyWith => __$EncryptPayloadsResultCopyWithImpl<_EncryptPayloadsResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EncryptPayloadsResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EncryptPayloadsResult&&const DeepCollectionEquality().equals(other._encryptedPayloads, _encryptedPayloads));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_encryptedPayloads));

@override
String toString() {
  return 'EncryptPayloadsResult(encryptedPayloads: $encryptedPayloads)';
}


}

/// @nodoc
abstract mixin class _$EncryptPayloadsResultCopyWith<$Res> implements $EncryptPayloadsResultCopyWith<$Res> {
  factory _$EncryptPayloadsResultCopyWith(_EncryptPayloadsResult value, $Res Function(_EncryptPayloadsResult) _then) = __$EncryptPayloadsResultCopyWithImpl;
@override @useResult
$Res call({
 List<EncryptPayloadsResultDetail> encryptedPayloads
});




}
/// @nodoc
class __$EncryptPayloadsResultCopyWithImpl<$Res>
    implements _$EncryptPayloadsResultCopyWith<$Res> {
  __$EncryptPayloadsResultCopyWithImpl(this._self, this._then);

  final _EncryptPayloadsResult _self;
  final $Res Function(_EncryptPayloadsResult) _then;

/// Create a copy of EncryptPayloadsResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? encryptedPayloads = null,}) {
  return _then(_EncryptPayloadsResult(
encryptedPayloads: null == encryptedPayloads ? _self._encryptedPayloads : encryptedPayloads // ignore: cast_nullable_to_non_nullable
as List<EncryptPayloadsResultDetail>,
  ));
}


}


/// @nodoc
mixin _$EncryptPayloadsResultDetail {

 String get encryptedPayload;
/// Create a copy of EncryptPayloadsResultDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EncryptPayloadsResultDetailCopyWith<EncryptPayloadsResultDetail> get copyWith => _$EncryptPayloadsResultDetailCopyWithImpl<EncryptPayloadsResultDetail>(this as EncryptPayloadsResultDetail, _$identity);

  /// Serializes this EncryptPayloadsResultDetail to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EncryptPayloadsResultDetail&&(identical(other.encryptedPayload, encryptedPayload) || other.encryptedPayload == encryptedPayload));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,encryptedPayload);

@override
String toString() {
  return 'EncryptPayloadsResultDetail(encryptedPayload: $encryptedPayload)';
}


}

/// @nodoc
abstract mixin class $EncryptPayloadsResultDetailCopyWith<$Res>  {
  factory $EncryptPayloadsResultDetailCopyWith(EncryptPayloadsResultDetail value, $Res Function(EncryptPayloadsResultDetail) _then) = _$EncryptPayloadsResultDetailCopyWithImpl;
@useResult
$Res call({
 String encryptedPayload
});




}
/// @nodoc
class _$EncryptPayloadsResultDetailCopyWithImpl<$Res>
    implements $EncryptPayloadsResultDetailCopyWith<$Res> {
  _$EncryptPayloadsResultDetailCopyWithImpl(this._self, this._then);

  final EncryptPayloadsResultDetail _self;
  final $Res Function(EncryptPayloadsResultDetail) _then;

/// Create a copy of EncryptPayloadsResultDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? encryptedPayload = null,}) {
  return _then(_self.copyWith(
encryptedPayload: null == encryptedPayload ? _self.encryptedPayload : encryptedPayload // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _EncryptPayloadsResultDetail extends EncryptPayloadsResultDetail {
  const _EncryptPayloadsResultDetail({required this.encryptedPayload}): super._();
  factory _EncryptPayloadsResultDetail.fromJson(Map<String, dynamic> json) => _$EncryptPayloadsResultDetailFromJson(json);

@override final  String encryptedPayload;

/// Create a copy of EncryptPayloadsResultDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EncryptPayloadsResultDetailCopyWith<_EncryptPayloadsResultDetail> get copyWith => __$EncryptPayloadsResultDetailCopyWithImpl<_EncryptPayloadsResultDetail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EncryptPayloadsResultDetailToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EncryptPayloadsResultDetail&&(identical(other.encryptedPayload, encryptedPayload) || other.encryptedPayload == encryptedPayload));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,encryptedPayload);

@override
String toString() {
  return 'EncryptPayloadsResultDetail(encryptedPayload: $encryptedPayload)';
}


}

/// @nodoc
abstract mixin class _$EncryptPayloadsResultDetailCopyWith<$Res> implements $EncryptPayloadsResultDetailCopyWith<$Res> {
  factory _$EncryptPayloadsResultDetailCopyWith(_EncryptPayloadsResultDetail value, $Res Function(_EncryptPayloadsResultDetail) _then) = __$EncryptPayloadsResultDetailCopyWithImpl;
@override @useResult
$Res call({
 String encryptedPayload
});




}
/// @nodoc
class __$EncryptPayloadsResultDetailCopyWithImpl<$Res>
    implements _$EncryptPayloadsResultDetailCopyWith<$Res> {
  __$EncryptPayloadsResultDetailCopyWithImpl(this._self, this._then);

  final _EncryptPayloadsResultDetail _self;
  final $Res Function(_EncryptPayloadsResultDetail) _then;

/// Create a copy of EncryptPayloadsResultDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? encryptedPayload = null,}) {
  return _then(_EncryptPayloadsResultDetail(
encryptedPayload: null == encryptedPayload ? _self.encryptedPayload : encryptedPayload // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$EncryptPayloadRequestData {

 String get payload; bool get isHexa;
/// Create a copy of EncryptPayloadRequestData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EncryptPayloadRequestDataCopyWith<EncryptPayloadRequestData> get copyWith => _$EncryptPayloadRequestDataCopyWithImpl<EncryptPayloadRequestData>(this as EncryptPayloadRequestData, _$identity);

  /// Serializes this EncryptPayloadRequestData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EncryptPayloadRequestData&&(identical(other.payload, payload) || other.payload == payload)&&(identical(other.isHexa, isHexa) || other.isHexa == isHexa));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,payload,isHexa);

@override
String toString() {
  return 'EncryptPayloadRequestData(payload: $payload, isHexa: $isHexa)';
}


}

/// @nodoc
abstract mixin class $EncryptPayloadRequestDataCopyWith<$Res>  {
  factory $EncryptPayloadRequestDataCopyWith(EncryptPayloadRequestData value, $Res Function(EncryptPayloadRequestData) _then) = _$EncryptPayloadRequestDataCopyWithImpl;
@useResult
$Res call({
 String payload, bool isHexa
});




}
/// @nodoc
class _$EncryptPayloadRequestDataCopyWithImpl<$Res>
    implements $EncryptPayloadRequestDataCopyWith<$Res> {
  _$EncryptPayloadRequestDataCopyWithImpl(this._self, this._then);

  final EncryptPayloadRequestData _self;
  final $Res Function(EncryptPayloadRequestData) _then;

/// Create a copy of EncryptPayloadRequestData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? payload = null,Object? isHexa = null,}) {
  return _then(_self.copyWith(
payload: null == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as String,isHexa: null == isHexa ? _self.isHexa : isHexa // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _EncryptPayloadRequestData extends EncryptPayloadRequestData {
  const _EncryptPayloadRequestData({required this.payload, required this.isHexa}): super._();
  factory _EncryptPayloadRequestData.fromJson(Map<String, dynamic> json) => _$EncryptPayloadRequestDataFromJson(json);

@override final  String payload;
@override final  bool isHexa;

/// Create a copy of EncryptPayloadRequestData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EncryptPayloadRequestDataCopyWith<_EncryptPayloadRequestData> get copyWith => __$EncryptPayloadRequestDataCopyWithImpl<_EncryptPayloadRequestData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EncryptPayloadRequestDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EncryptPayloadRequestData&&(identical(other.payload, payload) || other.payload == payload)&&(identical(other.isHexa, isHexa) || other.isHexa == isHexa));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,payload,isHexa);

@override
String toString() {
  return 'EncryptPayloadRequestData(payload: $payload, isHexa: $isHexa)';
}


}

/// @nodoc
abstract mixin class _$EncryptPayloadRequestDataCopyWith<$Res> implements $EncryptPayloadRequestDataCopyWith<$Res> {
  factory _$EncryptPayloadRequestDataCopyWith(_EncryptPayloadRequestData value, $Res Function(_EncryptPayloadRequestData) _then) = __$EncryptPayloadRequestDataCopyWithImpl;
@override @useResult
$Res call({
 String payload, bool isHexa
});




}
/// @nodoc
class __$EncryptPayloadRequestDataCopyWithImpl<$Res>
    implements _$EncryptPayloadRequestDataCopyWith<$Res> {
  __$EncryptPayloadRequestDataCopyWithImpl(this._self, this._then);

  final _EncryptPayloadRequestData _self;
  final $Res Function(_EncryptPayloadRequestData) _then;

/// Create a copy of EncryptPayloadRequestData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? payload = null,Object? isHexa = null,}) {
  return _then(_EncryptPayloadRequestData(
payload: null == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as String,isHexa: null == isHexa ? _self.isHexa : isHexa // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$EncryptPayloadRequest {

/// Service name to identify the derivation path to use
 String get serviceName;/// Additional information to add to a service derivation path (optional - default to empty)
 String get pathSuffix;/// - List of payloads to encrypt
 List<EncryptPayloadRequestData> get payloads;
/// Create a copy of EncryptPayloadRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EncryptPayloadRequestCopyWith<EncryptPayloadRequest> get copyWith => _$EncryptPayloadRequestCopyWithImpl<EncryptPayloadRequest>(this as EncryptPayloadRequest, _$identity);

  /// Serializes this EncryptPayloadRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EncryptPayloadRequest&&(identical(other.serviceName, serviceName) || other.serviceName == serviceName)&&(identical(other.pathSuffix, pathSuffix) || other.pathSuffix == pathSuffix)&&const DeepCollectionEquality().equals(other.payloads, payloads));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,serviceName,pathSuffix,const DeepCollectionEquality().hash(payloads));

@override
String toString() {
  return 'EncryptPayloadRequest(serviceName: $serviceName, pathSuffix: $pathSuffix, payloads: $payloads)';
}


}

/// @nodoc
abstract mixin class $EncryptPayloadRequestCopyWith<$Res>  {
  factory $EncryptPayloadRequestCopyWith(EncryptPayloadRequest value, $Res Function(EncryptPayloadRequest) _then) = _$EncryptPayloadRequestCopyWithImpl;
@useResult
$Res call({
 String serviceName, String pathSuffix, List<EncryptPayloadRequestData> payloads
});




}
/// @nodoc
class _$EncryptPayloadRequestCopyWithImpl<$Res>
    implements $EncryptPayloadRequestCopyWith<$Res> {
  _$EncryptPayloadRequestCopyWithImpl(this._self, this._then);

  final EncryptPayloadRequest _self;
  final $Res Function(EncryptPayloadRequest) _then;

/// Create a copy of EncryptPayloadRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? serviceName = null,Object? pathSuffix = null,Object? payloads = null,}) {
  return _then(_self.copyWith(
serviceName: null == serviceName ? _self.serviceName : serviceName // ignore: cast_nullable_to_non_nullable
as String,pathSuffix: null == pathSuffix ? _self.pathSuffix : pathSuffix // ignore: cast_nullable_to_non_nullable
as String,payloads: null == payloads ? _self.payloads : payloads // ignore: cast_nullable_to_non_nullable
as List<EncryptPayloadRequestData>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _EncryptPayloadRequest extends EncryptPayloadRequest {
  const _EncryptPayloadRequest({required this.serviceName, this.pathSuffix = '', final  List<EncryptPayloadRequestData> payloads = const []}): _payloads = payloads,super._();
  factory _EncryptPayloadRequest.fromJson(Map<String, dynamic> json) => _$EncryptPayloadRequestFromJson(json);

/// Service name to identify the derivation path to use
@override final  String serviceName;
/// Additional information to add to a service derivation path (optional - default to empty)
@override@JsonKey() final  String pathSuffix;
/// - List of payloads to encrypt
 final  List<EncryptPayloadRequestData> _payloads;
/// - List of payloads to encrypt
@override@JsonKey() List<EncryptPayloadRequestData> get payloads {
  if (_payloads is EqualUnmodifiableListView) return _payloads;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_payloads);
}


/// Create a copy of EncryptPayloadRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EncryptPayloadRequestCopyWith<_EncryptPayloadRequest> get copyWith => __$EncryptPayloadRequestCopyWithImpl<_EncryptPayloadRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EncryptPayloadRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EncryptPayloadRequest&&(identical(other.serviceName, serviceName) || other.serviceName == serviceName)&&(identical(other.pathSuffix, pathSuffix) || other.pathSuffix == pathSuffix)&&const DeepCollectionEquality().equals(other._payloads, _payloads));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,serviceName,pathSuffix,const DeepCollectionEquality().hash(_payloads));

@override
String toString() {
  return 'EncryptPayloadRequest(serviceName: $serviceName, pathSuffix: $pathSuffix, payloads: $payloads)';
}


}

/// @nodoc
abstract mixin class _$EncryptPayloadRequestCopyWith<$Res> implements $EncryptPayloadRequestCopyWith<$Res> {
  factory _$EncryptPayloadRequestCopyWith(_EncryptPayloadRequest value, $Res Function(_EncryptPayloadRequest) _then) = __$EncryptPayloadRequestCopyWithImpl;
@override @useResult
$Res call({
 String serviceName, String pathSuffix, List<EncryptPayloadRequestData> payloads
});




}
/// @nodoc
class __$EncryptPayloadRequestCopyWithImpl<$Res>
    implements _$EncryptPayloadRequestCopyWith<$Res> {
  __$EncryptPayloadRequestCopyWithImpl(this._self, this._then);

  final _EncryptPayloadRequest _self;
  final $Res Function(_EncryptPayloadRequest) _then;

/// Create a copy of EncryptPayloadRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? serviceName = null,Object? pathSuffix = null,Object? payloads = null,}) {
  return _then(_EncryptPayloadRequest(
serviceName: null == serviceName ? _self.serviceName : serviceName // ignore: cast_nullable_to_non_nullable
as String,pathSuffix: null == pathSuffix ? _self.pathSuffix : pathSuffix // ignore: cast_nullable_to_non_nullable
as String,payloads: null == payloads ? _self._payloads : payloads // ignore: cast_nullable_to_non_nullable
as List<EncryptPayloadRequestData>,
  ));
}


}

// dart format on
