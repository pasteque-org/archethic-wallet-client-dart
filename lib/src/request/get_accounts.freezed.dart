// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_accounts.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppAccount {

 String get shortName; String get serviceName; String get genesisAddress;
/// Create a copy of AppAccount
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppAccountCopyWith<AppAccount> get copyWith => _$AppAccountCopyWithImpl<AppAccount>(this as AppAccount, _$identity);

  /// Serializes this AppAccount to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppAccount&&(identical(other.shortName, shortName) || other.shortName == shortName)&&(identical(other.serviceName, serviceName) || other.serviceName == serviceName)&&(identical(other.genesisAddress, genesisAddress) || other.genesisAddress == genesisAddress));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,shortName,serviceName,genesisAddress);

@override
String toString() {
  return 'AppAccount(shortName: $shortName, serviceName: $serviceName, genesisAddress: $genesisAddress)';
}


}

/// @nodoc
abstract mixin class $AppAccountCopyWith<$Res>  {
  factory $AppAccountCopyWith(AppAccount value, $Res Function(AppAccount) _then) = _$AppAccountCopyWithImpl;
@useResult
$Res call({
 String shortName, String serviceName, String genesisAddress
});




}
/// @nodoc
class _$AppAccountCopyWithImpl<$Res>
    implements $AppAccountCopyWith<$Res> {
  _$AppAccountCopyWithImpl(this._self, this._then);

  final AppAccount _self;
  final $Res Function(AppAccount) _then;

/// Create a copy of AppAccount
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

class _AppAccount extends AppAccount {
  const _AppAccount({required this.shortName, required this.serviceName, required this.genesisAddress}): super._();
  factory _AppAccount.fromJson(Map<String, dynamic> json) => _$AppAccountFromJson(json);

@override final  String shortName;
@override final  String serviceName;
@override final  String genesisAddress;

/// Create a copy of AppAccount
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppAccountCopyWith<_AppAccount> get copyWith => __$AppAccountCopyWithImpl<_AppAccount>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppAccountToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppAccount&&(identical(other.shortName, shortName) || other.shortName == shortName)&&(identical(other.serviceName, serviceName) || other.serviceName == serviceName)&&(identical(other.genesisAddress, genesisAddress) || other.genesisAddress == genesisAddress));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,shortName,serviceName,genesisAddress);

@override
String toString() {
  return 'AppAccount(shortName: $shortName, serviceName: $serviceName, genesisAddress: $genesisAddress)';
}


}

/// @nodoc
abstract mixin class _$AppAccountCopyWith<$Res> implements $AppAccountCopyWith<$Res> {
  factory _$AppAccountCopyWith(_AppAccount value, $Res Function(_AppAccount) _then) = __$AppAccountCopyWithImpl;
@override @useResult
$Res call({
 String shortName, String serviceName, String genesisAddress
});




}
/// @nodoc
class __$AppAccountCopyWithImpl<$Res>
    implements _$AppAccountCopyWith<$Res> {
  __$AppAccountCopyWithImpl(this._self, this._then);

  final _AppAccount _self;
  final $Res Function(_AppAccount) _then;

/// Create a copy of AppAccount
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? shortName = null,Object? serviceName = null,Object? genesisAddress = null,}) {
  return _then(_AppAccount(
shortName: null == shortName ? _self.shortName : shortName // ignore: cast_nullable_to_non_nullable
as String,serviceName: null == serviceName ? _self.serviceName : serviceName // ignore: cast_nullable_to_non_nullable
as String,genesisAddress: null == genesisAddress ? _self.genesisAddress : genesisAddress // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$GetAccountsResult {

 List<AppAccount> get accounts;
/// Create a copy of GetAccountsResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetAccountsResultCopyWith<GetAccountsResult> get copyWith => _$GetAccountsResultCopyWithImpl<GetAccountsResult>(this as GetAccountsResult, _$identity);

  /// Serializes this GetAccountsResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAccountsResult&&const DeepCollectionEquality().equals(other.accounts, accounts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(accounts));

@override
String toString() {
  return 'GetAccountsResult(accounts: $accounts)';
}


}

/// @nodoc
abstract mixin class $GetAccountsResultCopyWith<$Res>  {
  factory $GetAccountsResultCopyWith(GetAccountsResult value, $Res Function(GetAccountsResult) _then) = _$GetAccountsResultCopyWithImpl;
@useResult
$Res call({
 List<AppAccount> accounts
});




}
/// @nodoc
class _$GetAccountsResultCopyWithImpl<$Res>
    implements $GetAccountsResultCopyWith<$Res> {
  _$GetAccountsResultCopyWithImpl(this._self, this._then);

  final GetAccountsResult _self;
  final $Res Function(GetAccountsResult) _then;

/// Create a copy of GetAccountsResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? accounts = null,}) {
  return _then(_self.copyWith(
accounts: null == accounts ? _self.accounts : accounts // ignore: cast_nullable_to_non_nullable
as List<AppAccount>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _GetAccountsResult extends GetAccountsResult {
  const _GetAccountsResult({required final  List<AppAccount> accounts}): _accounts = accounts,super._();
  factory _GetAccountsResult.fromJson(Map<String, dynamic> json) => _$GetAccountsResultFromJson(json);

 final  List<AppAccount> _accounts;
@override List<AppAccount> get accounts {
  if (_accounts is EqualUnmodifiableListView) return _accounts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_accounts);
}


/// Create a copy of GetAccountsResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetAccountsResultCopyWith<_GetAccountsResult> get copyWith => __$GetAccountsResultCopyWithImpl<_GetAccountsResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetAccountsResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAccountsResult&&const DeepCollectionEquality().equals(other._accounts, _accounts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_accounts));

@override
String toString() {
  return 'GetAccountsResult(accounts: $accounts)';
}


}

/// @nodoc
abstract mixin class _$GetAccountsResultCopyWith<$Res> implements $GetAccountsResultCopyWith<$Res> {
  factory _$GetAccountsResultCopyWith(_GetAccountsResult value, $Res Function(_GetAccountsResult) _then) = __$GetAccountsResultCopyWithImpl;
@override @useResult
$Res call({
 List<AppAccount> accounts
});




}
/// @nodoc
class __$GetAccountsResultCopyWithImpl<$Res>
    implements _$GetAccountsResultCopyWith<$Res> {
  __$GetAccountsResultCopyWithImpl(this._self, this._then);

  final _GetAccountsResult _self;
  final $Res Function(_GetAccountsResult) _then;

/// Create a copy of GetAccountsResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? accounts = null,}) {
  return _then(_GetAccountsResult(
accounts: null == accounts ? _self._accounts : accounts // ignore: cast_nullable_to_non_nullable
as List<AppAccount>,
  ));
}


}


/// @nodoc
mixin _$GetAccountsRequest {



  /// Serializes this GetAccountsRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetAccountsRequest);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetAccountsRequest()';
}


}

/// @nodoc
class $GetAccountsRequestCopyWith<$Res>  {
$GetAccountsRequestCopyWith(GetAccountsRequest _, $Res Function(GetAccountsRequest) __);
}


/// @nodoc
@JsonSerializable()

class _GetAccountsRequest extends GetAccountsRequest {
  const _GetAccountsRequest(): super._();
  factory _GetAccountsRequest.fromJson(Map<String, dynamic> json) => _$GetAccountsRequestFromJson(json);




@override
Map<String, dynamic> toJson() {
  return _$GetAccountsRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetAccountsRequest);
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GetAccountsRequest()';
}


}




// dart format on
