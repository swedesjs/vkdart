import 'package:vkdart/src/api.dart';

/// Методы для работы с переводом.
class Translations {
  /// Конструктор.
  Translations(this._api);

  final Api _api;

  /// Переводит текст.
  Future<Map<String, dynamic>> translate(Map<String, Object> params) =>
      _api.request('translations.translate', params);
}
