import '../api.dart';

class Orders {
  final Api _api;

  Orders(this._api);

  Future<Map<String, dynamic>> cancelSubscription(Map<String, Object> params) {
    return _api.request('orders.cancelSubscription', params);
  }

  /// Changes order status.
  Future<Map<String, dynamic>> changeState(Map<String, Object> params) {
    return _api.request('orders.changeState', params);
  }

  /// Returns a list of orders.
  Future<Map<String, dynamic>> get(Map<String, Object> params) {
    return _api.request('orders.get', params);
  }

  Future<Map<String, dynamic>> getAmount(Map<String, Object> params) {
    return _api.request('orders.getAmount', params);
  }

  /// Returns information about orders by their IDs.
  Future<Map<String, dynamic>> getById(Map<String, Object> params) {
    return _api.request('orders.getById', params);
  }

  Future<Map<String, dynamic>> getUserSubscriptionById(Map<String, Object> params) {
    return _api.request('orders.getUserSubscriptionById', params);
  }

  Future<Map<String, dynamic>> getUserSubscriptions(Map<String, Object> params) {
    return _api.request('orders.getUserSubscriptions', params);
  }

  Future<Map<String, dynamic>> updateSubscription(Map<String, Object> params) {
    return _api.request('orders.updateSubscription', params);
  }
}
