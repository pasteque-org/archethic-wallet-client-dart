import 'dart:async';

import 'package:logging/logging.dart';

/// Ensures that an asynchronous task is executed only once at a time.
///
/// If [run] is called while the task is already in progress, it will return
/// the [Future] of the ongoing task instead of starting a new one.
class SingletonTask<T> {
  /// Creates a [SingletonTask].
  ///
  /// [name] is a descriptive name for the task, used for logging.
  /// [task] is the asynchronous function to be executed.
  SingletonTask({required this.name, required this.task}) {
    _logger = Logger('SingletonTask-$name');
  }

  Completer<T>? _completer;

  /// The descriptive name of the task.
  final String name;

  /// The asynchronous function to be executed.
  final Future<T> Function() task;

  late final Logger _logger;

  /// Runs the task if it's not already running.
  ///
  /// If the task is already in progress, returns the [Future] of the existing run.
  /// Otherwise, starts the task and returns a new [Future] that will complete
  /// with the result or error of the task.
  Future<T> run() {
    if (_completer != null) {
      _logger.info('Task $name is already running. Returning existing future.');
      return _completer!.future;
    }

    _logger.info('Starting task $name...');
    _completer = Completer<T>();

    unawaited(
      Future.sync(() async {
        try {
          final result = await task();
          _completer?.complete(result);
          _logger.info('Task $name completed successfully.');
        } catch (e, stackTrace) {
          _completer?.completeError(e, stackTrace);
          _logger.severe('Task $name failed.', e, stackTrace);
        } finally {
          _completer = null;
        }
      }),
    );

    return _completer!.future;
  }
}
