import '../api.dart';

class Search {
  final Api _api;

  Search(this._api);

  /// Allows the programmer to do a quick search for any substring.
  Future<Map<String, dynamic>> getHints(Map<String, Object> params) {
    return _api.request('search.getHints', params);
  }
}
