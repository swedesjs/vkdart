import '../api.dart';

class Notifications {
  final Api _api;

  Notifications(this._api);

  /// Returns a list of notifications about other users' feedback to the current user's wall posts.
  Future<Map<String, dynamic>> get(Map<String, Object> params) {
    return _api.request('notifications.get', params);
  }

  /// Resets the counter of new notifications about other users' feedback to the current user's wall posts.
  Future<Map<String, dynamic>> markAsViewed(Map<String, Object> params) {
    return _api.request('notifications.markAsViewed', params);
  }

  Future<Map<String, dynamic>> sendMessage(Map<String, Object> params) {
    return _api.request('notifications.sendMessage', params);
  }
}
