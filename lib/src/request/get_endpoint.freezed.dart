// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_endpoint.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetEndpointResult {

 String get endpointUrl;
/// Create a copy of GetEndpointResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetEndpointResultCopyWith<GetEndpointResult> get copyWith => _$GetEndpointResultCopyWithImpl<GetEndpointResult>(this as GetEndpointResult, _$identity);

  /// Serializes this GetEndpointResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetEndpointResult&&(identical(other.endpointUrl, endpointUrl) || other.endpointUrl == endpointUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,endpointUrl);

@override
String toString() {
  return 'GetEndpointResult(endpointUrl: $endpointUrl)';
}


}

/// @nodoc
abstract mixin class $GetEndpointResultCopyWith<$Res>  {
  factory $GetEndpointResultCopyWith(GetEndpointResult value, $Res Function(GetEndpointResult) _then) = _$GetEndpointResultCopyWithImpl;
@useResult
$Res call({
 String endpointUrl
});




}
/// @nodoc
class _$GetEndpointResultCopyWithImpl<$Res>
    implements $GetEndpointResultCopyWith<$Res> {
  _$GetEndpointResultCopyWithImpl(this._self, this._then);

  final GetEndpointResult _self;
  final $Res Function(GetEndpointResult) _then;

/// Create a copy of GetEndpointResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? endpointUrl = null,}) {
  return _then(_self.copyWith(
endpointUrl: null == endpointUrl ? _self.endpointUrl : endpointUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _GetEndpointResult extends GetEndpointResult {
  const _GetEndpointResult({required this.endpointUrl}): super._();
  factory _GetEndpointResult.fromJson(Map<String, dynamic> json) => _$GetEndpointResultFromJson(json);

@override final  String endpointUrl;

/// Create a copy of GetEndpointResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetEndpointResultCopyWith<_GetEndpointResult> get copyWith => __$GetEndpointResultCopyWithImpl<_GetEndpointResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetEndpointResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetEndpointResult&&(identical(other.endpointUrl, endpointUrl) || other.endpointUrl == endpointUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,endpointUrl);

@override
String toString() {
  return 'GetEndpointResult(endpointUrl: $endpointUrl)';
}


}

/// @nodoc
abstract mixin class _$GetEndpointResultCopyWith<$Res> implements $GetEndpointResultCopyWith<$Res> {
  factory _$GetEndpointResultCopyWith(_GetEndpointResult value, $Res Function(_GetEndpointResult) _then) = __$GetEndpointResultCopyWithImpl;
@override @useResult
$Res call({
 String endpointUrl
});




}
/// @nodoc
class __$GetEndpointResultCopyWithImpl<$Res>
    implements _$GetEndpointResultCopyWith<$Res> {
  __$GetEndpointResultCopyWithImpl(this._self, this._then);

  final _GetEndpointResult _self;
  final $Res Function(_GetEndpointResult) _then;

/// Create a copy of GetEndpointResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? endpointUrl = null,}) {
  return _then(_GetEndpointResult(
endpointUrl: null == endpointUrl ? _self.endpointUrl : endpointUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$GetEndpointRequest {



  /// Serializes this GetEndpointRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetEndpointRequest);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetEndpointRequest()';
}


}

/// @nodoc
class $GetEndpointRequestCopyWith<$Res>  {
$GetEndpointRequestCopyWith(GetEndpointRequest _, $Res Function(GetEndpointRequest) __);
}


/// @nodoc
@JsonSerializable()

class _GetEndpointRequest extends GetEndpointRequest {
  const _GetEndpointRequest(): super._();
  factory _GetEndpointRequest.fromJson(Map<String, dynamic> json) => _$GetEndpointRequestFromJson(json);




@override
Map<String, dynamic> toJson() {
  return _$GetEndpointRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetEndpointRequest);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetEndpointRequest()';
}


}




// dart format on
