part of '../api.dart';

/// Методы для работы с переводом.
class Translations {
  /// Конструктор.
  Translations(this._api);

  final Api _api;

  /// Переводит текст.
  Future<ApiResponse<T>> translate<T>(Map<String, Object> params) =>
      _api.request<T>('translations.translate', params);
}
