// ignore_for_file: avoid_classes_with_only_static_members

import 'dart:convert';
import 'dart:io' show SocketException;

import 'package:http/http.dart' as http;

/// Исключение, возникающее при ошибках HTTP-клиента.
class HttpClientException implements Exception {
  /// Сообщение об ошибке.
  final String message;

  /// Родительская причина исключения, если она есть.
  final Object? cause;

  /// Создаёт экземпляр [HttpClientException].
  HttpClientException(this.message, {this.cause});

  @override
  String toString() =>
      'HttpClientException: $message\n${cause != null ? 'Cause: $cause' : ''}';
}

/// HTTP-клиент.
class HttpClient {
  static const _headers = {'Content-Type': 'application/x-www-form-urlencoded'};

  // Сложные параметры VK ожидает как JSON; http-клиент отдельно кодирует
  // значения полей формы.
  static String _customValue(Object? value) =>
      value is List || value is Map ? jsonEncode(value) : value.toString();

  static Map<String, String>? _transformBody(Map<String, dynamic>? body) =>
      body?.map((key, value) => MapEntry(key, _customValue(value)));

  /// Проверяет, является ли код ответа сервера состоянием успешным (2xx).
  static bool _isSuccess(int statusCode) =>
      statusCode >= 200 && statusCode < 300;

  /// Создаёт POST-запрос.
  static Future<dynamic> httpPost(
    String url, {
    Map<String, dynamic>? body,
    Map<String, dynamic>? headers,
    http.Client? client,
  }) async {
    final uri = Uri.parse(url);
    final requestBody = _transformBody(body);
    final requestHeaders = <String, String>{
      ...?headers?.map((key, value) => MapEntry(key, value.toString())),
      ..._headers,
    };

    final http.Response response;
    try {
      response = client == null
          ? await http.post(uri, body: requestBody, headers: requestHeaders)
          : await client.post(uri, body: requestBody, headers: requestHeaders);
    } on SocketException catch (e) {
      throw HttpClientException('Ошибка соединения: $uri', cause: e);
    } on http.ClientException catch (e) {
      throw HttpClientException('Ошибка HTTP-клиента: ${e.message}', cause: e);
    } catch (e) {
      throw HttpClientException('Неизвестная ошибка: $e', cause: e);
    }

    // Проверяем, является ли код ответа успешным (2xx). Если нет, выбрасываем исключение с сообщением об ошибке.
    if (!_isSuccess(response.statusCode)) {
      throw HttpClientException(
        'Ошибка HTTP-запроса: ${response.statusCode} ${response.reasonPhrase}',
        cause: response.body,
      );
    }

    return jsonDecode(utf8.decode(response.bodyBytes));
  }
}
