import 'package:vkdart/src/api.dart';

/// Методы этой секции предоставляют дополнительную
/// возможность управления состоянием заказов,
/// которые были сделаны пользователями в приложениях.
class Orders {
  /// Конструктор.
  Orders(this._api);
  final Api _api;

  /// Отменяет подписку.
  Future<Map<String, dynamic>> cancelSubscription(Map<String, Object> params) =>
      _api.request('orders.cancelSubscription', params);

  /// Changes order status.
  Future<Map<String, dynamic>> changeState(Map<String, Object> params) =>
      _api.request('orders.changeState', params);

  /// Returns a list of orders.
  Future<Map<String, dynamic>> get(Map<String, Object> params) =>
      _api.request('orders.get', params);

  /// Возвращает стоимость голосов в валюте пользователя.
  Future<Map<String, dynamic>> getAmount(Map<String, Object> params) =>
      _api.request('orders.getAmount', params);

  /// Returns information about orders by their IDs.
  Future<Map<String, dynamic>> getById(Map<String, Object> params) =>
      _api.request('orders.getById', params);

  /// Получает информацию о подписке по её идентификатору.
  Future<Map<String, dynamic>> getUserSubscriptionById(
    Map<String, Object> params,
  ) =>
      _api.request('orders.getUserSubscriptionById', params);

  /// Получает список активных подписок пользователя.
  Future<Map<String, dynamic>> getUserSubscriptions(
    Map<String, Object> params,
  ) =>
      _api.request('orders.getUserSubscriptions', params);

  /// Обновляет цену подписки для пользователя.
  Future<Map<String, dynamic>> updateSubscription(Map<String, Object> params) =>
      _api.request('orders.updateSubscription', params);
}
