// ignore_for_file: file_names

import 'package:vkdart/src/types/methods.dart';
import 'package:vkdart/vkdart.dart';

/// Методы для работы с играми ВК.
class DownloadedGames {
  /// Конструктор.
  DownloadedGames(this._api);
  final Api _api;

  /// Метод получает информацию, купил ли пользователь игру или нет.
  MethodTypeReturn getPaidStatus(MethodTypeParams params) =>
      _api.request('downloadedGames.getPaidStatus', params);
}
