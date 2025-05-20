// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_payloads.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SignPayloadsResult {

 List<SignPayloadsResultDetail> get signedPayloads;
/// Create a copy of SignPayloadsResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignPayloadsResultCopyWith<SignPayloadsResult> get copyWith => _$SignPayloadsResultCopyWithImpl<SignPayloadsResult>(this as SignPayloadsResult, _$identity);

  /// Serializes this SignPayloadsResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignPayloadsResult&&const DeepCollectionEquality().equals(other.signedPayloads, signedPayloads));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(signedPayloads));

@override
String toString() {
  return 'SignPayloadsResult(signedPayloads: $signedPayloads)';
}


}

/// @nodoc
abstract mixin class $SignPayloadsResultCopyWith<$Res>  {
  factory $SignPayloadsResultCopyWith(SignPayloadsResult value, $Res Function(SignPayloadsResult) _then) = _$SignPayloadsResultCopyWithImpl;
@useResult
$Res call({
 List<SignPayloadsResultDetail> signedPayloads
});




}
/// @nodoc
class _$SignPayloadsResultCopyWithImpl<$Res>
    implements $SignPayloadsResultCopyWith<$Res> {
  _$SignPayloadsResultCopyWithImpl(this._self, this._then);

  final SignPayloadsResult _self;
  final $Res Function(SignPayloadsResult) _then;

/// Create a copy of SignPayloadsResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? signedPayloads = null,}) {
  return _then(_self.copyWith(
signedPayloads: null == signedPayloads ? _self.signedPayloads : signedPayloads // ignore: cast_nullable_to_non_nullable
as List<SignPayloadsResultDetail>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SignPayloadsResult extends SignPayloadsResult {
  const _SignPayloadsResult({required final  List<SignPayloadsResultDetail> signedPayloads}): _signedPayloads = signedPayloads,super._();
  factory _SignPayloadsResult.fromJson(Map<String, dynamic> json) => _$SignPayloadsResultFromJson(json);

 final  List<SignPayloadsResultDetail> _signedPayloads;
@override List<SignPayloadsResultDetail> get signedPayloads {
  if (_signedPayloads is EqualUnmodifiableListView) return _signedPayloads;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_signedPayloads);
}


/// Create a copy of SignPayloadsResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignPayloadsResultCopyWith<_SignPayloadsResult> get copyWith => __$SignPayloadsResultCopyWithImpl<_SignPayloadsResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignPayloadsResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignPayloadsResult&&const DeepCollectionEquality().equals(other._signedPayloads, _signedPayloads));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_signedPayloads));

@override
String toString() {
  return 'SignPayloadsResult(signedPayloads: $signedPayloads)';
}


}

/// @nodoc
abstract mixin class _$SignPayloadsResultCopyWith<$Res> implements $SignPayloadsResultCopyWith<$Res> {
  factory _$SignPayloadsResultCopyWith(_SignPayloadsResult value, $Res Function(_SignPayloadsResult) _then) = __$SignPayloadsResultCopyWithImpl;
@override @useResult
$Res call({
 List<SignPayloadsResultDetail> signedPayloads
});




}
/// @nodoc
class __$SignPayloadsResultCopyWithImpl<$Res>
    implements _$SignPayloadsResultCopyWith<$Res> {
  __$SignPayloadsResultCopyWithImpl(this._self, this._then);

  final _SignPayloadsResult _self;
  final $Res Function(_SignPayloadsResult) _then;

/// Create a copy of SignPayloadsResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? signedPayloads = null,}) {
  return _then(_SignPayloadsResult(
signedPayloads: null == signedPayloads ? _self._signedPayloads : signedPayloads // ignore: cast_nullable_to_non_nullable
as List<SignPayloadsResultDetail>,
  ));
}


}


/// @nodoc
mixin _$SignPayloadsResultDetail {

/// Signature of payload
 String get signedPayload;
/// Create a copy of SignPayloadsResultDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignPayloadsResultDetailCopyWith<SignPayloadsResultDetail> get copyWith => _$SignPayloadsResultDetailCopyWithImpl<SignPayloadsResultDetail>(this as SignPayloadsResultDetail, _$identity);

  /// Serializes this SignPayloadsResultDetail to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignPayloadsResultDetail&&(identical(other.signedPayload, signedPayload) || other.signedPayload == signedPayload));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,signedPayload);

@override
String toString() {
  return 'SignPayloadsResultDetail(signedPayload: $signedPayload)';
}


}

/// @nodoc
abstract mixin class $SignPayloadsResultDetailCopyWith<$Res>  {
  factory $SignPayloadsResultDetailCopyWith(SignPayloadsResultDetail value, $Res Function(SignPayloadsResultDetail) _then) = _$SignPayloadsResultDetailCopyWithImpl;
@useResult
$Res call({
 String signedPayload
});




}
/// @nodoc
class _$SignPayloadsResultDetailCopyWithImpl<$Res>
    implements $SignPayloadsResultDetailCopyWith<$Res> {
  _$SignPayloadsResultDetailCopyWithImpl(this._self, this._then);

  final SignPayloadsResultDetail _self;
  final $Res Function(SignPayloadsResultDetail) _then;

/// Create a copy of SignPayloadsResultDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? signedPayload = null,}) {
  return _then(_self.copyWith(
signedPayload: null == signedPayload ? _self.signedPayload : signedPayload // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SignPayloadsResultDetail extends SignPayloadsResultDetail {
  const _SignPayloadsResultDetail({required this.signedPayload}): super._();
  factory _SignPayloadsResultDetail.fromJson(Map<String, dynamic> json) => _$SignPayloadsResultDetailFromJson(json);

/// Signature of payload
@override final  String signedPayload;

/// Create a copy of SignPayloadsResultDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignPayloadsResultDetailCopyWith<_SignPayloadsResultDetail> get copyWith => __$SignPayloadsResultDetailCopyWithImpl<_SignPayloadsResultDetail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignPayloadsResultDetailToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignPayloadsResultDetail&&(identical(other.signedPayload, signedPayload) || other.signedPayload == signedPayload));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,signedPayload);

@override
String toString() {
  return 'SignPayloadsResultDetail(signedPayload: $signedPayload)';
}


}

/// @nodoc
abstract mixin class _$SignPayloadsResultDetailCopyWith<$Res> implements $SignPayloadsResultDetailCopyWith<$Res> {
  factory _$SignPayloadsResultDetailCopyWith(_SignPayloadsResultDetail value, $Res Function(_SignPayloadsResultDetail) _then) = __$SignPayloadsResultDetailCopyWithImpl;
@override @useResult
$Res call({
 String signedPayload
});




}
/// @nodoc
class __$SignPayloadsResultDetailCopyWithImpl<$Res>
    implements _$SignPayloadsResultDetailCopyWith<$Res> {
  __$SignPayloadsResultDetailCopyWithImpl(this._self, this._then);

  final _SignPayloadsResultDetail _self;
  final $Res Function(_SignPayloadsResultDetail) _then;

/// Create a copy of SignPayloadsResultDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? signedPayload = null,}) {
  return _then(_SignPayloadsResultDetail(
signedPayload: null == signedPayload ? _self.signedPayload : signedPayload // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$SignPayloadRequestData {

 String get payload; bool get isHexa;
/// Create a copy of SignPayloadRequestData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignPayloadRequestDataCopyWith<SignPayloadRequestData> get copyWith => _$SignPayloadRequestDataCopyWithImpl<SignPayloadRequestData>(this as SignPayloadRequestData, _$identity);

  /// Serializes this SignPayloadRequestData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignPayloadRequestData&&(identical(other.payload, payload) || other.payload == payload)&&(identical(other.isHexa, isHexa) || other.isHexa == isHexa));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,payload,isHexa);

@override
String toString() {
  return 'SignPayloadRequestData(payload: $payload, isHexa: $isHexa)';
}


}

/// @nodoc
abstract mixin class $SignPayloadRequestDataCopyWith<$Res>  {
  factory $SignPayloadRequestDataCopyWith(SignPayloadRequestData value, $Res Function(SignPayloadRequestData) _then) = _$SignPayloadRequestDataCopyWithImpl;
@useResult
$Res call({
 String payload, bool isHexa
});




}
/// @nodoc
class _$SignPayloadRequestDataCopyWithImpl<$Res>
    implements $SignPayloadRequestDataCopyWith<$Res> {
  _$SignPayloadRequestDataCopyWithImpl(this._self, this._then);

  final SignPayloadRequestData _self;
  final $Res Function(SignPayloadRequestData) _then;

/// Create a copy of SignPayloadRequestData
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

class _SignPayloadRequestData extends SignPayloadRequestData {
  const _SignPayloadRequestData({required this.payload, required this.isHexa}): super._();
  factory _SignPayloadRequestData.fromJson(Map<String, dynamic> json) => _$SignPayloadRequestDataFromJson(json);

@override final  String payload;
@override final  bool isHexa;

/// Create a copy of SignPayloadRequestData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignPayloadRequestDataCopyWith<_SignPayloadRequestData> get copyWith => __$SignPayloadRequestDataCopyWithImpl<_SignPayloadRequestData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignPayloadRequestDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignPayloadRequestData&&(identical(other.payload, payload) || other.payload == payload)&&(identical(other.isHexa, isHexa) || other.isHexa == isHexa));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,payload,isHexa);

@override
String toString() {
  return 'SignPayloadRequestData(payload: $payload, isHexa: $isHexa)';
}


}

/// @nodoc
abstract mixin class _$SignPayloadRequestDataCopyWith<$Res> implements $SignPayloadRequestDataCopyWith<$Res> {
  factory _$SignPayloadRequestDataCopyWith(_SignPayloadRequestData value, $Res Function(_SignPayloadRequestData) _then) = __$SignPayloadRequestDataCopyWithImpl;
@override @useResult
$Res call({
 String payload, bool isHexa
});




}
/// @nodoc
class __$SignPayloadRequestDataCopyWithImpl<$Res>
    implements _$SignPayloadRequestDataCopyWith<$Res> {
  __$SignPayloadRequestDataCopyWithImpl(this._self, this._then);

  final _SignPayloadRequestData _self;
  final $Res Function(_SignPayloadRequestData) _then;

/// Create a copy of SignPayloadRequestData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? payload = null,Object? isHexa = null,}) {
  return _then(_SignPayloadRequestData(
payload: null == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as String,isHexa: null == isHexa ? _self.isHexa : isHexa // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$SignPayloadRequest {

/// Service name to identify the derivation path to use
 String get serviceName;/// Additional information to add to a service derivation path (optional - default to empty)
 String get pathSuffix;/// Description to explain the signature in multiple languages (key=Locale, value=description)
 Map<String, dynamic> get description;/// - List of payloads to sign
 List<SignPayloadRequestData> get payloads;
/// Create a copy of SignPayloadRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignPayloadRequestCopyWith<SignPayloadRequest> get copyWith => _$SignPayloadRequestCopyWithImpl<SignPayloadRequest>(this as SignPayloadRequest, _$identity);

  /// Serializes this SignPayloadRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignPayloadRequest&&(identical(other.serviceName, serviceName) || other.serviceName == serviceName)&&(identical(other.pathSuffix, pathSuffix) || other.pathSuffix == pathSuffix)&&const DeepCollectionEquality().equals(other.description, description)&&const DeepCollectionEquality().equals(other.payloads, payloads));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,serviceName,pathSuffix,const DeepCollectionEquality().hash(description),const DeepCollectionEquality().hash(payloads));

@override
String toString() {
  return 'SignPayloadRequest(serviceName: $serviceName, pathSuffix: $pathSuffix, description: $description, payloads: $payloads)';
}


}

/// @nodoc
abstract mixin class $SignPayloadRequestCopyWith<$Res>  {
  factory $SignPayloadRequestCopyWith(SignPayloadRequest value, $Res Function(SignPayloadRequest) _then) = _$SignPayloadRequestCopyWithImpl;
@useResult
$Res call({
 String serviceName, String pathSuffix, Map<String, dynamic> description, List<SignPayloadRequestData> payloads
});




}
/// @nodoc
class _$SignPayloadRequestCopyWithImpl<$Res>
    implements $SignPayloadRequestCopyWith<$Res> {
  _$SignPayloadRequestCopyWithImpl(this._self, this._then);

  final SignPayloadRequest _self;
  final $Res Function(SignPayloadRequest) _then;

/// Create a copy of SignPayloadRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? serviceName = null,Object? pathSuffix = null,Object? description = null,Object? payloads = null,}) {
  return _then(_self.copyWith(
serviceName: null == serviceName ? _self.serviceName : serviceName // ignore: cast_nullable_to_non_nullable
as String,pathSuffix: null == pathSuffix ? _self.pathSuffix : pathSuffix // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,payloads: null == payloads ? _self.payloads : payloads // ignore: cast_nullable_to_non_nullable
as List<SignPayloadRequestData>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SignPayloadRequest extends SignPayloadRequest {
  const _SignPayloadRequest({required this.serviceName, this.pathSuffix = '', final  Map<String, dynamic> description = const {}, final  List<SignPayloadRequestData> payloads = const []}): _description = description,_payloads = payloads,super._();
  factory _SignPayloadRequest.fromJson(Map<String, dynamic> json) => _$SignPayloadRequestFromJson(json);

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

/// - List of payloads to sign
 final  List<SignPayloadRequestData> _payloads;
/// - List of payloads to sign
@override@JsonKey() List<SignPayloadRequestData> get payloads {
  if (_payloads is EqualUnmodifiableListView) return _payloads;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_payloads);
}


/// Create a copy of SignPayloadRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignPayloadRequestCopyWith<_SignPayloadRequest> get copyWith => __$SignPayloadRequestCopyWithImpl<_SignPayloadRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SignPayloadRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignPayloadRequest&&(identical(other.serviceName, serviceName) || other.serviceName == serviceName)&&(identical(other.pathSuffix, pathSuffix) || other.pathSuffix == pathSuffix)&&const DeepCollectionEquality().equals(other._description, _description)&&const DeepCollectionEquality().equals(other._payloads, _payloads));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,serviceName,pathSuffix,const DeepCollectionEquality().hash(_description),const DeepCollectionEquality().hash(_payloads));

@override
String toString() {
  return 'SignPayloadRequest(serviceName: $serviceName, pathSuffix: $pathSuffix, description: $description, payloads: $payloads)';
}


}

/// @nodoc
abstract mixin class _$SignPayloadRequestCopyWith<$Res> implements $SignPayloadRequestCopyWith<$Res> {
  factory _$SignPayloadRequestCopyWith(_SignPayloadRequest value, $Res Function(_SignPayloadRequest) _then) = __$SignPayloadRequestCopyWithImpl;
@override @useResult
$Res call({
 String serviceName, String pathSuffix, Map<String, dynamic> description, List<SignPayloadRequestData> payloads
});




}
/// @nodoc
class __$SignPayloadRequestCopyWithImpl<$Res>
    implements _$SignPayloadRequestCopyWith<$Res> {
  __$SignPayloadRequestCopyWithImpl(this._self, this._then);

  final _SignPayloadRequest _self;
  final $Res Function(_SignPayloadRequest) _then;

/// Create a copy of SignPayloadRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? serviceName = null,Object? pathSuffix = null,Object? description = null,Object? payloads = null,}) {
  return _then(_SignPayloadRequest(
serviceName: null == serviceName ? _self.serviceName : serviceName // ignore: cast_nullable_to_non_nullable
as String,pathSuffix: null == pathSuffix ? _self.pathSuffix : pathSuffix // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self._description : description // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,payloads: null == payloads ? _self._payloads : payloads // ignore: cast_nullable_to_non_nullable
as List<SignPayloadRequestData>,
  ));
}


}

// dart format on
