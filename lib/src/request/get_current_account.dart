import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_current_account.freezed.dart';
part 'get_current_account.g.dart';

/// Represents the result of a request to get the current account selected in the wallet.
@freezed
abstract class GetCurrentAccountResult with _$GetCurrentAccountResult {
  /// Creates a [GetCurrentAccountResult] instance.
  ///
  /// [shortName] is the user-friendly name of the current account.
  /// [serviceName] is the identifier for the service associated with the current account.
  /// [genesisAddress] is the genesis address of the current account.
  const factory GetCurrentAccountResult({
    required final String shortName,
    required final String serviceName,
    required final String genesisAddress,
  }) = _GetCurrentAccountResult;
  const GetCurrentAccountResult._();

  /// Creates a [GetCurrentAccountResult] instance from a JSON object.
  factory GetCurrentAccountResult.fromJson(final Map<String, dynamic> json) =>
      _$GetCurrentAccountResultFromJson(json);
}

/// Represents a request to retrieve the current account selected in the wallet.
/// This request typically does not have any parameters.
@freezed
abstract class GetCurrentAccountRequest with _$GetCurrentAccountRequest {
  /// Creates a [GetCurrentAccountRequest] instance.
  const factory GetCurrentAccountRequest() = _GetCurrentAccountRequest;
  const GetCurrentAccountRequest._();

  /// Creates a [GetCurrentAccountRequest] instance from a JSON object.
  factory GetCurrentAccountRequest.fromJson(final Map<String, dynamic> json) =>
      _$GetCurrentAccountRequestFromJson(json);
}
