// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'keychain_derive_keypair.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$KeychainDeriveKeypairResult {

 String get publicKey;
/// Create a copy of KeychainDeriveKeypairResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KeychainDeriveKeypairResultCopyWith<KeychainDeriveKeypairResult> get copyWith => _$KeychainDeriveKeypairResultCopyWithImpl<KeychainDeriveKeypairResult>(this as KeychainDeriveKeypairResult, _$identity);

  /// Serializes this KeychainDeriveKeypairResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KeychainDeriveKeypairResult&&(identical(other.publicKey, publicKey) || other.publicKey == publicKey));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,publicKey);

@override
String toString() {
  return 'KeychainDeriveKeypairResult(publicKey: $publicKey)';
}


}

/// @nodoc
abstract mixin class $KeychainDeriveKeypairResultCopyWith<$Res>  {
  factory $KeychainDeriveKeypairResultCopyWith(KeychainDeriveKeypairResult value, $Res Function(KeychainDeriveKeypairResult) _then) = _$KeychainDeriveKeypairResultCopyWithImpl;
@useResult
$Res call({
 String publicKey
});




}
/// @nodoc
class _$KeychainDeriveKeypairResultCopyWithImpl<$Res>
    implements $KeychainDeriveKeypairResultCopyWith<$Res> {
  _$KeychainDeriveKeypairResultCopyWithImpl(this._self, this._then);

  final KeychainDeriveKeypairResult _self;
  final $Res Function(KeychainDeriveKeypairResult) _then;

/// Create a copy of KeychainDeriveKeypairResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? publicKey = null,}) {
  return _then(_self.copyWith(
publicKey: null == publicKey ? _self.publicKey : publicKey // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _KeychainDeriveKeypairResult extends KeychainDeriveKeypairResult {
  const _KeychainDeriveKeypairResult({required this.publicKey}): super._();
  factory _KeychainDeriveKeypairResult.fromJson(Map<String, dynamic> json) => _$KeychainDeriveKeypairResultFromJson(json);

@override final  String publicKey;

/// Create a copy of KeychainDeriveKeypairResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KeychainDeriveKeypairResultCopyWith<_KeychainDeriveKeypairResult> get copyWith => __$KeychainDeriveKeypairResultCopyWithImpl<_KeychainDeriveKeypairResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KeychainDeriveKeypairResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KeychainDeriveKeypairResult&&(identical(other.publicKey, publicKey) || other.publicKey == publicKey));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,publicKey);

@override
String toString() {
  return 'KeychainDeriveKeypairResult(publicKey: $publicKey)';
}


}

/// @nodoc
abstract mixin class _$KeychainDeriveKeypairResultCopyWith<$Res> implements $KeychainDeriveKeypairResultCopyWith<$Res> {
  factory _$KeychainDeriveKeypairResultCopyWith(_KeychainDeriveKeypairResult value, $Res Function(_KeychainDeriveKeypairResult) _then) = __$KeychainDeriveKeypairResultCopyWithImpl;
@override @useResult
$Res call({
 String publicKey
});




}
/// @nodoc
class __$KeychainDeriveKeypairResultCopyWithImpl<$Res>
    implements _$KeychainDeriveKeypairResultCopyWith<$Res> {
  __$KeychainDeriveKeypairResultCopyWithImpl(this._self, this._then);

  final _KeychainDeriveKeypairResult _self;
  final $Res Function(_KeychainDeriveKeypairResult) _then;

/// Create a copy of KeychainDeriveKeypairResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? publicKey = null,}) {
  return _then(_KeychainDeriveKeypairResult(
publicKey: null == publicKey ? _self.publicKey : publicKey // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$KeychainDeriveKeypairRequest {

 String get serviceName; int get index; String get pathSuffix;
/// Create a copy of KeychainDeriveKeypairRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KeychainDeriveKeypairRequestCopyWith<KeychainDeriveKeypairRequest> get copyWith => _$KeychainDeriveKeypairRequestCopyWithImpl<KeychainDeriveKeypairRequest>(this as KeychainDeriveKeypairRequest, _$identity);

  /// Serializes this KeychainDeriveKeypairRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KeychainDeriveKeypairRequest&&(identical(other.serviceName, serviceName) || other.serviceName == serviceName)&&(identical(other.index, index) || other.index == index)&&(identical(other.pathSuffix, pathSuffix) || other.pathSuffix == pathSuffix));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,serviceName,index,pathSuffix);

@override
String toString() {
  return 'KeychainDeriveKeypairRequest(serviceName: $serviceName, index: $index, pathSuffix: $pathSuffix)';
}


}

/// @nodoc
abstract mixin class $KeychainDeriveKeypairRequestCopyWith<$Res>  {
  factory $KeychainDeriveKeypairRequestCopyWith(KeychainDeriveKeypairRequest value, $Res Function(KeychainDeriveKeypairRequest) _then) = _$KeychainDeriveKeypairRequestCopyWithImpl;
@useResult
$Res call({
 String serviceName, int index, String pathSuffix
});




}
/// @nodoc
class _$KeychainDeriveKeypairRequestCopyWithImpl<$Res>
    implements $KeychainDeriveKeypairRequestCopyWith<$Res> {
  _$KeychainDeriveKeypairRequestCopyWithImpl(this._self, this._then);

  final KeychainDeriveKeypairRequest _self;
  final $Res Function(KeychainDeriveKeypairRequest) _then;

/// Create a copy of KeychainDeriveKeypairRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? serviceName = null,Object? index = null,Object? pathSuffix = null,}) {
  return _then(_self.copyWith(
serviceName: null == serviceName ? _self.serviceName : serviceName // ignore: cast_nullable_to_non_nullable
as String,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,pathSuffix: null == pathSuffix ? _self.pathSuffix : pathSuffix // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _KeychainDeriveKeypairRequest extends KeychainDeriveKeypairRequest {
  const _KeychainDeriveKeypairRequest({required this.serviceName, this.index = 0, this.pathSuffix = ''}): super._();
  factory _KeychainDeriveKeypairRequest.fromJson(Map<String, dynamic> json) => _$KeychainDeriveKeypairRequestFromJson(json);

@override final  String serviceName;
@override@JsonKey() final  int index;
@override@JsonKey() final  String pathSuffix;

/// Create a copy of KeychainDeriveKeypairRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KeychainDeriveKeypairRequestCopyWith<_KeychainDeriveKeypairRequest> get copyWith => __$KeychainDeriveKeypairRequestCopyWithImpl<_KeychainDeriveKeypairRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KeychainDeriveKeypairRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KeychainDeriveKeypairRequest&&(identical(other.serviceName, serviceName) || other.serviceName == serviceName)&&(identical(other.index, index) || other.index == index)&&(identical(other.pathSuffix, pathSuffix) || other.pathSuffix == pathSuffix));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,serviceName,index,pathSuffix);

@override
String toString() {
  return 'KeychainDeriveKeypairRequest(serviceName: $serviceName, index: $index, pathSuffix: $pathSuffix)';
}


}

/// @nodoc
abstract mixin class _$KeychainDeriveKeypairRequestCopyWith<$Res> implements $KeychainDeriveKeypairRequestCopyWith<$Res> {
  factory _$KeychainDeriveKeypairRequestCopyWith(_KeychainDeriveKeypairRequest value, $Res Function(_KeychainDeriveKeypairRequest) _then) = __$KeychainDeriveKeypairRequestCopyWithImpl;
@override @useResult
$Res call({
 String serviceName, int index, String pathSuffix
});




}
/// @nodoc
class __$KeychainDeriveKeypairRequestCopyWithImpl<$Res>
    implements _$KeychainDeriveKeypairRequestCopyWith<$Res> {
  __$KeychainDeriveKeypairRequestCopyWithImpl(this._self, this._then);

  final _KeychainDeriveKeypairRequest _self;
  final $Res Function(_KeychainDeriveKeypairRequest) _then;

/// Create a copy of KeychainDeriveKeypairRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? serviceName = null,Object? index = null,Object? pathSuffix = null,}) {
  return _then(_KeychainDeriveKeypairRequest(
serviceName: null == serviceName ? _self.serviceName : serviceName // ignore: cast_nullable_to_non_nullable
as String,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,pathSuffix: null == pathSuffix ? _self.pathSuffix : pathSuffix // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
