part of '../api.dart';

/// Методы для работы с оповещениями.
class Notifications {
  /// Конструктор.
  Notifications(this._api);
  final Api _api;

  /// Returns a list of notifications about other users' feedback
  /// to the current user's wall posts.
  Future<ApiResponse<T>> get<T>(Map<String, Object> params) =>
      _api.request<T>('notifications.get', params);

  /// Resets the counter of new notifications about other users' feedback to the
  /// current user's wall posts.
  Future<ApiResponse<T>> markAsViewed<T>(Map<String, Object> params) =>
      _api.request<T>('notifications.markAsViewed', params);

  /// Метод отправляет уведомление пользователю мини-приложения.
  Future<ApiResponse<T>> sendMessage<T>(Map<String, Object> params) =>
      _api.request<T>('notifications.sendMessage', params);
}
