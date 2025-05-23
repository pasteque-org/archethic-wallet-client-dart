import 'package:freezed_annotation/freezed_annotation.dart';

part 'refresh_current_account.freezed.dart';
part 'refresh_current_account.g.dart';

/// Represents a request to refresh the information for the current account in the wallet.
/// This request typically does not have any parameters.
@freezed
abstract class RefreshCurrentAccountRequest
    with _$RefreshCurrentAccountRequest {
  /// Creates a [RefreshCurrentAccountRequest] instance.
  const factory RefreshCurrentAccountRequest() = _RefreshCurrentAccountRequest;
  const RefreshCurrentAccountRequest._();

  /// Creates a [RefreshCurrentAccountRequest] instance from a JSON object.
  factory RefreshCurrentAccountRequest.fromJson(
    final Map<String, dynamic> json,
  ) => _$RefreshCurrentAccountRequestFromJson(json);
}

/// Represents the response from a request to refresh the current account information.
/// This response typically does not contain any specific data, indicating success if no error occurs.
@freezed
abstract class RefreshCurrentAccountResponse
    with _$RefreshCurrentAccountResponse {
  /// Creates a [RefreshCurrentAccountResponse] instance.
  const factory RefreshCurrentAccountResponse() =
      _RefreshCurrentAccountResponse;
  const RefreshCurrentAccountResponse._();

  /// Creates a [RefreshCurrentAccountResponse] instance from a JSON object.
  factory RefreshCurrentAccountResponse.fromJson(
    final Map<String, dynamic> json,
  ) => _$RefreshCurrentAccountResponseFromJson(json);
}
