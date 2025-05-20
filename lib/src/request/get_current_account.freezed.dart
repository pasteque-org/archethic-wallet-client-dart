// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_current_account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetCurrentAccountResult {

 String get shortName; String get serviceName; String get genesisAddress;
/// Create a copy of GetCurrentAccountResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetCurrentAccountResultCopyWith<GetCurrentAccountResult> get copyWith => _$GetCurrentAccountResultCopyWithImpl<GetCurrentAccountResult>(this as GetCurrentAccountResult, _$identity);

  /// Serializes this GetCurrentAccountResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetCurrentAccountResult&&(identical(other.shortName, shortName) || other.shortName == shortName)&&(identical(other.serviceName, serviceName) || other.serviceName == serviceName)&&(identical(other.genesisAddress, genesisAddress) || other.genesisAddress == genesisAddress));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,shortName,serviceName,genesisAddress);

@override
String toString() {
  return 'GetCurrentAccountResult(shortName: $shortName, serviceName: $serviceName, genesisAddress: $genesisAddress)';
}


}

/// @nodoc
abstract mixin class $GetCurrentAccountResultCopyWith<$Res>  {
  factory $GetCurrentAccountResultCopyWith(GetCurrentAccountResult value, $Res Function(GetCurrentAccountResult) _then) = _$GetCurrentAccountResultCopyWithImpl;
@useResult
$Res call({
 String shortName, String serviceName, String genesisAddress
});




}
/// @nodoc
class _$GetCurrentAccountResultCopyWithImpl<$Res>
    implements $GetCurrentAccountResultCopyWith<$Res> {
  _$GetCurrentAccountResultCopyWithImpl(this._self, this._then);

  final GetCurrentAccountResult _self;
  final $Res Function(GetCurrentAccountResult) _then;

/// Create a copy of GetCurrentAccountResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? shortName = null,Object? serviceName = null,Object? genesisAddress = null,}) {
  return _then(_self.copyWith(
shortName: null == shortName ? _self.shortName : shortName // ignore: cast_nullable_to_non_nullable
as String,serviceName: null == serviceName ? _self.serviceName : serviceName // ignore: cast_nullable_to_non_nullable
as String,genesisAddress: null == genesisAddress ? _self.genesisAddress : genesisAddress // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _GetCurrentAccountResult extends GetCurrentAccountResult {
  const _GetCurrentAccountResult({required this.shortName, required this.serviceName, required this.genesisAddress}): super._();
  factory _GetCurrentAccountResult.fromJson(Map<String, dynamic> json) => _$GetCurrentAccountResultFromJson(json);

@override final  String shortName;
@override final  String serviceName;
@override final  String genesisAddress;

/// Create a copy of GetCurrentAccountResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetCurrentAccountResultCopyWith<_GetCurrentAccountResult> get copyWith => __$GetCurrentAccountResultCopyWithImpl<_GetCurrentAccountResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetCurrentAccountResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetCurrentAccountResult&&(identical(other.shortName, shortName) || other.shortName == shortName)&&(identical(other.serviceName, serviceName) || other.serviceName == serviceName)&&(identical(other.genesisAddress, genesisAddress) || other.genesisAddress == genesisAddress));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,shortName,serviceName,genesisAddress);

@override
String toString() {
  return 'GetCurrentAccountResult(shortName: $shortName, serviceName: $serviceName, genesisAddress: $genesisAddress)';
}


}

/// @nodoc
abstract mixin class _$GetCurrentAccountResultCopyWith<$Res> implements $GetCurrentAccountResultCopyWith<$Res> {
  factory _$GetCurrentAccountResultCopyWith(_GetCurrentAccountResult value, $Res Function(_GetCurrentAccountResult) _then) = __$GetCurrentAccountResultCopyWithImpl;
@override @useResult
$Res call({
 String shortName, String serviceName, String genesisAddress
});




}
/// @nodoc
class __$GetCurrentAccountResultCopyWithImpl<$Res>
    implements _$GetCurrentAccountResultCopyWith<$Res> {
  __$GetCurrentAccountResultCopyWithImpl(this._self, this._then);

  final _GetCurrentAccountResult _self;
  final $Res Function(_GetCurrentAccountResult) _then;

/// Create a copy of GetCurrentAccountResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? shortName = null,Object? serviceName = null,Object? genesisAddress = null,}) {
  return _then(_GetCurrentAccountResult(
shortName: null == shortName ? _self.shortName : shortName // ignore: cast_nullable_to_non_nullable
as String,serviceName: null == serviceName ? _self.serviceName : serviceName // ignore: cast_nullable_to_non_nullable
as String,genesisAddress: null == genesisAddress ? _self.genesisAddress : genesisAddress // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$GetCurrentAccountRequest {



  /// Serializes this GetCurrentAccountRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetCurrentAccountRequest);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetCurrentAccountRequest()';
}


}

/// @nodoc
class $GetCurrentAccountRequestCopyWith<$Res>  {
$GetCurrentAccountRequestCopyWith(GetCurrentAccountRequest _, $Res Function(GetCurrentAccountRequest) __);
}


/// @nodoc
@JsonSerializable()

class _GetCurrentAccountRequest extends GetCurrentAccountRequest {
  const _GetCurrentAccountRequest(): super._();
  factory _GetCurrentAccountRequest.fromJson(Map<String, dynamic> json) => _$GetCurrentAccountRequestFromJson(json);




@override
Map<String, dynamic> toJson() {
  return _$GetCurrentAccountRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetCurrentAccountRequest);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetCurrentAccountRequest()';
}


}




// dart format on
