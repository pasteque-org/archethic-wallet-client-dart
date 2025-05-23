import 'package:freezed_annotation/freezed_annotation.dart';

part 'request.freezed.dart';
part 'request.g.dart';

/// Identifies a request source.
///
/// Contains information about the application or entity originating the request.
@freezed
abstract class RequestOrigin with _$RequestOrigin {
  /// Creates a [RequestOrigin] instance.
  ///
  /// [name] is the name of the originating decentralized application.
  /// [url] is an optional URL associated with the origin.
  /// [logo] is an optional URL for a logo representing the origin.
  const factory RequestOrigin({
    required final String name,
    final String? url,
    final String? logo,
  }) = _RequestOrigin;
  const RequestOrigin._();

  /// Creates a [RequestOrigin] instance from a JSON object.
  factory RequestOrigin.fromJson(final Map<String, dynamic> json) =>
      _$RequestOriginFromJson(json);
}

/// Represents a generic request made to the Archethic Wallet Client.
@freezed
abstract class Request with _$Request {
  /// Creates a [Request] instance.
  ///
  /// [origin] specifies the source of the request.
  /// [version] indicates the RPC protocol version being used.
  /// [payload] contains the specific data for the request.
  const factory Request({
    required final RequestOrigin origin,
    required final int version, // Rpc protocol version
    required final Map<String, dynamic> payload,
  }) = _Request;
  const Request._();

  /// Creates a [Request] instance from a JSON object.
  factory Request.fromJson(final Map<String, dynamic> json) =>
      _$RequestFromJson(json);
}
