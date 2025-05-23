// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'keychain_derive_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$KeychainDeriveAddressResult {

 String get address;
/// Create a copy of KeychainDeriveAddressResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KeychainDeriveAddressResultCopyWith<KeychainDeriveAddressResult> get copyWith => _$KeychainDeriveAddressResultCopyWithImpl<KeychainDeriveAddressResult>(this as KeychainDeriveAddressResult, _$identity);

  /// Serializes this KeychainDeriveAddressResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KeychainDeriveAddressResult&&(identical(other.address, address) || other.address == address));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,address);

@override
String toString() {
  return 'KeychainDeriveAddressResult(address: $address)';
}


}

/// @nodoc
abstract mixin class $KeychainDeriveAddressResultCopyWith<$Res>  {
  factory $KeychainDeriveAddressResultCopyWith(KeychainDeriveAddressResult value, $Res Function(KeychainDeriveAddressResult) _then) = _$KeychainDeriveAddressResultCopyWithImpl;
@useResult
$Res call({
 String address
});




}
/// @nodoc
class _$KeychainDeriveAddressResultCopyWithImpl<$Res>
    implements $KeychainDeriveAddressResultCopyWith<$Res> {
  _$KeychainDeriveAddressResultCopyWithImpl(this._self, this._then);

  final KeychainDeriveAddressResult _self;
  final $Res Function(KeychainDeriveAddressResult) _then;

/// Create a copy of KeychainDeriveAddressResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? address = null,}) {
  return _then(_self.copyWith(
address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _KeychainDeriveAddressResult extends KeychainDeriveAddressResult {
  const _KeychainDeriveAddressResult({required this.address}): super._();
  factory _KeychainDeriveAddressResult.fromJson(Map<String, dynamic> json) => _$KeychainDeriveAddressResultFromJson(json);

@override final  String address;

/// Create a copy of KeychainDeriveAddressResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KeychainDeriveAddressResultCopyWith<_KeychainDeriveAddressResult> get copyWith => __$KeychainDeriveAddressResultCopyWithImpl<_KeychainDeriveAddressResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KeychainDeriveAddressResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KeychainDeriveAddressResult&&(identical(other.address, address) || other.address == address));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,address);

@override
String toString() {
  return 'KeychainDeriveAddressResult(address: $address)';
}


}

/// @nodoc
abstract mixin class _$KeychainDeriveAddressResultCopyWith<$Res> implements $KeychainDeriveAddressResultCopyWith<$Res> {
  factory _$KeychainDeriveAddressResultCopyWith(_KeychainDeriveAddressResult value, $Res Function(_KeychainDeriveAddressResult) _then) = __$KeychainDeriveAddressResultCopyWithImpl;
@override @useResult
$Res call({
 String address
});




}
/// @nodoc
class __$KeychainDeriveAddressResultCopyWithImpl<$Res>
    implements _$KeychainDeriveAddressResultCopyWith<$Res> {
  __$KeychainDeriveAddressResultCopyWithImpl(this._self, this._then);

  final _KeychainDeriveAddressResult _self;
  final $Res Function(_KeychainDeriveAddressResult) _then;

/// Create a copy of KeychainDeriveAddressResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? address = null,}) {
  return _then(_KeychainDeriveAddressResult(
address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$KeychainDeriveAddressRequest {

 String get serviceName; int get index; String get pathSuffix;
/// Create a copy of KeychainDeriveAddressRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KeychainDeriveAddressRequestCopyWith<KeychainDeriveAddressRequest> get copyWith => _$KeychainDeriveAddressRequestCopyWithImpl<KeychainDeriveAddressRequest>(this as KeychainDeriveAddressRequest, _$identity);

  /// Serializes this KeychainDeriveAddressRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KeychainDeriveAddressRequest&&(identical(other.serviceName, serviceName) || other.serviceName == serviceName)&&(identical(other.index, index) || other.index == index)&&(identical(other.pathSuffix, pathSuffix) || other.pathSuffix == pathSuffix));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,serviceName,index,pathSuffix);

@override
String toString() {
  return 'KeychainDeriveAddressRequest(serviceName: $serviceName, index: $index, pathSuffix: $pathSuffix)';
}


}

/// @nodoc
abstract mixin class $KeychainDeriveAddressRequestCopyWith<$Res>  {
  factory $KeychainDeriveAddressRequestCopyWith(KeychainDeriveAddressRequest value, $Res Function(KeychainDeriveAddressRequest) _then) = _$KeychainDeriveAddressRequestCopyWithImpl;
@useResult
$Res call({
 String serviceName, int index, String pathSuffix
});




}
/// @nodoc
class _$KeychainDeriveAddressRequestCopyWithImpl<$Res>
    implements $KeychainDeriveAddressRequestCopyWith<$Res> {
  _$KeychainDeriveAddressRequestCopyWithImpl(this._self, this._then);

  final KeychainDeriveAddressRequest _self;
  final $Res Function(KeychainDeriveAddressRequest) _then;

/// Create a copy of KeychainDeriveAddressRequest
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

class _KeychainDeriveAddressRequest extends KeychainDeriveAddressRequest {
  const _KeychainDeriveAddressRequest({required this.serviceName, this.index = 0, this.pathSuffix = ''}): super._();
  factory _KeychainDeriveAddressRequest.fromJson(Map<String, dynamic> json) => _$KeychainDeriveAddressRequestFromJson(json);

@override final  String serviceName;
@override@JsonKey() final  int index;
@override@JsonKey() final  String pathSuffix;

/// Create a copy of KeychainDeriveAddressRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KeychainDeriveAddressRequestCopyWith<_KeychainDeriveAddressRequest> get copyWith => __$KeychainDeriveAddressRequestCopyWithImpl<_KeychainDeriveAddressRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KeychainDeriveAddressRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KeychainDeriveAddressRequest&&(identical(other.serviceName, serviceName) || other.serviceName == serviceName)&&(identical(other.index, index) || other.index == index)&&(identical(other.pathSuffix, pathSuffix) || other.pathSuffix == pathSuffix));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,serviceName,index,pathSuffix);

@override
String toString() {
  return 'KeychainDeriveAddressRequest(serviceName: $serviceName, index: $index, pathSuffix: $pathSuffix)';
}


}

/// @nodoc
abstract mixin class _$KeychainDeriveAddressRequestCopyWith<$Res> implements $KeychainDeriveAddressRequestCopyWith<$Res> {
  factory _$KeychainDeriveAddressRequestCopyWith(_KeychainDeriveAddressRequest value, $Res Function(_KeychainDeriveAddressRequest) _then) = __$KeychainDeriveAddressRequestCopyWithImpl;
@override @useResult
$Res call({
 String serviceName, int index, String pathSuffix
});




}
/// @nodoc
class __$KeychainDeriveAddressRequestCopyWithImpl<$Res>
    implements _$KeychainDeriveAddressRequestCopyWith<$Res> {
  __$KeychainDeriveAddressRequestCopyWithImpl(this._self, this._then);

  final _KeychainDeriveAddressRequest _self;
  final $Res Function(_KeychainDeriveAddressRequest) _then;

/// Create a copy of KeychainDeriveAddressRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? serviceName = null,Object? index = null,Object? pathSuffix = null,}) {
  return _then(_KeychainDeriveAddressRequest(
serviceName: null == serviceName ? _self.serviceName : serviceName // ignore: cast_nullable_to_non_nullable
as String,index: null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,pathSuffix: null == pathSuffix ? _self.pathSuffix : pathSuffix // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
