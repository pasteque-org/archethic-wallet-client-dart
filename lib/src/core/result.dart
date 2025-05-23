import 'package:archethic_wallet_client/src/model/failures.dart';
import 'package:flutter/foundation.dart';

/// Extension on `Future<Result<ValueT, FailureT>>` to provide convenient access
/// to the result's value or failure.
extension FutureResult<ValueT, FailureT extends Exception>
    on Future<Result<ValueT, FailureT>> {
  /// Returns the value if the [Result] is a success, otherwise throws the encapsulated error.
  ///
  /// This allows for a more concise way to access the value of an awaited [Result]:
  /// ```dart
  /// // Instead of:
  /// // Future<Result<Value, Failure>> futureResult;
  /// // final value = (await futureResult).valueOrThrow;
  ///
  /// // You can write:
  /// // Future<Result<Value, Failure>> futureResult;
  /// // final value = await futureResult.valueOrThrow;
  /// ```
  Future<ValueT> get valueOrThrow async {
    return (await this).valueOrThrow;
  }

  /// Returns the value if the [Result] is a success, otherwise returns `null`.
  Future<ValueT?> get valueOrNull async {
    return (await this).valueOrNull;
  }
}

/// Represents the outcome of an operation that can either succeed with a [ValueT]
/// or fail with a [FailureT].
///
/// This class is typically used to handle operations that might produce an error,
/// allowing for a clear distinction between successful and failed states.
@immutable
abstract class Result<ValueT, FailureT extends Exception> {
  /// Creates a [Result] representing a successful operation with the given [value].
  const factory Result.success(final ValueT value) = ResultSuccess;

  /// Creates a [Result] representing a failed operation with the given [failure].
  const factory Result.failure(final FailureT failure) = ResultFailure;

  /// Returns the success value if this [Result] is a success, otherwise `null`.
  ValueT? get valueOrNull;

  /// Returns the failure error if this [Result] is a failure, otherwise `null`.
  FailureT? get failureOrNull;

  /// Returns `true` if this [Result] represents a successful operation.
  bool get isValue;

  /// Returns `true` if this [Result] represents a failed operation.
  bool get isFailure;

  /// Executes either the [success] or [failure] callback depending on the state of this [Result].
  ///
  /// [success] is called with the encapsulated value if this is a [ResultSuccess].
  /// [failure] is called with the encapsulated error if this is a [ResultFailure].
  /// Returns the result of the executed callback.
  T when<T>({
    required final T Function(ValueT value) success,
    required final T Function(FailureT failure) failure,
  });

  /// Executes either the [success] or [failure] callback depending on the state of this [Result],
  /// providing the [Result] instance itself to the callback.
  ///
  /// [success] is called with the [ResultSuccess] instance if this is a success.
  /// [failure] is called with the [ResultFailure] instance if this is a failure.
  /// Returns the result of the executed callback.
  T map<T>({
    required final T Function(ResultSuccess<ValueT, FailureT> result) success,
    required final T Function(ResultFailure<ValueT, FailureT> result) failure,
  });

  /// Returns the success value if this [Result] is a success, otherwise throws the encapsulated error.
  ValueT get valueOrThrow;

  /// Guards the execution of an asynchronous [run] function, wrapping its outcome in a [Result].
  ///
  /// If [run] completes successfully, returns a [Result.success] with the returned value.
  /// If [run] throws a [Failure], returns a [Result.failure] with that [Failure].
  /// If [run] throws any other [Exception], returns a [Result.failure] with [Failure.other].
  ///
  /// This is useful for converting throwing asynchronous operations into a [Result] type,
  /// especially when the expected error type is [Failure] and specific error cases don't need
  /// distinct handling beyond being a [Failure.other].
  static Future<Result<ValueT, Failure>> guard<ValueT>(
    final Future<ValueT> Function() run,
  ) async {
    try {
      return Result.success(await run());
    } on Failure catch (e) {
      return Result.failure(e);
    } on Exception catch (_) {
      return const Result.failure(Failure.other);
    }
  }
}

/// Represents a successful outcome of an operation, containing the [value].
class ResultSuccess<ValueT, FailureT extends Exception>
    implements Result<ValueT, FailureT> {
  /// Creates a [ResultSuccess] instance with the given [value].
  const ResultSuccess(this.value);

  /// The successful value of the operation.
  final ValueT value;

  @override
  ValueT? get valueOrNull => value;

  @override
  FailureT? get failureOrNull => null;

  @override
  bool get isFailure => false;

  @override
  bool get isValue => true;

  @override
  ValueT get valueOrThrow => value;

  @override
  T when<T>({
    required final T Function(ValueT value) success,
    required final T Function(FailureT failure) failure,
  }) => success(value);

  @override
  T map<T>({
    required final T Function(ResultSuccess<ValueT, FailureT> result) success,
    required final T Function(ResultFailure<ValueT, FailureT> result) failure,
  }) => success(this);
}

/// Represents a failed outcome of an operation, containing the [failure] error.
class ResultFailure<ValueT, FailureT extends Exception>
    implements Result<ValueT, FailureT> {
  /// Creates a [ResultFailure] instance with the given [failure] error.
  const ResultFailure(this.failure);

  /// The error that occurred during the operation.
  final FailureT failure;

  @override
  ValueT? get valueOrNull => null;

  @override
  FailureT? get failureOrNull => failure;

  @override
  bool get isFailure => true;

  @override
  bool get isValue => false;

  @override
  ValueT get valueOrThrow => throw failure;

  @override
  T when<T>({
    required final T Function(ValueT value) success,
    required final T Function(FailureT failure) failure,
  }) => failure(this.failure);

  @override
  T map<T>({
    required final T Function(ResultSuccess<ValueT, FailureT> result) success,
    required final T Function(ResultFailure<ValueT, FailureT> result) failure,
  }) => failure(this);
}
