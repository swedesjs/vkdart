import 'package:vkdart/vkontakte.dart';

/// Methods for working with statistics.
///
/// See https://dev.vk.com/ru/method/stats
class Stats {
  // ignore: public_member_api_docs
  Stats(this._api);
  final Api _api;

  /// Returns statistics of a community or an application.
  Future<Object> get(Map<String, dynamic> params) =>
      _api.request('stats.get', params);

  /// Returns stats for a wall post.
  Future<Object> getPostReach(Map<String, dynamic> params) =>
      _api.request('stats.getPostReach', params);

  /// Adds data about the current session to the app's attendance statistics.
  Future<Object> trackVisitor(Map<String, dynamic> params) =>
      _api.request('stats.trackVisitor', params);
}
