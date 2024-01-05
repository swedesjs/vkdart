// ignore_for_file: file_names

import 'package:vkdart/vkdart.dart';

/// Методы для работы с играми ВК.
class DownloadedGames {
  /// Конструктор.
  DownloadedGames(this._api);
  final Api _api;

  /// Метод получает информацию, купил ли пользователь игру или нет.
  Future<Map<String, dynamic>> getPaidStatus(Map<String, Object> params) =>
      _api.request('downloadedGames.getPaidStatus', params);
}
