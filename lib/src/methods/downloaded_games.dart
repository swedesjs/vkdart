part of '../../methods.dart';

/// Методы для работы с играми ВК.
class DownloadedGames {
  /// Конструктор.
  DownloadedGames(this._api);
  final Api _api;

  /// Метод получает информацию, купил ли пользователь игру или нет.
  MethodTypeReturn getPaidStatus(MethodTypeParams params) =>
      _api.request('downloadedGames.getPaidStatus', params);
}
