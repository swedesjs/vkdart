part of '../api.dart';

/// Методы для работы с подкастами.
class Podcasts {
  /// Конструктор.
  Podcasts(this._api);
  final Api _api;

  /// Выполняет поиск подкастов по ключевым фразам.
  Future<ApiResponse<T>> searchPodcast<T>(Map<String, Object> params) =>
      _api.request<T>('podcasts.searchPodcast', params);
}
