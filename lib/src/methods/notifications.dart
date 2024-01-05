import 'package:vkdart/src/api.dart';

/// Методы для работы с оповещениями.
class Notifications {
  /// Конструктор.
  Notifications(this._api);
  final Api _api;

  /// Returns a list of notifications about other users' feedback
  /// to the current user's wall posts.
  Future<Map<String, dynamic>> get(Map<String, Object> params) =>
      _api.request('notifications.get', params);

  /// Resets the counter of new notifications about other users' feedback to the
  /// current user's wall posts.
  Future<Map<String, dynamic>> markAsViewed(Map<String, Object> params) =>
      _api.request('notifications.markAsViewed', params);

  /// Метод отправляет уведомление пользователю мини-приложения.
  Future<Map<String, dynamic>> sendMessage(Map<String, Object> params) =>
      _api.request('notifications.sendMessage', params);
}
