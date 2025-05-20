// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'decrypt_payloads.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DecryptPayloadsResult {

 List<DecryptPayloadsResultDetail> get decryptedPayloads;
/// Create a copy of DecryptPayloadsResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DecryptPayloadsResultCopyWith<DecryptPayloadsResult> get copyWith => _$DecryptPayloadsResultCopyWithImpl<DecryptPayloadsResult>(this as DecryptPayloadsResult, _$identity);

  /// Serializes this DecryptPayloadsResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DecryptPayloadsResult&&const DeepCollectionEquality().equals(other.decryptedPayloads, decryptedPayloads));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(decryptedPayloads));

@override
String toString() {
  return 'DecryptPayloadsResult(decryptedPayloads: $decryptedPayloads)';
}


}

/// @nodoc
abstract mixin class $DecryptPayloadsResultCopyWith<$Res>  {
  factory $DecryptPayloadsResultCopyWith(DecryptPayloadsResult value, $Res Function(DecryptPayloadsResult) _then) = _$DecryptPayloadsResultCopyWithImpl;
@useResult
$Res call({
 List<DecryptPayloadsResultDetail> decryptedPayloads
});




}
/// @nodoc
class _$DecryptPayloadsResultCopyWithImpl<$Res>
    implements $DecryptPayloadsResultCopyWith<$Res> {
  _$DecryptPayloadsResultCopyWithImpl(this._self, this._then);

  final DecryptPayloadsResult _self;
  final $Res Function(DecryptPayloadsResult) _then;

/// Create a copy of DecryptPayloadsResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? decryptedPayloads = null,}) {
  return _then(_self.copyWith(
decryptedPayloads: null == decryptedPayloads ? _self.decryptedPayloads : decryptedPayloads // ignore: cast_nullable_to_non_nullable
as List<DecryptPayloadsResultDetail>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _DecryptPayloadsResult extends DecryptPayloadsResult {
  const _DecryptPayloadsResult({required final  List<DecryptPayloadsResultDetail> decryptedPayloads}): _decryptedPayloads = decryptedPayloads,super._();
  factory _DecryptPayloadsResult.fromJson(Map<String, dynamic> json) => _$DecryptPayloadsResultFromJson(json);

 final  List<DecryptPayloadsResultDetail> _decryptedPayloads;
@override List<DecryptPayloadsResultDetail> get decryptedPayloads {
  if (_decryptedPayloads is EqualUnmodifiableListView) return _decryptedPayloads;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_decryptedPayloads);
}


/// Create a copy of DecryptPayloadsResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DecryptPayloadsResultCopyWith<_DecryptPayloadsResult> get copyWith => __$DecryptPayloadsResultCopyWithImpl<_DecryptPayloadsResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DecryptPayloadsResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DecryptPayloadsResult&&const DeepCollectionEquality().equals(other._decryptedPayloads, _decryptedPayloads));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_decryptedPayloads));

@override
String toString() {
  return 'DecryptPayloadsResult(decryptedPayloads: $decryptedPayloads)';
}


}

/// @nodoc
abstract mixin class _$DecryptPayloadsResultCopyWith<$Res> implements $DecryptPayloadsResultCopyWith<$Res> {
  factory _$DecryptPayloadsResultCopyWith(_DecryptPayloadsResult value, $Res Function(_DecryptPayloadsResult) _then) = __$DecryptPayloadsResultCopyWithImpl;
@override @useResult
$Res call({
 List<DecryptPayloadsResultDetail> decryptedPayloads
});




}
/// @nodoc
class __$DecryptPayloadsResultCopyWithImpl<$Res>
    implements _$DecryptPayloadsResultCopyWith<$Res> {
  __$DecryptPayloadsResultCopyWithImpl(this._self, this._then);

  final _DecryptPayloadsResult _self;
  final $Res Function(_DecryptPayloadsResult) _then;

/// Create a copy of DecryptPayloadsResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? decryptedPayloads = null,}) {
  return _then(_DecryptPayloadsResult(
decryptedPayloads: null == decryptedPayloads ? _self._decryptedPayloads : decryptedPayloads // ignore: cast_nullable_to_non_nullable
as List<DecryptPayloadsResultDetail>,
  ));
}


}


/// @nodoc
mixin _$DecryptPayloadsResultDetail {

 String get decryptedPayload;
/// Create a copy of DecryptPayloadsResultDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DecryptPayloadsResultDetailCopyWith<DecryptPayloadsResultDetail> get copyWith => _$DecryptPayloadsResultDetailCopyWithImpl<DecryptPayloadsResultDetail>(this as DecryptPayloadsResultDetail, _$identity);

  /// Serializes this DecryptPayloadsResultDetail to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DecryptPayloadsResultDetail&&(identical(other.decryptedPayload, decryptedPayload) || other.decryptedPayload == decryptedPayload));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,decryptedPayload);

@override
String toString() {
  return 'DecryptPayloadsResultDetail(decryptedPayload: $decryptedPayload)';
}


}

/// @nodoc
abstract mixin class $DecryptPayloadsResultDetailCopyWith<$Res>  {
  factory $DecryptPayloadsResultDetailCopyWith(DecryptPayloadsResultDetail value, $Res Function(DecryptPayloadsResultDetail) _then) = _$DecryptPayloadsResultDetailCopyWithImpl;
@useResult
$Res call({
 String decryptedPayload
});




}
/// @nodoc
class _$DecryptPayloadsResultDetailCopyWithImpl<$Res>
    implements $DecryptPayloadsResultDetailCopyWith<$Res> {
  _$DecryptPayloadsResultDetailCopyWithImpl(this._self, this._then);

  final DecryptPayloadsResultDetail _self;
  final $Res Function(DecryptPayloadsResultDetail) _then;

/// Create a copy of DecryptPayloadsResultDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? decryptedPayload = null,}) {
  return _then(_self.copyWith(
decryptedPayload: null == decryptedPayload ? _self.decryptedPayload : decryptedPayload // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _DecryptPayloadsResultDetail extends DecryptPayloadsResultDetail {
  const _DecryptPayloadsResultDetail({required this.decryptedPayload}): super._();
  factory _DecryptPayloadsResultDetail.fromJson(Map<String, dynamic> json) => _$DecryptPayloadsResultDetailFromJson(json);

@override final  String decryptedPayload;

/// Create a copy of DecryptPayloadsResultDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DecryptPayloadsResultDetailCopyWith<_DecryptPayloadsResultDetail> get copyWith => __$DecryptPayloadsResultDetailCopyWithImpl<_DecryptPayloadsResultDetail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DecryptPayloadsResultDetailToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DecryptPayloadsResultDetail&&(identical(other.decryptedPayload, decryptedPayload) || other.decryptedPayload == decryptedPayload));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,decryptedPayload);

@override
String toString() {
  return 'DecryptPayloadsResultDetail(decryptedPayload: $decryptedPayload)';
}


}

/// @nodoc
abstract mixin class _$DecryptPayloadsResultDetailCopyWith<$Res> implements $DecryptPayloadsResultDetailCopyWith<$Res> {
  factory _$DecryptPayloadsResultDetailCopyWith(_DecryptPayloadsResultDetail value, $Res Function(_DecryptPayloadsResultDetail) _then) = __$DecryptPayloadsResultDetailCopyWithImpl;
@override @useResult
$Res call({
 String decryptedPayload
});




}
/// @nodoc
class __$DecryptPayloadsResultDetailCopyWithImpl<$Res>
    implements _$DecryptPayloadsResultDetailCopyWith<$Res> {
  __$DecryptPayloadsResultDetailCopyWithImpl(this._self, this._then);

  final _DecryptPayloadsResultDetail _self;
  final $Res Function(_DecryptPayloadsResultDetail) _then;

/// Create a copy of DecryptPayloadsResultDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? decryptedPayload = null,}) {
  return _then(_DecryptPayloadsResultDetail(
decryptedPayload: null == decryptedPayload ? _self.decryptedPayload : decryptedPayload // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$DecryptPayloadRequestData {

 String get payload; bool get isHexa;
/// Create a copy of DecryptPayloadRequestData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DecryptPayloadRequestDataCopyWith<DecryptPayloadRequestData> get copyWith => _$DecryptPayloadRequestDataCopyWithImpl<DecryptPayloadRequestData>(this as DecryptPayloadRequestData, _$identity);

  /// Serializes this DecryptPayloadRequestData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DecryptPayloadRequestData&&(identical(other.payload, payload) || other.payload == payload)&&(identical(other.isHexa, isHexa) || other.isHexa == isHexa));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,payload,isHexa);

@override
String toString() {
  return 'DecryptPayloadRequestData(payload: $payload, isHexa: $isHexa)';
}


}

/// @nodoc
abstract mixin class $DecryptPayloadRequestDataCopyWith<$Res>  {
  factory $DecryptPayloadRequestDataCopyWith(DecryptPayloadRequestData value, $Res Function(DecryptPayloadRequestData) _then) = _$DecryptPayloadRequestDataCopyWithImpl;
@useResult
$Res call({
 String payload, bool isHexa
});




}
/// @nodoc
class _$DecryptPayloadRequestDataCopyWithImpl<$Res>
    implements $DecryptPayloadRequestDataCopyWith<$Res> {
  _$DecryptPayloadRequestDataCopyWithImpl(this._self, this._then);

  final DecryptPayloadRequestData _self;
  final $Res Function(DecryptPayloadRequestData) _then;

/// Create a copy of DecryptPayloadRequestData
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

class _DecryptPayloadRequestData extends DecryptPayloadRequestData {
  const _DecryptPayloadRequestData({required this.payload, required this.isHexa}): super._();
  factory _DecryptPayloadRequestData.fromJson(Map<String, dynamic> json) => _$DecryptPayloadRequestDataFromJson(json);

@override final  String payload;
@override final  bool isHexa;

/// Create a copy of DecryptPayloadRequestData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DecryptPayloadRequestDataCopyWith<_DecryptPayloadRequestData> get copyWith => __$DecryptPayloadRequestDataCopyWithImpl<_DecryptPayloadRequestData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DecryptPayloadRequestDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DecryptPayloadRequestData&&(identical(other.payload, payload) || other.payload == payload)&&(identical(other.isHexa, isHexa) || other.isHexa == isHexa));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,payload,isHexa);

@override
String toString() {
  return 'DecryptPayloadRequestData(payload: $payload, isHexa: $isHexa)';
}


}

/// @nodoc
abstract mixin class _$DecryptPayloadRequestDataCopyWith<$Res> implements $DecryptPayloadRequestDataCopyWith<$Res> {
  factory _$DecryptPayloadRequestDataCopyWith(_DecryptPayloadRequestData value, $Res Function(_DecryptPayloadRequestData) _then) = __$DecryptPayloadRequestDataCopyWithImpl;
@override @useResult
$Res call({
 String payload, bool isHexa
});




}
/// @nodoc
class __$DecryptPayloadRequestDataCopyWithImpl<$Res>
    implements _$DecryptPayloadRequestDataCopyWith<$Res> {
  __$DecryptPayloadRequestDataCopyWithImpl(this._self, this._then);

  final _DecryptPayloadRequestData _self;
  final $Res Function(_DecryptPayloadRequestData) _then;

/// Create a copy of DecryptPayloadRequestData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? payload = null,Object? isHexa = null,}) {
  return _then(_DecryptPayloadRequestData(
payload: null == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as String,isHexa: null == isHexa ? _self.isHexa : isHexa // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$DecryptPayloadRequest {

/// Service name to identify the derivation path to use
 String get serviceName;/// Additional information to add to a service derivation path (optional - default to empty)
 String get pathSuffix;/// Description to explain the decryption in multiple languages (key=Locale, value=description)
 Map<String, dynamic> get description;/// - List of payloads to decrypt
 List<DecryptPayloadRequestData> get payloads;
/// Create a copy of DecryptPayloadRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DecryptPayloadRequestCopyWith<DecryptPayloadRequest> get copyWith => _$DecryptPayloadRequestCopyWithImpl<DecryptPayloadRequest>(this as DecryptPayloadRequest, _$identity);

  /// Serializes this DecryptPayloadRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DecryptPayloadRequest&&(identical(other.serviceName, serviceName) || other.serviceName == serviceName)&&(identical(other.pathSuffix, pathSuffix) || other.pathSuffix == pathSuffix)&&const DeepCollectionEquality().equals(other.description, description)&&const DeepCollectionEquality().equals(other.payloads, payloads));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,serviceName,pathSuffix,const DeepCollectionEquality().hash(description),const DeepCollectionEquality().hash(payloads));

@override
String toString() {
  return 'DecryptPayloadRequest(serviceName: $serviceName, pathSuffix: $pathSuffix, description: $description, payloads: $payloads)';
}


}

/// @nodoc
abstract mixin class $DecryptPayloadRequestCopyWith<$Res>  {
  factory $DecryptPayloadRequestCopyWith(DecryptPayloadRequest value, $Res Function(DecryptPayloadRequest) _then) = _$DecryptPayloadRequestCopyWithImpl;
@useResult
$Res call({
 String serviceName, String pathSuffix, Map<String, dynamic> description, List<DecryptPayloadRequestData> payloads
});




}
/// @nodoc
class _$DecryptPayloadRequestCopyWithImpl<$Res>
    implements $DecryptPayloadRequestCopyWith<$Res> {
  _$DecryptPayloadRequestCopyWithImpl(this._self, this._then);

  final DecryptPayloadRequest _self;
  final $Res Function(DecryptPayloadRequest) _then;

/// Create a copy of DecryptPayloadRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? serviceName = null,Object? pathSuffix = null,Object? description = null,Object? payloads = null,}) {
  return _then(_self.copyWith(
serviceName: null == serviceName ? _self.serviceName : serviceName // ignore: cast_nullable_to_non_nullable
as String,pathSuffix: null == pathSuffix ? _self.pathSuffix : pathSuffix // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,payloads: null == payloads ? _self.payloads : payloads // ignore: cast_nullable_to_non_nullable
as List<DecryptPayloadRequestData>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _DecryptPayloadRequest extends DecryptPayloadRequest {
  const _DecryptPayloadRequest({required this.serviceName, this.pathSuffix = '', final  Map<String, dynamic> description = const {}, final  List<DecryptPayloadRequestData> payloads = const []}): _description = description,_payloads = payloads,super._();
  factory _DecryptPayloadRequest.fromJson(Map<String, dynamic> json) => _$DecryptPayloadRequestFromJson(json);

/// Service name to identify the derivation path to use
@override final  String serviceName;
/// Additional information to add to a service derivation path (optional - default to empty)
@override@JsonKey() final  String pathSuffix;
/// Description to explain the decryption in multiple languages (key=Locale, value=description)
 final  Map<String, dynamic> _description;
/// Description to explain the decryption in multiple languages (key=Locale, value=description)
@override@JsonKey() Map<String, dynamic> get description {
  if (_description is EqualUnmodifiableMapView) return _description;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_description);
}

/// - List of payloads to decrypt
 final  List<DecryptPayloadRequestData> _payloads;
/// - List of payloads to decrypt
@override@JsonKey() List<DecryptPayloadRequestData> get payloads {
  if (_payloads is EqualUnmodifiableListView) return _payloads;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_payloads);
}


/// Create a copy of DecryptPayloadRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DecryptPayloadRequestCopyWith<_DecryptPayloadRequest> get copyWith => __$DecryptPayloadRequestCopyWithImpl<_DecryptPayloadRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DecryptPayloadRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DecryptPayloadRequest&&(identical(other.serviceName, serviceName) || other.serviceName == serviceName)&&(identical(other.pathSuffix, pathSuffix) || other.pathSuffix == pathSuffix)&&const DeepCollectionEquality().equals(other._description, _description)&&const DeepCollectionEquality().equals(other._payloads, _payloads));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,serviceName,pathSuffix,const DeepCollectionEquality().hash(_description),const DeepCollectionEquality().hash(_payloads));

@override
String toString() {
  return 'DecryptPayloadRequest(serviceName: $serviceName, pathSuffix: $pathSuffix, description: $description, payloads: $payloads)';
}


}

/// @nodoc
abstract mixin class _$DecryptPayloadRequestCopyWith<$Res> implements $DecryptPayloadRequestCopyWith<$Res> {
  factory _$DecryptPayloadRequestCopyWith(_DecryptPayloadRequest value, $Res Function(_DecryptPayloadRequest) _then) = __$DecryptPayloadRequestCopyWithImpl;
@override @useResult
$Res call({
 String serviceName, String pathSuffix, Map<String, dynamic> description, List<DecryptPayloadRequestData> payloads
});




}
/// @nodoc
class __$DecryptPayloadRequestCopyWithImpl<$Res>
    implements _$DecryptPayloadRequestCopyWith<$Res> {
  __$DecryptPayloadRequestCopyWithImpl(this._self, this._then);

  final _DecryptPayloadRequest _self;
  final $Res Function(_DecryptPayloadRequest) _then;

/// Create a copy of DecryptPayloadRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? serviceName = null,Object? pathSuffix = null,Object? description = null,Object? payloads = null,}) {
  return _then(_DecryptPayloadRequest(
serviceName: null == serviceName ? _self.serviceName : serviceName // ignore: cast_nullable_to_non_nullable
as String,pathSuffix: null == pathSuffix ? _self.pathSuffix : pathSuffix // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self._description : description // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,payloads: null == payloads ? _self._payloads : payloads // ignore: cast_nullable_to_non_nullable
as List<DecryptPayloadRequestData>,
  ));
}


}

// dart format on
