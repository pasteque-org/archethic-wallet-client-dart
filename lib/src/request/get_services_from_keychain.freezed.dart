// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_services_from_keychain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetServicesFromKeychainResult {

 List<Service> get services;
/// Create a copy of GetServicesFromKeychainResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetServicesFromKeychainResultCopyWith<GetServicesFromKeychainResult> get copyWith => _$GetServicesFromKeychainResultCopyWithImpl<GetServicesFromKeychainResult>(this as GetServicesFromKeychainResult, _$identity);

  /// Serializes this GetServicesFromKeychainResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetServicesFromKeychainResult&&const DeepCollectionEquality().equals(other.services, services));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(services));

@override
String toString() {
  return 'GetServicesFromKeychainResult(services: $services)';
}


}

/// @nodoc
abstract mixin class $GetServicesFromKeychainResultCopyWith<$Res>  {
  factory $GetServicesFromKeychainResultCopyWith(GetServicesFromKeychainResult value, $Res Function(GetServicesFromKeychainResult) _then) = _$GetServicesFromKeychainResultCopyWithImpl;
@useResult
$Res call({
 List<Service> services
});




}
/// @nodoc
class _$GetServicesFromKeychainResultCopyWithImpl<$Res>
    implements $GetServicesFromKeychainResultCopyWith<$Res> {
  _$GetServicesFromKeychainResultCopyWithImpl(this._self, this._then);

  final GetServicesFromKeychainResult _self;
  final $Res Function(GetServicesFromKeychainResult) _then;

/// Create a copy of GetServicesFromKeychainResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? services = null,}) {
  return _then(_self.copyWith(
services: null == services ? _self.services : services // ignore: cast_nullable_to_non_nullable
as List<Service>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _GetServicesFromKeychainResult extends GetServicesFromKeychainResult {
  const _GetServicesFromKeychainResult({required final  List<Service> services}): _services = services,super._();
  factory _GetServicesFromKeychainResult.fromJson(Map<String, dynamic> json) => _$GetServicesFromKeychainResultFromJson(json);

 final  List<Service> _services;
@override List<Service> get services {
  if (_services is EqualUnmodifiableListView) return _services;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_services);
}


/// Create a copy of GetServicesFromKeychainResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetServicesFromKeychainResultCopyWith<_GetServicesFromKeychainResult> get copyWith => __$GetServicesFromKeychainResultCopyWithImpl<_GetServicesFromKeychainResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetServicesFromKeychainResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetServicesFromKeychainResult&&const DeepCollectionEquality().equals(other._services, _services));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_services));

@override
String toString() {
  return 'GetServicesFromKeychainResult(services: $services)';
}


}

/// @nodoc
abstract mixin class _$GetServicesFromKeychainResultCopyWith<$Res> implements $GetServicesFromKeychainResultCopyWith<$Res> {
  factory _$GetServicesFromKeychainResultCopyWith(_GetServicesFromKeychainResult value, $Res Function(_GetServicesFromKeychainResult) _then) = __$GetServicesFromKeychainResultCopyWithImpl;
@override @useResult
$Res call({
 List<Service> services
});




}
/// @nodoc
class __$GetServicesFromKeychainResultCopyWithImpl<$Res>
    implements _$GetServicesFromKeychainResultCopyWith<$Res> {
  __$GetServicesFromKeychainResultCopyWithImpl(this._self, this._then);

  final _GetServicesFromKeychainResult _self;
  final $Res Function(_GetServicesFromKeychainResult) _then;

/// Create a copy of GetServicesFromKeychainResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? services = null,}) {
  return _then(_GetServicesFromKeychainResult(
services: null == services ? _self._services : services // ignore: cast_nullable_to_non_nullable
as List<Service>,
  ));
}


}


/// @nodoc
mixin _$GetServicesFromKeychainRequest {



  /// Serializes this GetServicesFromKeychainRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetServicesFromKeychainRequest);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetServicesFromKeychainRequest()';
}


}

/// @nodoc
class $GetServicesFromKeychainRequestCopyWith<$Res>  {
$GetServicesFromKeychainRequestCopyWith(GetServicesFromKeychainRequest _, $Res Function(GetServicesFromKeychainRequest) __);
}


/// @nodoc
@JsonSerializable()

class _GetServicesFromKeychainRequest extends GetServicesFromKeychainRequest {
  const _GetServicesFromKeychainRequest(): super._();
  factory _GetServicesFromKeychainRequest.fromJson(Map<String, dynamic> json) => _$GetServicesFromKeychainRequestFromJson(json);




@override
Map<String, dynamic> toJson() {
  return _$GetServicesFromKeychainRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetServicesFromKeychainRequest);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetServicesFromKeychainRequest()';
}


}




// dart format on
