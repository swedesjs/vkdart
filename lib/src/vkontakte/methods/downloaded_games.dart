import 'package:vkdart/vkontakte.dart';

/// Методы для работы с играми ВК.
class DownloadedGames {
  /// Конструктор.
  DownloadedGames(this._api);
  final Api _api;

  /// Метод получает информацию, купил ли пользователь игру или нет.
  Future<ApiResponse<T>> getPaidStatus<T>(Map<String, Object> params) =>
      _api.request<T>('downloadedGames.getPaidStatus', params);
}
