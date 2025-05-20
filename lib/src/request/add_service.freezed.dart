// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AddServiceRequest {

 String get name;
/// Create a copy of AddServiceRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddServiceRequestCopyWith<AddServiceRequest> get copyWith => _$AddServiceRequestCopyWithImpl<AddServiceRequest>(this as AddServiceRequest, _$identity);

  /// Serializes this AddServiceRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddServiceRequest&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'AddServiceRequest(name: $name)';
}


}

/// @nodoc
abstract mixin class $AddServiceRequestCopyWith<$Res>  {
  factory $AddServiceRequestCopyWith(AddServiceRequest value, $Res Function(AddServiceRequest) _then) = _$AddServiceRequestCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$AddServiceRequestCopyWithImpl<$Res>
    implements $AddServiceRequestCopyWith<$Res> {
  _$AddServiceRequestCopyWithImpl(this._self, this._then);

  final AddServiceRequest _self;
  final $Res Function(AddServiceRequest) _then;

/// Create a copy of AddServiceRequest
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

class _AddServiceRequest extends AddServiceRequest {
  const _AddServiceRequest({required this.name}): super._();
  factory _AddServiceRequest.fromJson(Map<String, dynamic> json) => _$AddServiceRequestFromJson(json);

@override final  String name;

/// Create a copy of AddServiceRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddServiceRequestCopyWith<_AddServiceRequest> get copyWith => __$AddServiceRequestCopyWithImpl<_AddServiceRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AddServiceRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddServiceRequest&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'AddServiceRequest(name: $name)';
}


}

/// @nodoc
abstract mixin class _$AddServiceRequestCopyWith<$Res> implements $AddServiceRequestCopyWith<$Res> {
  factory _$AddServiceRequestCopyWith(_AddServiceRequest value, $Res Function(_AddServiceRequest) _then) = __$AddServiceRequestCopyWithImpl;
@override @useResult
$Res call({
 String name
});




}
/// @nodoc
class __$AddServiceRequestCopyWithImpl<$Res>
    implements _$AddServiceRequestCopyWith<$Res> {
  __$AddServiceRequestCopyWithImpl(this._self, this._then);

  final _AddServiceRequest _self;
  final $Res Function(_AddServiceRequest) _then;

/// Create a copy of AddServiceRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(_AddServiceRequest(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
