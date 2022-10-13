import '../api.dart';

class Stats {
  final Api _api;

  Stats(this._api);

  /// Returns statistics of a community or an application.
  Future<Map<String, dynamic>> get(Map<String, Object> params) {
    return _api.request('stats.get', params);
  }

  /// Returns stats for a wall post.
  Future<Map<String, dynamic>> getPostReach(Map<String, Object> params) {
    return _api.request('stats.getPostReach', params);
  }

  Future<Map<String, dynamic>> trackVisitor(Map<String, Object> params) {
    return _api.request('stats.trackVisitor', params);
  }
}
