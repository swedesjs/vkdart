// ignore_for_file: file_names

import 'package:vkdart/vkdart.dart';

class DownloadedGames {
  final Api _api;

  DownloadedGames(this._api);

  Future<Map<String, dynamic>> getPaidStatus(Map<String, Object> params) {
    return _api.request('downloadedGames.getPaidStatus', params);
  }
}
