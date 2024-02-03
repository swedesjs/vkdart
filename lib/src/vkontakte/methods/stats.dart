import 'package:vkdart/vkontakte.dart';

/// Methods for working with statistics.
///
/// See https://dev.vk.com/ru/method/stats
class Stats {
  // ignore: public_member_api_docs
  Stats(this._api);
  final Api _api;

  /// Returns statistics of a community or an application.
  Future<ApiResponse<T>> get<T>(Map<String, Object> params) =>
      _api.request<T>('stats.get', params);

  /// Returns stats for a wall post.
  Future<ApiResponse<T>> getPostReach<T>(Map<String, Object> params) =>
      _api.request<T>('stats.getPostReach', params);

  /// Adds data about the current session to the app's attendance statistics.
  Future<ApiResponse<T>> trackVisitor<T>(Map<String, Object> params) =>
      _api.request<T>('stats.trackVisitor', params);
}
