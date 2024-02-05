// ignore_for_file: avoid_classes_with_only_static_members

import 'dart:convert';

import 'package:http/http.dart' as http;

/// Http client.
class HttpClient {
  static const _headers = {'Content-Type': 'application/x-www-form-urlencoded'};

  static Future<dynamic> _responseParsedBody(http.Response response) async {
    final jsonBody = jsonDecode(utf8.decode(response.bodyBytes));

    return jsonBody;
  }

  static Object _customValue(Object value) =>
      value is List || value is Map ? jsonEncode(value) : value;

  static String? _transformBody(Map<String, dynamic>? body) =>
      body?.entries.map((e) => '${e.key}=${_customValue(e.value)}').join('&');

  /// Create a post request.
  static Future<dynamic> httpPost(String url,
          {Map<String, dynamic>? body, Map<String, dynamic>? headers}) =>
      http
          .post(Uri.parse(url),
              body: _transformBody(body), headers: {...?headers, ..._headers})
          .then(_responseParsedBody)
          .catchError(Future.error);
}
