import '../api.dart';

class Podcasts {
  final Api _api;

  Podcasts(this._api);

  Future<Map<String, dynamic>> searchPodcast(Map<String, Object> params) {
    return _api.request('podcasts.searchPodcast', params);
  }
}
