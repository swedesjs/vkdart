part of '../../../events.dart';

/// Base class for update fetcher.
abstract class AbstractUpdateFetcher {
  /// constructor
  AbstractUpdateFetcher() : _updatesController = StreamController();

  final StreamController<Update> _updatesController;

  /// add [update] to updates stream.
  void emitUpdate(Update update) => _updatesController.add(update);

  /// Returns a stream of [Update] events.
  /// Listeners on this stream will receive an [Update] event whenever [emitUpdate] is called.
  Stream<Update> onUpdate() => _updatesController.stream;

  /// Starts the update fetcher.
  Future<void> start();

  /// Stops the update fetcher.
  Future<void> stop();
}
