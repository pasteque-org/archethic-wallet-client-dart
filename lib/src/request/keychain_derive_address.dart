import 'package:freezed_annotation/freezed_annotation.dart';

part 'keychain_derive_address.freezed.dart';
part 'keychain_derive_address.g.dart';

@freezed
abstract class KeychainDeriveAddressResult with _$KeychainDeriveAddressResult {
  const factory KeychainDeriveAddressResult({required final String address}) =
      _KeychainDeriveAddressResult;
  const KeychainDeriveAddressResult._();

  factory KeychainDeriveAddressResult.fromJson(
    final Map<String, dynamic> json,
  ) => _$KeychainDeriveAddressResultFromJson(json);
}

@freezed
abstract class KeychainDeriveAddressRequest
    with _$KeychainDeriveAddressRequest {
  const factory KeychainDeriveAddressRequest({
    required final String serviceName,
    @Default(0) final int index,
    @Default('') final String pathSuffix,
  }) = _KeychainDeriveAddressRequest;
  const KeychainDeriveAddressRequest._();

  factory KeychainDeriveAddressRequest.fromJson(
    final Map<String, dynamic> json,
  ) => _$KeychainDeriveAddressRequestFromJson(json);
}
