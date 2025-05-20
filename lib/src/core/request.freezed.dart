// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RequestOrigin {

 String get name; String? get url; String? get logo;
/// Create a copy of RequestOrigin
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestOriginCopyWith<RequestOrigin> get copyWith => _$RequestOriginCopyWithImpl<RequestOrigin>(this as RequestOrigin, _$identity);

  /// Serializes this RequestOrigin to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RequestOrigin&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url)&&(identical(other.logo, logo) || other.logo == logo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url,logo);

@override
String toString() {
  return 'RequestOrigin(name: $name, url: $url, logo: $logo)';
}


}

/// @nodoc
abstract mixin class $RequestOriginCopyWith<$Res>  {
  factory $RequestOriginCopyWith(RequestOrigin value, $Res Function(RequestOrigin) _then) = _$RequestOriginCopyWithImpl;
@useResult
$Res call({
 String name, String? url, String? logo
});




}
/// @nodoc
class _$RequestOriginCopyWithImpl<$Res>
    implements $RequestOriginCopyWith<$Res> {
  _$RequestOriginCopyWithImpl(this._self, this._then);

  final RequestOrigin _self;
  final $Res Function(RequestOrigin) _then;

/// Create a copy of RequestOrigin
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? url = freezed,Object? logo = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _RequestOrigin extends RequestOrigin {
  const _RequestOrigin({required this.name, this.url, this.logo}): super._();
  factory _RequestOrigin.fromJson(Map<String, dynamic> json) => _$RequestOriginFromJson(json);

@override final  String name;
@override final  String? url;
@override final  String? logo;

/// Create a copy of RequestOrigin
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestOriginCopyWith<_RequestOrigin> get copyWith => __$RequestOriginCopyWithImpl<_RequestOrigin>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RequestOriginToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RequestOrigin&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url)&&(identical(other.logo, logo) || other.logo == logo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url,logo);

@override
String toString() {
  return 'RequestOrigin(name: $name, url: $url, logo: $logo)';
}


}

/// @nodoc
abstract mixin class _$RequestOriginCopyWith<$Res> implements $RequestOriginCopyWith<$Res> {
  factory _$RequestOriginCopyWith(_RequestOrigin value, $Res Function(_RequestOrigin) _then) = __$RequestOriginCopyWithImpl;
@override @useResult
$Res call({
 String name, String? url, String? logo
});




}
/// @nodoc
class __$RequestOriginCopyWithImpl<$Res>
    implements _$RequestOriginCopyWith<$Res> {
  __$RequestOriginCopyWithImpl(this._self, this._then);

  final _RequestOrigin _self;
  final $Res Function(_RequestOrigin) _then;

/// Create a copy of RequestOrigin
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? url = freezed,Object? logo = freezed,}) {
  return _then(_RequestOrigin(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Request {

 RequestOrigin get origin; int get version;// Rpc protocol version
 Map<String, dynamic> get payload;
/// Create a copy of Request
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RequestCopyWith<Request> get copyWith => _$RequestCopyWithImpl<Request>(this as Request, _$identity);

  /// Serializes this Request to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Request&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.version, version) || other.version == version)&&const DeepCollectionEquality().equals(other.payload, payload));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,origin,version,const DeepCollectionEquality().hash(payload));

@override
String toString() {
  return 'Request(origin: $origin, version: $version, payload: $payload)';
}


}

/// @nodoc
abstract mixin class $RequestCopyWith<$Res>  {
  factory $RequestCopyWith(Request value, $Res Function(Request) _then) = _$RequestCopyWithImpl;
@useResult
$Res call({
 RequestOrigin origin, int version, Map<String, dynamic> payload
});


$RequestOriginCopyWith<$Res> get origin;

}
/// @nodoc
class _$RequestCopyWithImpl<$Res>
    implements $RequestCopyWith<$Res> {
  _$RequestCopyWithImpl(this._self, this._then);

  final Request _self;
  final $Res Function(Request) _then;

/// Create a copy of Request
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? origin = null,Object? version = null,Object? payload = null,}) {
  return _then(_self.copyWith(
origin: null == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as RequestOrigin,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,payload: null == payload ? _self.payload : payload // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}
/// Create a copy of Request
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequestOriginCopyWith<$Res> get origin {
  
  return $RequestOriginCopyWith<$Res>(_self.origin, (value) {
    return _then(_self.copyWith(origin: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _Request extends Request {
  const _Request({required this.origin, required this.version, required final  Map<String, dynamic> payload}): _payload = payload,super._();
  factory _Request.fromJson(Map<String, dynamic> json) => _$RequestFromJson(json);

@override final  RequestOrigin origin;
@override final  int version;
// Rpc protocol version
 final  Map<String, dynamic> _payload;
// Rpc protocol version
@override Map<String, dynamic> get payload {
  if (_payload is EqualUnmodifiableMapView) return _payload;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_payload);
}


/// Create a copy of Request
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RequestCopyWith<_Request> get copyWith => __$RequestCopyWithImpl<_Request>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Request&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.version, version) || other.version == version)&&const DeepCollectionEquality().equals(other._payload, _payload));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,origin,version,const DeepCollectionEquality().hash(_payload));

@override
String toString() {
  return 'Request(origin: $origin, version: $version, payload: $payload)';
}


}

/// @nodoc
abstract mixin class _$RequestCopyWith<$Res> implements $RequestCopyWith<$Res> {
  factory _$RequestCopyWith(_Request value, $Res Function(_Request) _then) = __$RequestCopyWithImpl;
@override @useResult
$Res call({
 RequestOrigin origin, int version, Map<String, dynamic> payload
});


@override $RequestOriginCopyWith<$Res> get origin;

}
/// @nodoc
class __$RequestCopyWithImpl<$Res>
    implements _$RequestCopyWith<$Res> {
  __$RequestCopyWithImpl(this._self, this._then);

  final _Request _self;
  final $Res Function(_Request) _then;

/// Create a copy of Request
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? origin = null,Object? version = null,Object? payload = null,}) {
  return _then(_Request(
origin: null == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as RequestOrigin,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,payload: null == payload ? _self._payload : payload // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

/// Create a copy of Request
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RequestOriginCopyWith<$Res> get origin {
  
  return $RequestOriginCopyWith<$Res>(_self.origin, (value) {
    return _then(_self.copyWith(origin: value));
  });
}
}

// dart format on
