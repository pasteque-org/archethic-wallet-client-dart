// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Subscription<DataT> {

 String get id; Stream<DataT> get updates;
/// Create a copy of Subscription
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubscriptionCopyWith<DataT, Subscription<DataT>> get copyWith => _$SubscriptionCopyWithImpl<DataT, Subscription<DataT>>(this as Subscription<DataT>, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Subscription<DataT>&&(identical(other.id, id) || other.id == id)&&(identical(other.updates, updates) || other.updates == updates));
}


@override
int get hashCode => Object.hash(runtimeType,id,updates);

@override
String toString() {
  return 'Subscription<$DataT>(id: $id, updates: $updates)';
}


}

/// @nodoc
abstract mixin class $SubscriptionCopyWith<DataT,$Res>  {
  factory $SubscriptionCopyWith(Subscription<DataT> value, $Res Function(Subscription<DataT>) _then) = _$SubscriptionCopyWithImpl;
@useResult
$Res call({
 String id, Stream<DataT> updates
});




}
/// @nodoc
class _$SubscriptionCopyWithImpl<DataT,$Res>
    implements $SubscriptionCopyWith<DataT, $Res> {
  _$SubscriptionCopyWithImpl(this._self, this._then);

  final Subscription<DataT> _self;
  final $Res Function(Subscription<DataT>) _then;

/// Create a copy of Subscription
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? updates = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,updates: null == updates ? _self.updates : updates // ignore: cast_nullable_to_non_nullable
as Stream<DataT>,
  ));
}

}


/// @nodoc


class _Subscription<DataT> extends Subscription<DataT> {
  const _Subscription({required this.id, required this.updates}): super._();
  

@override final  String id;
@override final  Stream<DataT> updates;

/// Create a copy of Subscription
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubscriptionCopyWith<DataT, _Subscription<DataT>> get copyWith => __$SubscriptionCopyWithImpl<DataT, _Subscription<DataT>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Subscription<DataT>&&(identical(other.id, id) || other.id == id)&&(identical(other.updates, updates) || other.updates == updates));
}


@override
int get hashCode => Object.hash(runtimeType,id,updates);

@override
String toString() {
  return 'Subscription<$DataT>(id: $id, updates: $updates)';
}


}

/// @nodoc
abstract mixin class _$SubscriptionCopyWith<DataT,$Res> implements $SubscriptionCopyWith<DataT, $Res> {
  factory _$SubscriptionCopyWith(_Subscription<DataT> value, $Res Function(_Subscription<DataT>) _then) = __$SubscriptionCopyWithImpl;
@override @useResult
$Res call({
 String id, Stream<DataT> updates
});




}
/// @nodoc
class __$SubscriptionCopyWithImpl<DataT,$Res>
    implements _$SubscriptionCopyWith<DataT, $Res> {
  __$SubscriptionCopyWithImpl(this._self, this._then);

  final _Subscription<DataT> _self;
  final $Res Function(_Subscription<DataT>) _then;

/// Create a copy of Subscription
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? updates = null,}) {
  return _then(_Subscription<DataT>(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,updates: null == updates ? _self.updates : updates // ignore: cast_nullable_to_non_nullable
as Stream<DataT>,
  ));
}


}


/// @nodoc
mixin _$SubscriptionUpdate {

 String get subscriptionId; Map<String, dynamic> get data;
/// Create a copy of SubscriptionUpdate
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubscriptionUpdateCopyWith<SubscriptionUpdate> get copyWith => _$SubscriptionUpdateCopyWithImpl<SubscriptionUpdate>(this as SubscriptionUpdate, _$identity);

  /// Serializes this SubscriptionUpdate to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubscriptionUpdate&&(identical(other.subscriptionId, subscriptionId) || other.subscriptionId == subscriptionId)&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,subscriptionId,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'SubscriptionUpdate(subscriptionId: $subscriptionId, data: $data)';
}


}

/// @nodoc
abstract mixin class $SubscriptionUpdateCopyWith<$Res>  {
  factory $SubscriptionUpdateCopyWith(SubscriptionUpdate value, $Res Function(SubscriptionUpdate) _then) = _$SubscriptionUpdateCopyWithImpl;
@useResult
$Res call({
 String subscriptionId, Map<String, dynamic> data
});




}
/// @nodoc
class _$SubscriptionUpdateCopyWithImpl<$Res>
    implements $SubscriptionUpdateCopyWith<$Res> {
  _$SubscriptionUpdateCopyWithImpl(this._self, this._then);

  final SubscriptionUpdate _self;
  final $Res Function(SubscriptionUpdate) _then;

/// Create a copy of SubscriptionUpdate
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? subscriptionId = null,Object? data = null,}) {
  return _then(_self.copyWith(
subscriptionId: null == subscriptionId ? _self.subscriptionId : subscriptionId // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SubscriptionUpdate extends SubscriptionUpdate {
  const _SubscriptionUpdate({required this.subscriptionId, required final  Map<String, dynamic> data}): _data = data,super._();
  factory _SubscriptionUpdate.fromJson(Map<String, dynamic> json) => _$SubscriptionUpdateFromJson(json);

@override final  String subscriptionId;
 final  Map<String, dynamic> _data;
@override Map<String, dynamic> get data {
  if (_data is EqualUnmodifiableMapView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_data);
}


/// Create a copy of SubscriptionUpdate
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubscriptionUpdateCopyWith<_SubscriptionUpdate> get copyWith => __$SubscriptionUpdateCopyWithImpl<_SubscriptionUpdate>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubscriptionUpdateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubscriptionUpdate&&(identical(other.subscriptionId, subscriptionId) || other.subscriptionId == subscriptionId)&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,subscriptionId,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'SubscriptionUpdate(subscriptionId: $subscriptionId, data: $data)';
}


}

/// @nodoc
abstract mixin class _$SubscriptionUpdateCopyWith<$Res> implements $SubscriptionUpdateCopyWith<$Res> {
  factory _$SubscriptionUpdateCopyWith(_SubscriptionUpdate value, $Res Function(_SubscriptionUpdate) _then) = __$SubscriptionUpdateCopyWithImpl;
@override @useResult
$Res call({
 String subscriptionId, Map<String, dynamic> data
});




}
/// @nodoc
class __$SubscriptionUpdateCopyWithImpl<$Res>
    implements _$SubscriptionUpdateCopyWith<$Res> {
  __$SubscriptionUpdateCopyWithImpl(this._self, this._then);

  final _SubscriptionUpdate _self;
  final $Res Function(_SubscriptionUpdate) _then;

/// Create a copy of SubscriptionUpdate
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? subscriptionId = null,Object? data = null,}) {
  return _then(_SubscriptionUpdate(
subscriptionId: null == subscriptionId ? _self.subscriptionId : subscriptionId // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}


/// @nodoc
mixin _$SubscribeResponse {

 String get subscriptionId;
/// Create a copy of SubscribeResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubscribeResponseCopyWith<SubscribeResponse> get copyWith => _$SubscribeResponseCopyWithImpl<SubscribeResponse>(this as SubscribeResponse, _$identity);

  /// Serializes this SubscribeResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubscribeResponse&&(identical(other.subscriptionId, subscriptionId) || other.subscriptionId == subscriptionId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,subscriptionId);

@override
String toString() {
  return 'SubscribeResponse(subscriptionId: $subscriptionId)';
}


}

/// @nodoc
abstract mixin class $SubscribeResponseCopyWith<$Res>  {
  factory $SubscribeResponseCopyWith(SubscribeResponse value, $Res Function(SubscribeResponse) _then) = _$SubscribeResponseCopyWithImpl;
@useResult
$Res call({
 String subscriptionId
});




}
/// @nodoc
class _$SubscribeResponseCopyWithImpl<$Res>
    implements $SubscribeResponseCopyWith<$Res> {
  _$SubscribeResponseCopyWithImpl(this._self, this._then);

  final SubscribeResponse _self;
  final $Res Function(SubscribeResponse) _then;

/// Create a copy of SubscribeResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? subscriptionId = null,}) {
  return _then(_self.copyWith(
subscriptionId: null == subscriptionId ? _self.subscriptionId : subscriptionId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SubscribeResponse extends SubscribeResponse {
  const _SubscribeResponse({required this.subscriptionId}): super._();
  factory _SubscribeResponse.fromJson(Map<String, dynamic> json) => _$SubscribeResponseFromJson(json);

@override final  String subscriptionId;

/// Create a copy of SubscribeResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubscribeResponseCopyWith<_SubscribeResponse> get copyWith => __$SubscribeResponseCopyWithImpl<_SubscribeResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubscribeResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubscribeResponse&&(identical(other.subscriptionId, subscriptionId) || other.subscriptionId == subscriptionId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,subscriptionId);

@override
String toString() {
  return 'SubscribeResponse(subscriptionId: $subscriptionId)';
}


}

/// @nodoc
abstract mixin class _$SubscribeResponseCopyWith<$Res> implements $SubscribeResponseCopyWith<$Res> {
  factory _$SubscribeResponseCopyWith(_SubscribeResponse value, $Res Function(_SubscribeResponse) _then) = __$SubscribeResponseCopyWithImpl;
@override @useResult
$Res call({
 String subscriptionId
});




}
/// @nodoc
class __$SubscribeResponseCopyWithImpl<$Res>
    implements _$SubscribeResponseCopyWith<$Res> {
  __$SubscribeResponseCopyWithImpl(this._self, this._then);

  final _SubscribeResponse _self;
  final $Res Function(_SubscribeResponse) _then;

/// Create a copy of SubscribeResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? subscriptionId = null,}) {
  return _then(_SubscribeResponse(
subscriptionId: null == subscriptionId ? _self.subscriptionId : subscriptionId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$UnsubscribeRequest {

 String get subscriptionId;
/// Create a copy of UnsubscribeRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UnsubscribeRequestCopyWith<UnsubscribeRequest> get copyWith => _$UnsubscribeRequestCopyWithImpl<UnsubscribeRequest>(this as UnsubscribeRequest, _$identity);

  /// Serializes this UnsubscribeRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnsubscribeRequest&&(identical(other.subscriptionId, subscriptionId) || other.subscriptionId == subscriptionId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,subscriptionId);

@override
String toString() {
  return 'UnsubscribeRequest(subscriptionId: $subscriptionId)';
}


}

/// @nodoc
abstract mixin class $UnsubscribeRequestCopyWith<$Res>  {
  factory $UnsubscribeRequestCopyWith(UnsubscribeRequest value, $Res Function(UnsubscribeRequest) _then) = _$UnsubscribeRequestCopyWithImpl;
@useResult
$Res call({
 String subscriptionId
});




}
/// @nodoc
class _$UnsubscribeRequestCopyWithImpl<$Res>
    implements $UnsubscribeRequestCopyWith<$Res> {
  _$UnsubscribeRequestCopyWithImpl(this._self, this._then);

  final UnsubscribeRequest _self;
  final $Res Function(UnsubscribeRequest) _then;

/// Create a copy of UnsubscribeRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? subscriptionId = null,}) {
  return _then(_self.copyWith(
subscriptionId: null == subscriptionId ? _self.subscriptionId : subscriptionId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _UnsubscribeRequest extends UnsubscribeRequest {
  const _UnsubscribeRequest({required this.subscriptionId}): super._();
  factory _UnsubscribeRequest.fromJson(Map<String, dynamic> json) => _$UnsubscribeRequestFromJson(json);

@override final  String subscriptionId;

/// Create a copy of UnsubscribeRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UnsubscribeRequestCopyWith<_UnsubscribeRequest> get copyWith => __$UnsubscribeRequestCopyWithImpl<_UnsubscribeRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UnsubscribeRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UnsubscribeRequest&&(identical(other.subscriptionId, subscriptionId) || other.subscriptionId == subscriptionId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,subscriptionId);

@override
String toString() {
  return 'UnsubscribeRequest(subscriptionId: $subscriptionId)';
}


}

/// @nodoc
abstract mixin class _$UnsubscribeRequestCopyWith<$Res> implements $UnsubscribeRequestCopyWith<$Res> {
  factory _$UnsubscribeRequestCopyWith(_UnsubscribeRequest value, $Res Function(_UnsubscribeRequest) _then) = __$UnsubscribeRequestCopyWithImpl;
@override @useResult
$Res call({
 String subscriptionId
});




}
/// @nodoc
class __$UnsubscribeRequestCopyWithImpl<$Res>
    implements _$UnsubscribeRequestCopyWith<$Res> {
  __$UnsubscribeRequestCopyWithImpl(this._self, this._then);

  final _UnsubscribeRequest _self;
  final $Res Function(_UnsubscribeRequest) _then;

/// Create a copy of UnsubscribeRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? subscriptionId = null,}) {
  return _then(_UnsubscribeRequest(
subscriptionId: null == subscriptionId ? _self.subscriptionId : subscriptionId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
