import 'package:vkdart/src/api.dart';
import 'package:vkdart/src/types/methods.dart';

/// Методы для работы с переводом.
class Translations {
  /// Конструктор.
  Translations(this._api);

  final Api _api;

  /// Переводит текст.
  MethodTypeReturn translate(MethodTypeParams params) =>
      _api.request('translations.translate', params);
}
