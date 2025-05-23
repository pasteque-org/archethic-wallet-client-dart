import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscription.freezed.dart';
part 'subscription.g.dart';

/// Represents an active subscription to a data stream from the Archethic Wallet.
///
/// [DataT] is the type of data expected from the subscription updates.
@freezed
abstract class Subscription<DataT> with _$Subscription<DataT> {
  /// Creates a [Subscription] instance.
  ///
  /// [id] is the unique identifier for this subscription.
  /// [updates] is the stream that will emit data updates of type [DataT].
  const factory Subscription({
    required final String id,
    required final Stream<DataT> updates,
  }) = _Subscription;

  const Subscription._();

  /// Converts this [Subscription] to a JSON object containing only its [id].
  /// Useful for unsubscribe requests.
  Map<String, dynamic> toJson() => {'subscriptionId': id};
}

/// Represents an update received for an active subscription.
@freezed
abstract class SubscriptionUpdate with _$SubscriptionUpdate {
  /// Creates a [SubscriptionUpdate] instance.
  ///
  /// [subscriptionId] is the identifier of the subscription this update belongs to.
  /// [data] is the actual data payload of the update.
  const factory SubscriptionUpdate({
    required final String subscriptionId,
    required final Map<String, dynamic> data,
  }) = _SubscriptionUpdate;

  const SubscriptionUpdate._();

  /// Creates a [SubscriptionUpdate] instance from a JSON object.
  factory SubscriptionUpdate.fromJson(final Map<String, dynamic> json) =>
      _$SubscriptionUpdateFromJson(json);
}

/// Represents the response received when a subscription is successfully created.
@freezed
abstract class SubscribeResponse with _$SubscribeResponse {
  /// Creates a [SubscribeResponse] instance.
  ///
  /// [subscriptionId] is the unique identifier for the newly created subscription.
  const factory SubscribeResponse({required final String subscriptionId}) =
      _SubscribeResponse;
  const SubscribeResponse._();

  /// Creates a [SubscribeResponse] instance from a JSON object.
  factory SubscribeResponse.fromJson(final Map<String, dynamic> json) =>
      _$SubscribeResponseFromJson(json);
}

/// Represents a request to unsubscribe from an active subscription.
@freezed
abstract class UnsubscribeRequest with _$UnsubscribeRequest {
  /// Creates an [UnsubscribeRequest] instance.
  ///
  /// [subscriptionId] is the identifier of the subscription to unsubscribe from.
  const factory UnsubscribeRequest({required final String subscriptionId}) =
      _UnsubscribeRequest;
  const UnsubscribeRequest._();

  /// Creates an [UnsubscribeRequest] instance from a JSON object.
  factory UnsubscribeRequest.fromJson(final Map<String, dynamic> json) =>
      _$UnsubscribeRequestFromJson(json);
}
