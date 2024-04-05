import 'dart:async';

import 'package:vkdart/model.dart';

/// Base class for update fetcher.
abstract class AbstractUpdateFetcher {
  final StreamController<VkDartUpdate> _updatesController;

  /// constructor
  AbstractUpdateFetcher() : _updatesController = StreamController.broadcast();

  /// add [update] to updates stream.
  void emitUpdate(VkDartUpdate update) => _updatesController.add(update);

  /// Returns a stream of [VkDartUpdate] events.
  /// Listeners on this stream will receive an [VkDartUpdate] event whenever [emitUpdate] is called.
  Stream<VkDartUpdate> onUpdate() => _updatesController.stream;

  /// Starts the update fetcher.
  Future<void> start();

  /// Stops the update fetcher.
  Future<void> stop();
}
