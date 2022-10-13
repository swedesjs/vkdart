import '../api.dart';

class Donut {
  final Api _api;

  Donut(this._api);

  Future<Map<String, dynamic>> getFriends(Map<String, Object> params) {
    return _api.request('donut.getFriends', params);
  }

  Future<Map<String, dynamic>> getSubscription(Map<String, Object> params) {
    return _api.request('donut.getSubscription', params);
  }

  /// Returns a list of user's VK Donut subscriptions.
  Future<Map<String, dynamic>> getSubscriptions(Map<String, Object> params) {
    return _api.request('donut.getSubscriptions', params);
  }

  Future<Map<String, dynamic>> isDon(Map<String, Object> params) {
    return _api.request('donut.isDon', params);
  }
}
