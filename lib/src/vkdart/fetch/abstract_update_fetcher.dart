import 'dart:async';

import 'package:vkdart/model.dart';

/// Базовый класс получателя обновлений.
abstract class AbstractUpdateFetcher {
  final StreamController<VkDartUpdate> _updatesController;

  /// Конструктор.
  AbstractUpdateFetcher() : _updatesController = StreamController.broadcast();

  /// Добавляет [update] в поток обновлений.
  void emitUpdate(VkDartUpdate update) => _updatesController.add(update);

  /// Возвращает поток событий [VkDartUpdate].
  /// Подписчики этого потока получают событие [VkDartUpdate] при каждом вызове [emitUpdate].
  Stream<VkDartUpdate> onUpdate() => _updatesController.stream;

  /// Запускает получатель обновлений.
  Future<void> start();

  /// Останавливает получатель обновлений.
  Future<void> stop();
}
