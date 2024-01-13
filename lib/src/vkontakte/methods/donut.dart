part of '../../methods.dart';

/// Методы для работы с VK Donut. [Документация VK Donut.](https://dev.vk.com/ru/api/donut/getting-started)
class Donut {
  /// Конструктор.
  Donut(this._api);
  final Api _api;

  /// Возвращает список донов, которые подписаны на определенные сообщества, из числа друзей пользователя.
  Future<ApiResponse<T>> getFriends<T>(MethodTypeParams params) =>
      _api.request<T>('donut.getFriends', params);

  /// Возвращает информацию о подписке VK Donut.
  Future<ApiResponse<T>> getSubscription<T>(MethodTypeParams params) =>
      _api.request<T>('donut.getSubscription', params);

  /// Returns a list of user's VK Donut subscriptions.
  Future<ApiResponse<T>> getSubscriptions<T>(MethodTypeParams params) =>
      _api.request<T>('donut.getSubscriptions', params);

  /// Возвращает информацию о том, подписан ли пользователь на платный контент
  /// (является доном).
  Future<ApiResponse<T>> isDon<T>(MethodTypeParams params) =>
      _api.request<T>('donut.isDon', params);
}
