import '../api.dart';

class DownloadedGames {
  final Api _api;

  DownloadedGames(this._api);

  Future<Map<String, dynamic>> getPaidStatus(Map<String, Object> params) {
    return _api.request('downloadedGames.getPaidStatus', params);
  }
}
