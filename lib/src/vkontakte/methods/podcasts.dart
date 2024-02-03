import 'package:vkdart/vkontakte.dart';

/// Methods for working with podcasts.
///
/// See https://dev.vk.com/ru/method/podcasts
class Podcasts {
  // ignore: public_member_api_docs
  Podcasts(this._api);
  final Api _api;

  /// Searches for podcasts by keywords.
  Future<ApiResponse<T>> searchPodcast<T>(Map<String, Object> params) =>
      _api.request<T>('podcasts.searchPodcast', params);
}
