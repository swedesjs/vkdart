import 'package:vkdart/src/api.dart';

/// Основной класс
class VkDart {
  /// Конструктор.
  /// В параметр [token] ключ доступа
  VkDart({required String token}) : _token = token;
  final String _token;

  /// Создает экземпляр VK Api (Класса [Api])
  Api getApi({
    LangApi lang = LangApi.ru,
    String version = '5.131',
  }) =>
      Api(token: _token, language: lang, version: version);
}
