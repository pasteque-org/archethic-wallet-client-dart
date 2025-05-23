import 'package:freezed_annotation/freezed_annotation.dart';

part 'keychain_derive_address.freezed.dart';
part 'keychain_derive_address.g.dart';

/// Represents the result of a keychain address derivation operation.
@freezed
abstract class KeychainDeriveAddressResult with _$KeychainDeriveAddressResult {
  /// Creates a [KeychainDeriveAddressResult] instance.
  ///
  /// [address] is the derived address string.
  const factory KeychainDeriveAddressResult({required final String address}) =
      _KeychainDeriveAddressResult;
  const KeychainDeriveAddressResult._();

  /// Creates a [KeychainDeriveAddressResult] instance from a JSON object.
  factory KeychainDeriveAddressResult.fromJson(
    final Map<String, dynamic> json,
  ) => _$KeychainDeriveAddressResultFromJson(json);
}

/// Represents a request to derive an address using the keychain.
@freezed
abstract class KeychainDeriveAddressRequest
    with _$KeychainDeriveAddressRequest {
  /// Creates a [KeychainDeriveAddressRequest] instance.
  ///
  /// [serviceName] is the name of the service to use for derivation.
  /// [index] is the chain index to derive (defaults to 0).
  /// [pathSuffix] is an optional additional string to append to the service derivation path (defaults to empty).
  const factory KeychainDeriveAddressRequest({
    required final String serviceName,
    @Default(0) final int index,
    @Default('') final String pathSuffix,
  }) = _KeychainDeriveAddressRequest;
  const KeychainDeriveAddressRequest._();

  /// Creates a [KeychainDeriveAddressRequest] instance from a JSON object.
  factory KeychainDeriveAddressRequest.fromJson(
    final Map<String, dynamic> json,
  ) => _$KeychainDeriveAddressRequestFromJson(json);
}
