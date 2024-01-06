part of '../../methods.dart';

/// Методы для работы с подкастами.
class Podcasts {
  /// Конструктор.
  Podcasts(this._api);
  final Api _api;

  /// Выполняет поиск подкастов по ключевым фразам.
  MethodTypeReturn searchPodcast(MethodTypeParams params) =>
      _api.request('podcasts.searchPodcast', params);
}
