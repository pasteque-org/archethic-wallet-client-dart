import 'package:freezed_annotation/freezed_annotation.dart';

part 'request.freezed.dart';
part 'request.g.dart';

/// Identifies a request source.
@freezed
abstract class RequestOrigin with _$RequestOrigin {
  const factory RequestOrigin({
    required final String name,
    final String? url,
    final String? logo,
  }) = _RequestOrigin;
  const RequestOrigin._();

  factory RequestOrigin.fromJson(final Map<String, dynamic> json) =>
      _$RequestOriginFromJson(json);
}

@freezed
abstract class Request with _$Request {
  const factory Request({
    required final RequestOrigin origin,
    required final int version, // Rpc protocol version
    required final Map<String, dynamic> payload,
  }) = _Request;
  const Request._();

  factory Request.fromJson(final Map<String, dynamic> json) =>
      _$RequestFromJson(json);
}
