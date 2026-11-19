// ignore_for_file: avoid_classes_with_only_static_members

import 'dart:convert';

import 'package:http/http.dart' as http;

/// HTTP-клиент.
class HttpClient {
  static const _headers = {'Content-Type': 'application/x-www-form-urlencoded'};

  static Future<dynamic> _responseParsedBody(http.Response response) async {
    final jsonBody = jsonDecode(utf8.decode(response.bodyBytes));

    return jsonBody;
  }

  static String _customValue(Object? value) =>
      value is List || value is Map ? jsonEncode(value) : value.toString();

  static Map<String, String>? _transformBody(Map<String, dynamic>? body) =>
      body?.map((key, value) => MapEntry(key, _customValue(value)));

  /// Создаёт POST-запрос.
  static Future<dynamic> httpPost(
    String url, {
    Map<String, dynamic>? body,
    Map<String, dynamic>? headers,
  }) async {
    final response = await http.post(
      Uri.parse(url),
      body: _transformBody(body),
      headers: {...?headers, ..._headers},
    );
    return _responseParsedBody(response);
  }
}
