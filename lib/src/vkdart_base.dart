import 'api.dart';

class VkDart {
  final String _token;

  VkDart({required String token}) : _token = token;

  /// Создает экземпляр VK Api (Класса [Api])
  Api getApi({
    LangApi lang = LangApi.ru,
    String version = '5.131',
  }) =>
      Api(token: _token, language: lang, version: version);
}
