import 'package:vkdart/vkontakte.dart';

/// Methods for working with podcasts.
///
/// See https://dev.vk.com/ru/method/podcasts
class Podcasts {
  // ignore: public_member_api_docs
  Podcasts(this._api);
  final Api _api;

  /// Searches for podcasts by keywords.
  Future<Object> searchPodcast(Map<String, dynamic> params) =>
      _api.request('podcasts.searchPodcast', params);
}
