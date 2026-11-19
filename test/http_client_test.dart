import 'dart:async';
import 'dart:convert';
import 'dart:io' as io;

import 'package:test/test.dart';
import 'package:vkdart/src/util/http_client.dart';

void main() {
  test('encodes form fields and JSON values in POST requests', () async {
    final receivedBody = Completer<Map<String, String>>();
    final server = await io.HttpServer.bind(io.InternetAddress.loopbackIPv4, 0);
    final subscription = server.listen((request) async {
      final body = await utf8.decoder.bind(request).join();
      receivedBody.complete(Uri.splitQueryString(body));
      request.response.write(jsonEncode({'response': 'ok'}));
      await request.response.close();
    });

    addTearDown(() async {
      await subscription.cancel();
      await server.close(force: true);
    });

    final response = await HttpClient.httpPost(
      'http://${server.address.host}:${server.port}/',
      body: {
        'message': 'Привет & hello+ world',
        'payload': {'action': 'open', 'value': 'a&b'},
      },
    );

    expect(await receivedBody.future, {
      'message': 'Привет & hello+ world',
      'payload': '{"action":"open","value":"a&b"}',
    });
    expect(response, {'response': 'ok'});
  });
}
