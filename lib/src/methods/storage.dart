import '../api.dart';

class Storage {
  final Api _api;

  Storage(this._api);

  /// Returns a value of variable with the name set by key parameter.
  Future<Map<String, dynamic>> get(Map<String, Object> params) {
    return _api.request('storage.get', params);
  }

  /// Returns the names of all variables.
  Future<Map<String, dynamic>> getKeys(Map<String, Object> params) {
    return _api.request('storage.getKeys', params);
  }

  /// Saves a value of variable with the name set by 'key' parameter.
  Future<Map<String, dynamic>> set(Map<String, Object> params) {
    return _api.request('storage.set', params);
  }
}
