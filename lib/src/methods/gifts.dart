import '../api.dart';

class Gifts {
  final Api _api;

  Gifts(this._api);

  /// Returns a list of user gifts.
  Future<Map<String, dynamic>> get(Map<String, Object> params) {
    return _api.request('gifts.get', params);
  }
}
