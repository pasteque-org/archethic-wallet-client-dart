// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_sub.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AccountBalance {

 String get nativeTokenName; double get nativeTokenValue;
/// Create a copy of AccountBalance
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountBalanceCopyWith<AccountBalance> get copyWith => _$AccountBalanceCopyWithImpl<AccountBalance>(this as AccountBalance, _$identity);

  /// Serializes this AccountBalance to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccountBalance&&(identical(other.nativeTokenName, nativeTokenName) || other.nativeTokenName == nativeTokenName)&&(identical(other.nativeTokenValue, nativeTokenValue) || other.nativeTokenValue == nativeTokenValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nativeTokenName,nativeTokenValue);

@override
String toString() {
  return 'AccountBalance(nativeTokenName: $nativeTokenName, nativeTokenValue: $nativeTokenValue)';
}


}

/// @nodoc
abstract mixin class $AccountBalanceCopyWith<$Res>  {
  factory $AccountBalanceCopyWith(AccountBalance value, $Res Function(AccountBalance) _then) = _$AccountBalanceCopyWithImpl;
@useResult
$Res call({
 String nativeTokenName, double nativeTokenValue
});




}
/// @nodoc
class _$AccountBalanceCopyWithImpl<$Res>
    implements $AccountBalanceCopyWith<$Res> {
  _$AccountBalanceCopyWithImpl(this._self, this._then);

  final AccountBalance _self;
  final $Res Function(AccountBalance) _then;

/// Create a copy of AccountBalance
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nativeTokenName = null,Object? nativeTokenValue = null,}) {
  return _then(_self.copyWith(
nativeTokenName: null == nativeTokenName ? _self.nativeTokenName : nativeTokenName // ignore: cast_nullable_to_non_nullable
as String,nativeTokenValue: null == nativeTokenValue ? _self.nativeTokenValue : nativeTokenValue // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _AccountBalance extends AccountBalance {
  const _AccountBalance({required this.nativeTokenName, required this.nativeTokenValue}): super._();
  factory _AccountBalance.fromJson(Map<String, dynamic> json) => _$AccountBalanceFromJson(json);

@override final  String nativeTokenName;
@override final  double nativeTokenValue;

/// Create a copy of AccountBalance
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccountBalanceCopyWith<_AccountBalance> get copyWith => __$AccountBalanceCopyWithImpl<_AccountBalance>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AccountBalanceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccountBalance&&(identical(other.nativeTokenName, nativeTokenName) || other.nativeTokenName == nativeTokenName)&&(identical(other.nativeTokenValue, nativeTokenValue) || other.nativeTokenValue == nativeTokenValue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,nativeTokenName,nativeTokenValue);

@override
String toString() {
  return 'AccountBalance(nativeTokenName: $nativeTokenName, nativeTokenValue: $nativeTokenValue)';
}


}

/// @nodoc
abstract mixin class _$AccountBalanceCopyWith<$Res> implements $AccountBalanceCopyWith<$Res> {
  factory _$AccountBalanceCopyWith(_AccountBalance value, $Res Function(_AccountBalance) _then) = __$AccountBalanceCopyWithImpl;
@override @useResult
$Res call({
 String nativeTokenName, double nativeTokenValue
});




}
/// @nodoc
class __$AccountBalanceCopyWithImpl<$Res>
    implements _$AccountBalanceCopyWith<$Res> {
  __$AccountBalanceCopyWithImpl(this._self, this._then);

  final _AccountBalance _self;
  final $Res Function(_AccountBalance) _then;

/// Create a copy of AccountBalance
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nativeTokenName = null,Object? nativeTokenValue = null,}) {
  return _then(_AccountBalance(
nativeTokenName: null == nativeTokenName ? _self.nativeTokenName : nativeTokenName // ignore: cast_nullable_to_non_nullable
as String,nativeTokenValue: null == nativeTokenValue ? _self.nativeTokenValue : nativeTokenValue // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$Account {

 String get name; String get genesisAddress; String? get lastAddress; AccountBalance? get balance;
/// Create a copy of Account
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccountCopyWith<Account> get copyWith => _$AccountCopyWithImpl<Account>(this as Account, _$identity);

  /// Serializes this Account to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Account&&(identical(other.name, name) || other.name == name)&&(identical(other.genesisAddress, genesisAddress) || other.genesisAddress == genesisAddress)&&(identical(other.lastAddress, lastAddress) || other.lastAddress == lastAddress)&&(identical(other.balance, balance) || other.balance == balance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,genesisAddress,lastAddress,balance);

@override
String toString() {
  return 'Account(name: $name, genesisAddress: $genesisAddress, lastAddress: $lastAddress, balance: $balance)';
}


}

/// @nodoc
abstract mixin class $AccountCopyWith<$Res>  {
  factory $AccountCopyWith(Account value, $Res Function(Account) _then) = _$AccountCopyWithImpl;
@useResult
$Res call({
 String name, String genesisAddress, String? lastAddress, AccountBalance? balance
});


$AccountBalanceCopyWith<$Res>? get balance;

}
/// @nodoc
class _$AccountCopyWithImpl<$Res>
    implements $AccountCopyWith<$Res> {
  _$AccountCopyWithImpl(this._self, this._then);

  final Account _self;
  final $Res Function(Account) _then;

/// Create a copy of Account
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? genesisAddress = null,Object? lastAddress = freezed,Object? balance = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,genesisAddress: null == genesisAddress ? _self.genesisAddress : genesisAddress // ignore: cast_nullable_to_non_nullable
as String,lastAddress: freezed == lastAddress ? _self.lastAddress : lastAddress // ignore: cast_nullable_to_non_nullable
as String?,balance: freezed == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as AccountBalance?,
  ));
}
/// Create a copy of Account
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccountBalanceCopyWith<$Res>? get balance {
    if (_self.balance == null) {
    return null;
  }

  return $AccountBalanceCopyWith<$Res>(_self.balance!, (value) {
    return _then(_self.copyWith(balance: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _Account extends Account {
  const _Account({required this.name, required this.genesisAddress, this.lastAddress, this.balance}): super._();
  factory _Account.fromJson(Map<String, dynamic> json) => _$AccountFromJson(json);

@override final  String name;
@override final  String genesisAddress;
@override final  String? lastAddress;
@override final  AccountBalance? balance;

/// Create a copy of Account
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccountCopyWith<_Account> get copyWith => __$AccountCopyWithImpl<_Account>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AccountToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Account&&(identical(other.name, name) || other.name == name)&&(identical(other.genesisAddress, genesisAddress) || other.genesisAddress == genesisAddress)&&(identical(other.lastAddress, lastAddress) || other.lastAddress == lastAddress)&&(identical(other.balance, balance) || other.balance == balance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,genesisAddress,lastAddress,balance);

@override
String toString() {
  return 'Account(name: $name, genesisAddress: $genesisAddress, lastAddress: $lastAddress, balance: $balance)';
}


}

/// @nodoc
abstract mixin class _$AccountCopyWith<$Res> implements $AccountCopyWith<$Res> {
  factory _$AccountCopyWith(_Account value, $Res Function(_Account) _then) = __$AccountCopyWithImpl;
@override @useResult
$Res call({
 String name, String genesisAddress, String? lastAddress, AccountBalance? balance
});


@override $AccountBalanceCopyWith<$Res>? get balance;

}
/// @nodoc
class __$AccountCopyWithImpl<$Res>
    implements _$AccountCopyWith<$Res> {
  __$AccountCopyWithImpl(this._self, this._then);

  final _Account _self;
  final $Res Function(_Account) _then;

/// Create a copy of Account
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? genesisAddress = null,Object? lastAddress = freezed,Object? balance = freezed,}) {
  return _then(_Account(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,genesisAddress: null == genesisAddress ? _self.genesisAddress : genesisAddress // ignore: cast_nullable_to_non_nullable
as String,lastAddress: freezed == lastAddress ? _self.lastAddress : lastAddress // ignore: cast_nullable_to_non_nullable
as String?,balance: freezed == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as AccountBalance?,
  ));
}

/// Create a copy of Account
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccountBalanceCopyWith<$Res>? get balance {
    if (_self.balance == null) {
    return null;
  }

  return $AccountBalanceCopyWith<$Res>(_self.balance!, (value) {
    return _then(_self.copyWith(balance: value));
  });
}
}


/// @nodoc
mixin _$SubscribeAccountRequest {

 String get serviceName;
/// Create a copy of SubscribeAccountRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SubscribeAccountRequestCopyWith<SubscribeAccountRequest> get copyWith => _$SubscribeAccountRequestCopyWithImpl<SubscribeAccountRequest>(this as SubscribeAccountRequest, _$identity);

  /// Serializes this SubscribeAccountRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubscribeAccountRequest&&(identical(other.serviceName, serviceName) || other.serviceName == serviceName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,serviceName);

@override
String toString() {
  return 'SubscribeAccountRequest(serviceName: $serviceName)';
}


}

/// @nodoc
abstract mixin class $SubscribeAccountRequestCopyWith<$Res>  {
  factory $SubscribeAccountRequestCopyWith(SubscribeAccountRequest value, $Res Function(SubscribeAccountRequest) _then) = _$SubscribeAccountRequestCopyWithImpl;
@useResult
$Res call({
 String serviceName
});




}
/// @nodoc
class _$SubscribeAccountRequestCopyWithImpl<$Res>
    implements $SubscribeAccountRequestCopyWith<$Res> {
  _$SubscribeAccountRequestCopyWithImpl(this._self, this._then);

  final SubscribeAccountRequest _self;
  final $Res Function(SubscribeAccountRequest) _then;

/// Create a copy of SubscribeAccountRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? serviceName = null,}) {
  return _then(_self.copyWith(
serviceName: null == serviceName ? _self.serviceName : serviceName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _SubscribeAccountRequest extends SubscribeAccountRequest {
  const _SubscribeAccountRequest({required this.serviceName}): super._();
  factory _SubscribeAccountRequest.fromJson(Map<String, dynamic> json) => _$SubscribeAccountRequestFromJson(json);

@override final  String serviceName;

/// Create a copy of SubscribeAccountRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubscribeAccountRequestCopyWith<_SubscribeAccountRequest> get copyWith => __$SubscribeAccountRequestCopyWithImpl<_SubscribeAccountRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SubscribeAccountRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubscribeAccountRequest&&(identical(other.serviceName, serviceName) || other.serviceName == serviceName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,serviceName);

@override
String toString() {
  return 'SubscribeAccountRequest(serviceName: $serviceName)';
}


}

/// @nodoc
abstract mixin class _$SubscribeAccountRequestCopyWith<$Res> implements $SubscribeAccountRequestCopyWith<$Res> {
  factory _$SubscribeAccountRequestCopyWith(_SubscribeAccountRequest value, $Res Function(_SubscribeAccountRequest) _then) = __$SubscribeAccountRequestCopyWithImpl;
@override @useResult
$Res call({
 String serviceName
});




}
/// @nodoc
class __$SubscribeAccountRequestCopyWithImpl<$Res>
    implements _$SubscribeAccountRequestCopyWith<$Res> {
  __$SubscribeAccountRequestCopyWithImpl(this._self, this._then);

  final _SubscribeAccountRequest _self;
  final $Res Function(_SubscribeAccountRequest) _then;

/// Create a copy of SubscribeAccountRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? serviceName = null,}) {
  return _then(_SubscribeAccountRequest(
serviceName: null == serviceName ? _self.serviceName : serviceName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$SubscribeCurrentAccountRequest {



  /// Serializes this SubscribeCurrentAccountRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubscribeCurrentAccountRequest);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubscribeCurrentAccountRequest()';
}


}

/// @nodoc
class $SubscribeCurrentAccountRequestCopyWith<$Res>  {
$SubscribeCurrentAccountRequestCopyWith(SubscribeCurrentAccountRequest _, $Res Function(SubscribeCurrentAccountRequest) __);
}


/// @nodoc
@JsonSerializable()

class _SubscribeCurrentAccountRequest extends SubscribeCurrentAccountRequest {
  const _SubscribeCurrentAccountRequest(): super._();
  factory _SubscribeCurrentAccountRequest.fromJson(Map<String, dynamic> json) => _$SubscribeCurrentAccountRequestFromJson(json);




@override
Map<String, dynamic> toJson() {
  return _$SubscribeCurrentAccountRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubscribeCurrentAccountRequest);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SubscribeCurrentAccountRequest()';
}


}




// dart format on
