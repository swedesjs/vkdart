import 'package:http/http.dart' as http;
import 'package:vkdart/src/util/http_client.dart';
import 'package:vkdart/src/vkontakte/api/api.dart';
import 'package:vkdart/src/vkontakte/model/api_error.dart';

/// Список языков, поддерживаемых VK API.
enum LangApi {
  /// Русский.
  ru,

  /// Украинский.
  uk,

  /// Белорусский.
  be,

  /// Английский.
  en,

  /// Финский.
  fi,

  /// Немецкий.
  de,

  /// Итальянский.
  it
}

/// Класс для взаимодействия с VK API.
class Vkontakte {
  static const _baseUrl = 'https://api.vk.ru/method/';

  final String _token;
  final LangApi _language;
  final String _version;
  final http.Client? _client;

  /// Создаёт базовый экземпляр класса [Vkontakte].
  ///
  /// [token] — ключ доступа.
  /// [language] — язык, на котором будут возвращаться данные,
  /// например названия стран и городов.
  /// [version] — используемая версия API.
  /// [client] — необязательный HTTP-клиент, закрытие которого остаётся
  /// ответственностью вызывающего кода.
  const Vkontakte({
    required String token,
    required LangApi language,
    required String version,
    http.Client? client,
  })  : _token = token,
        _language = language,
        _version = version,
        _client = client;

  /// Позволяет отправлять запросы к VK API.
  Future<Object> request(String methodName,
      [Map<String, dynamic> body = const {}]) async {
    final requestBody = {
      ...body,
      'v': _version,
      'lang': _language.name,
    };

    final headers = {'Authorization': 'Bearer $_token'};

    final data = await HttpClient.httpPost(
      _baseUrl + methodName,
      body: requestBody,
      headers: headers,
      client: _client,
    );

    // VK может вернуть ошибку в JSON даже при успешно выполненном HTTP-запросе.
    final error = (data['error'] as Map?)?.cast<String, dynamic>();
    if (error != null) throw ApiException(error);

    return data['response'] as Object;
  }

  /// Раздел API для работы с аккаунтом пользователя ВКонтакте.
  /// https://dev.vk.com/ru/method/account
  ///
  /// Примеры использования:
  /// ```dart
  /// final vk = Vkontakte(
  ///   token: 'your_token',
  ///   language: LangApi.ru,
  ///   version: '5.131',
  /// );
  ///
  /// final response = vk.account.getAppPermissions(userId: 123456); // response = 404040 - битая маска прав доступа
  /// ```
  AccountApi get account => AccountApi(this);
}

// ignore: public_member_api_docs
class ApiException extends ApiErrorModel implements Exception {
  // ignore: public_member_api_docs
  ApiException(super.payload);

  @override
  String toString() => 'ApiException[$code]: $message';
}
