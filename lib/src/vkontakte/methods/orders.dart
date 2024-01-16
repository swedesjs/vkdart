part of '../api.dart';

/// Методы этой секции предоставляют дополнительную
/// возможность управления состоянием заказов,
/// которые были сделаны пользователями в приложениях.
class Orders {
  /// Конструктор.
  Orders(this._api);
  final Api _api;

  /// Отменяет подписку.
  Future<ApiResponse<T>> cancelSubscription<T>(Map<String, Object> params) =>
      _api.request<T>('orders.cancelSubscription', params);

  /// Changes order status.
  Future<ApiResponse<T>> changeState<T>(Map<String, Object> params) =>
      _api.request<T>('orders.changeState', params);

  /// Returns a list of orders.
  Future<ApiResponse<T>> get<T>(Map<String, Object> params) =>
      _api.request<T>('orders.get', params);

  /// Возвращает стоимость голосов в валюте пользователя.
  Future<ApiResponse<T>> getAmount<T>(Map<String, Object> params) =>
      _api.request<T>('orders.getAmount', params);

  /// Returns information about orders by their IDs.
  Future<ApiResponse<T>> getById<T>(Map<String, Object> params) =>
      _api.request<T>('orders.getById', params);

  /// Получает информацию о подписке по её идентификатору.
  Future<ApiResponse<T>> getUserSubscriptionById<T>(
    Map<String, Object> params,
  ) =>
      _api.request<T>('orders.getUserSubscriptionById', params);

  /// Получает список активных подписок пользователя.
  Future<ApiResponse<T>> getUserSubscriptions<T>(Map<String, Object> params) =>
      _api.request<T>('orders.getUserSubscriptions', params);

  /// Обновляет цену подписки для пользователя.
  Future<ApiResponse<T>> updateSubscription<T>(Map<String, Object> params) =>
      _api.request<T>('orders.updateSubscription', params);
}
