// ignore_for_file: avoid_classes_with_only_static_members

import 'dart:convert';

import 'package:http/http.dart' as http;

/// HTTP-клиент.
class HttpClient {
  static const _headers = {'Content-Type': 'application/x-www-form-urlencoded'};

  // Сложные параметры VK ожидает как JSON; http-клиент отдельно кодирует
  // значения полей формы.
  static String _customValue(Object? value) =>
      value is List || value is Map ? jsonEncode(value) : value.toString();

  static Map<String, String>? _transformBody(Map<String, dynamic>? body) =>
      body?.map((key, value) => MapEntry(key, _customValue(value)));

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
    final response = client == null
        ? await http.post(uri, body: requestBody, headers: requestHeaders)
        : await client.post(uri, body: requestBody, headers: requestHeaders);
    return jsonDecode(utf8.decode(response.bodyBytes));
  }
}
