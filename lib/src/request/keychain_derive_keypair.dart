import 'package:freezed_annotation/freezed_annotation.dart';

part 'keychain_derive_keypair.freezed.dart';
part 'keychain_derive_keypair.g.dart';

@freezed
abstract class KeychainDeriveKeypairResult with _$KeychainDeriveKeypairResult {
  const factory KeychainDeriveKeypairResult({required final String publicKey}) =
      _KeychainDeriveKeypairResult;
  const KeychainDeriveKeypairResult._();

  factory KeychainDeriveKeypairResult.fromJson(
    final Map<String, dynamic> json,
  ) => _$KeychainDeriveKeypairResultFromJson(json);
}

@freezed
abstract class KeychainDeriveKeypairRequest
    with _$KeychainDeriveKeypairRequest {
  const factory KeychainDeriveKeypairRequest({
    required final String serviceName,
    @Default(0) final int index,
    @Default('') final String pathSuffix,
  }) = _KeychainDeriveKeypairRequest;
  const KeychainDeriveKeypairRequest._();

  factory KeychainDeriveKeypairRequest.fromJson(
    final Map<String, dynamic> json,
  ) => _$KeychainDeriveKeypairRequestFromJson(json);
}
