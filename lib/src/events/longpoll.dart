/// Абстрактный класс LongPoll
abstract class Longpoll {
  /// Возвращает события LongPoll API экзепляром класса [Stream]
  /// ```dart
  /// .onEvent().listen((event) {
  ///   print(event)
  /// })
  /// ```
  Stream<dynamic> onEvent();

  /// Запускает прослушку событий.
  /// Для того чтоб воспользоваться событиями воспользуйтесь функцией [onEvent].
  Future<void> start();

  /// Останавливает прослушку событий
  void stop();

  /// Геттер сообщающий о том, запущен ли Callback API, или же нет
  bool get isStart;
}
