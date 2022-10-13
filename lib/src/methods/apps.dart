import '../api.dart';

class Apps {
  final Api _api;

  Apps(this._api);

  /// Deletes all request notifications from the current app.
  Future<Map<String, dynamic>> deleteAppRequests(Map<String, Object> params) {
    return _api.request('apps.deleteAppRequests', params);
  }

  /// Returns applications data.
  Future<Map<String, dynamic>> get(Map<String, Object> params) {
    return _api.request('apps.get', params);
  }

  /// Returns a list of applications (apps) available to users in the App Catalog.
  Future<Map<String, dynamic>> getCatalog(Map<String, Object> params) {
    return _api.request('apps.getCatalog', params);
  }

  /// Creates friends list for requests and invites in current app.
  Future<Map<String, dynamic>> getFriendsList(Map<String, Object> params) {
    return _api.request('apps.getFriendsList', params);
  }

  /// Returns players rating in the game.
  Future<Map<String, dynamic>> getLeaderboard(Map<String, Object> params) {
    return _api.request('apps.getLeaderboard', params);
  }

  /// Returns policies and terms given to a mini app.
  Future<Map<String, dynamic>> getMiniAppPolicies(Map<String, Object> params) {
    return _api.request('apps.getMiniAppPolicies', params);
  }

  /// Returns scopes for auth
  Future<Map<String, dynamic>> getScopes(Map<String, Object> params) {
    return _api.request('apps.getScopes', params);
  }

  /// Returns user score in app
  Future<Map<String, dynamic>> getScore(Map<String, Object> params) {
    return _api.request('apps.getScore', params);
  }

  Future<Map<String, dynamic>> promoHasActiveGift(Map<String, Object> params) {
    return _api.request('apps.promoHasActiveGift', params);
  }

  Future<Map<String, dynamic>> promoUseGift(Map<String, Object> params) {
    return _api.request('apps.promoUseGift', params);
  }

  /// Sends a request to another user in an app that uses VK authorization.
  Future<Map<String, dynamic>> sendRequest(Map<String, Object> params) {
    return _api.request('apps.sendRequest', params);
  }
}
