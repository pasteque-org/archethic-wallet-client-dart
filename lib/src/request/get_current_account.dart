import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_current_account.freezed.dart';
part 'get_current_account.g.dart';

@freezed
abstract class GetCurrentAccountResult with _$GetCurrentAccountResult {
  const factory GetCurrentAccountResult({
    required final String shortName,
    required final String serviceName,
    required final String genesisAddress,
  }) = _GetCurrentAccountResult;
  const GetCurrentAccountResult._();

  factory GetCurrentAccountResult.fromJson(final Map<String, dynamic> json) =>
      _$GetCurrentAccountResultFromJson(json);
}

@freezed
abstract class GetCurrentAccountRequest with _$GetCurrentAccountRequest {
  const factory GetCurrentAccountRequest() = _GetCurrentAccountRequest;
  const GetCurrentAccountRequest._();

  factory GetCurrentAccountRequest.fromJson(final Map<String, dynamic> json) =>
      _$GetCurrentAccountRequestFromJson(json);
}
