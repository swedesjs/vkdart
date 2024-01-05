import 'package:vkdart/src/api.dart';
import 'package:vkdart/src/types/methods.dart';

/// Методы этой секции предоставляют дополнительную
/// возможность управления состоянием заказов,
/// которые были сделаны пользователями в приложениях.
class Orders {
  /// Конструктор.
  Orders(this._api);
  final Api _api;

  /// Отменяет подписку.
  MethodTypeReturn cancelSubscription(MethodTypeParams params) =>
      _api.request('orders.cancelSubscription', params);

  /// Changes order status.
  MethodTypeReturn changeState(MethodTypeParams params) =>
      _api.request('orders.changeState', params);

  /// Returns a list of orders.
  MethodTypeReturn get(MethodTypeParams params) =>
      _api.request('orders.get', params);

  /// Возвращает стоимость голосов в валюте пользователя.
  MethodTypeReturn getAmount(MethodTypeParams params) =>
      _api.request('orders.getAmount', params);

  /// Returns information about orders by their IDs.
  MethodTypeReturn getById(MethodTypeParams params) =>
      _api.request('orders.getById', params);

  /// Получает информацию о подписке по её идентификатору.
  MethodTypeReturn getUserSubscriptionById(MethodTypeParams params) =>
      _api.request('orders.getUserSubscriptionById', params);

  /// Получает список активных подписок пользователя.
  MethodTypeReturn getUserSubscriptions(MethodTypeParams params) =>
      _api.request('orders.getUserSubscriptions', params);

  /// Обновляет цену подписки для пользователя.
  MethodTypeReturn updateSubscription(MethodTypeParams params) =>
      _api.request('orders.updateSubscription', params);
}
