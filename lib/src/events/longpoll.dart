abstract class Longpoll {
  Stream onEvent();

  /// Запускает прослушку событий, для того чтоб воспользоваться событиями воспользуйтесь функцией [onEvent]
  Future<void> start();

  /// Останавливает прослушку событий
  void stop();

  get isStart;
}
