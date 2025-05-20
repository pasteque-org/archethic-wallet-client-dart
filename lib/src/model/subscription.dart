import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscription.freezed.dart';
part 'subscription.g.dart';

@freezed
abstract class Subscription<DataT> with _$Subscription<DataT> {
  const factory Subscription({
    required final String id,
    required final Stream<DataT> updates,
  }) = _Subscription;

  const Subscription._();

  Map<String, dynamic> toJson() => {'subscriptionId': id};
}

@freezed
abstract class SubscriptionUpdate with _$SubscriptionUpdate {
  const factory SubscriptionUpdate({
    required final String subscriptionId,
    required final Map<String, dynamic> data,
  }) = _SubscriptionUpdate;

  const SubscriptionUpdate._();

  factory SubscriptionUpdate.fromJson(final Map<String, dynamic> json) =>
      _$SubscriptionUpdateFromJson(json);
}

@freezed
abstract class SubscribeResponse with _$SubscribeResponse {
  const factory SubscribeResponse({required final String subscriptionId}) =
      _SubscribeResponse;
  const SubscribeResponse._();

  factory SubscribeResponse.fromJson(final Map<String, dynamic> json) =>
      _$SubscribeResponseFromJson(json);
}

@freezed
abstract class UnsubscribeRequest with _$UnsubscribeRequest {
  const factory UnsubscribeRequest({required final String subscriptionId}) =
      _UnsubscribeRequest;
  const UnsubscribeRequest._();

  factory UnsubscribeRequest.fromJson(final Map<String, dynamic> json) =>
      _$UnsubscribeRequestFromJson(json);
}
