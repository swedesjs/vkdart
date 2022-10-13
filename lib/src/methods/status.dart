import '../api.dart';

class Status {
  final Api _api;

  Status(this._api);

  /// Returns data required to show the status of a user or community.
  Future<Map<String, dynamic>> get(Map<String, Object> params) {
    return _api.request('status.get', params);
  }

  /// Sets a new status for the current user.
  Future<Map<String, dynamic>> set(Map<String, Object> params) {
    return _api.request('status.set', params);
  }
}
