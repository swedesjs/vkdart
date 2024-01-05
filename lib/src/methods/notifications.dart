part of vkdart.methods;

/// Методы для работы с оповещениями.
class Notifications {
  /// Конструктор.
  Notifications(this._api);
  final Api _api;

  /// Returns a list of notifications about other users' feedback
  /// to the current user's wall posts.
  MethodTypeReturn get(MethodTypeParams params) =>
      _api.request('notifications.get', params);

  /// Resets the counter of new notifications about other users' feedback to the
  /// current user's wall posts.
  MethodTypeReturn markAsViewed(MethodTypeParams params) =>
      _api.request('notifications.markAsViewed', params);

  /// Метод отправляет уведомление пользователю мини-приложения.
  MethodTypeReturn sendMessage(MethodTypeParams params) =>
      _api.request('notifications.sendMessage', params);
}
