import 'api.dart';

class VkDart {
  final String token;

  VkDart({required this.token});

  /// Создает экземпляр VK Api (Класса [Api])
  Api getApi({
    LangApi lang = LangApi.ru,
    String version = '5.131',
  }) =>
      Api(language: lang, version: version);
}
