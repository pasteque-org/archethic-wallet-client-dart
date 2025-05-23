import 'package:freezed_annotation/freezed_annotation.dart';

part 'keychain_derive_keypair.freezed.dart';
part 'keychain_derive_keypair.g.dart';

/// Represents the result of a keychain keypair derivation operation.
@freezed
abstract class KeychainDeriveKeypairResult with _$KeychainDeriveKeypairResult {
  /// Creates a [KeychainDeriveKeypairResult] instance.
  ///
  /// [publicKey] is the derived public key string.
  const factory KeychainDeriveKeypairResult({required final String publicKey}) =
      _KeychainDeriveKeypairResult;
  const KeychainDeriveKeypairResult._();

  /// Creates a [KeychainDeriveKeypairResult] instance from a JSON object.
  factory KeychainDeriveKeypairResult.fromJson(
    final Map<String, dynamic> json,
  ) => _$KeychainDeriveKeypairResultFromJson(json);
}

/// Represents a request to derive a keypair using the keychain.
@freezed
abstract class KeychainDeriveKeypairRequest
    with _$KeychainDeriveKeypairRequest {
  /// Creates a [KeychainDeriveKeypairRequest] instance.
  ///
  /// [serviceName] is the name of the service to use for derivation.
  /// [index] is the chain index to derive (defaults to 0).
  /// [pathSuffix] is an optional additional string to append to the service derivation path (defaults to empty).
  const factory KeychainDeriveKeypairRequest({
    required final String serviceName,
    @Default(0) final int index,
    @Default('') final String pathSuffix,
  }) = _KeychainDeriveKeypairRequest;
  const KeychainDeriveKeypairRequest._();

  /// Creates a [KeychainDeriveKeypairRequest] instance from a JSON object.
  factory KeychainDeriveKeypairRequest.fromJson(
    final Map<String, dynamic> json,
  ) => _$KeychainDeriveKeypairRequestFromJson(json);
}
