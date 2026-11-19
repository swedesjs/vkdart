import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:test/test.dart';
import 'package:vkdart/vkontakte.dart';

void main() {
  group('Vkontakte.request', () {
    test('sends request parameters and returns the VK response', () async {
      late http.Request capturedRequest;
      final client = MockClient((request) async {
        capturedRequest = request;
        return http.Response(
          jsonEncode({
            'response': [
              {'id': 1}
            ],
          }),
          200,
          headers: {'content-type': 'application/json; charset=utf-8'},
        );
      });
      addTearDown(client.close);

      final vkontakte = Vkontakte(
        token: 'test-token',
        language: LangApi.ru,
        version: '5.131',
        client: client,
      );

      final response = await vkontakte.request('users.get', {
        'user_id': 'durov',
        'filter': 'test & value',
      });

      expect(response, [
        {'id': 1}
      ]);
      expect(capturedRequest.method, 'POST');
      expect(capturedRequest.url,
          Uri.parse('https://api.vk.com/method/users.get'));
      expect(capturedRequest.headers['Authorization'], 'Bearer test-token');
      expect(capturedRequest.bodyFields, {
        'user_id': 'durov',
        'filter': 'test & value',
        'v': '5.131',
        'lang': '0',
      });
    });

    test('converts VK API errors to ApiException', () async {
      final client = MockClient(
        (_) async => http.Response(
          jsonEncode({
            'error': {
              'error_code': 5,
              'error_msg': 'Access denied',
              'request_params': [],
            },
          }),
          200,
          headers: {'content-type': 'application/json; charset=utf-8'},
        ),
      );
      addTearDown(client.close);

      final vkontakte = Vkontakte(
        token: 'test-token',
        language: LangApi.ru,
        version: '5.131',
        client: client,
      );

      await expectLater(
        vkontakte.request('users.report'),
        throwsA(
          isA<ApiException>()
              .having((error) => error.code, 'code', 5)
              .having((error) => error.message, 'message', 'Access denied'),
        ),
      );
    });
  });
}
