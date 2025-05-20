// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remove_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RemoveServiceRequest {

 String get name;
/// Create a copy of RemoveServiceRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoveServiceRequestCopyWith<RemoveServiceRequest> get copyWith => _$RemoveServiceRequestCopyWithImpl<RemoveServiceRequest>(this as RemoveServiceRequest, _$identity);

  /// Serializes this RemoveServiceRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoveServiceRequest&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'RemoveServiceRequest(name: $name)';
}


}

/// @nodoc
abstract mixin class $RemoveServiceRequestCopyWith<$Res>  {
  factory $RemoveServiceRequestCopyWith(RemoveServiceRequest value, $Res Function(RemoveServiceRequest) _then) = _$RemoveServiceRequestCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$RemoveServiceRequestCopyWithImpl<$Res>
    implements $RemoveServiceRequestCopyWith<$Res> {
  _$RemoveServiceRequestCopyWithImpl(this._self, this._then);

  final RemoveServiceRequest _self;
  final $Res Function(RemoveServiceRequest) _then;

/// Create a copy of RemoveServiceRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _RemoveServiceRequest extends RemoveServiceRequest {
  const _RemoveServiceRequest({required this.name}): super._();
  factory _RemoveServiceRequest.fromJson(Map<String, dynamic> json) => _$RemoveServiceRequestFromJson(json);

@override final  String name;

/// Create a copy of RemoveServiceRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RemoveServiceRequestCopyWith<_RemoveServiceRequest> get copyWith => __$RemoveServiceRequestCopyWithImpl<_RemoveServiceRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RemoveServiceRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RemoveServiceRequest&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'RemoveServiceRequest(name: $name)';
}


}

/// @nodoc
abstract mixin class _$RemoveServiceRequestCopyWith<$Res> implements $RemoveServiceRequestCopyWith<$Res> {
  factory _$RemoveServiceRequestCopyWith(_RemoveServiceRequest value, $Res Function(_RemoveServiceRequest) _then) = __$RemoveServiceRequestCopyWithImpl;
@override @useResult
$Res call({
 String name
});




}
/// @nodoc
class __$RemoveServiceRequestCopyWithImpl<$Res>
    implements _$RemoveServiceRequestCopyWith<$Res> {
  __$RemoveServiceRequestCopyWithImpl(this._self, this._then);

  final _RemoveServiceRequest _self;
  final $Res Function(_RemoveServiceRequest) _then;

/// Create a copy of RemoveServiceRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(_RemoveServiceRequest(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
