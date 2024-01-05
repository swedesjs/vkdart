import 'package:vkdart/src/api.dart';

/// Методы для работы с подкастами.
class Podcasts {
  /// Конструктор.
  Podcasts(this._api);
  final Api _api;

  /// Выполняет поиск подкастов по ключевым фразам.
  Future<Map<String, dynamic>> searchPodcast(Map<String, Object> params) =>
      _api.request('podcasts.searchPodcast', params);
}
