import 'dart:async';

import 'package:vkdart/model.dart';

/// Базовый класс получателя обновлений.
abstract class AbstractUpdateFetcher {
  final StreamController<VkDartUpdate> _updatesController;
  Future<void>? _disposeFuture;

  /// Конструктор.
  AbstractUpdateFetcher() : _updatesController = StreamController.broadcast();

  /// Добавляет [update] в поток обновлений.
  void emitUpdate(VkDartUpdate update) => _updatesController.add(update);

  /// Передаёт ошибку получателя подписчикам потока обновлений.
  void emitError(Object error, StackTrace stackTrace) =>
      _updatesController.addError(error, stackTrace);

  /// Возвращает поток событий [VkDartUpdate].
  /// Подписчики этого потока получают событие [VkDartUpdate] при каждом вызове [emitUpdate].
  Stream<VkDartUpdate> onUpdate() => _updatesController.stream;

  /// Запускает получатель обновлений.
  Future<void> start();

  /// Останавливает получатель обновлений.
  Future<void> stop();

  /// Закрывает поток обновлений.
  ///
  /// Повторные вызовы ожидают одну и ту же операцию закрытия.
  Future<void> dispose() =>
      _disposeFuture ??= _updatesController.close().then<void>((_) {});
}
