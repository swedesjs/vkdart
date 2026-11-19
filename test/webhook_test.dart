import 'dart:convert';
import 'dart:io' as io;

import 'package:test/test.dart';
import 'package:vkdart/model.dart';
import 'package:vkdart/vkdart.dart';

void main() {
  test('dispose closes the server and update stream', () async {
    final server = await io.HttpServer.bind(io.InternetAddress.loopbackIPv4, 0);
    final webhook = Webhook(server);
    final uri = Uri(
      scheme: 'http',
      host: server.address.address,
      port: server.port,
    );
    addTearDown(webhook.dispose);

    final update = webhook.onUpdate().first;
    final streamDone = expectLater(
      webhook.onUpdate(),
      emitsInOrder([isA<VkDartUpdate>(), emitsDone]),
    );
    await webhook.start();

    final client = io.HttpClient();
    try {
      final request = await client.postUrl(uri);
      request.headers.contentType = io.ContentType.json;
      request.write(jsonEncode({'type': 'unsupported'}));

      final response = await request.close();
      expect(response.statusCode, io.HttpStatus.ok);
      expect(await utf8.decoder.bind(response).join(), 'ok');
      expect((await update).type, UpdateType.unknown_event);
    } finally {
      client.close(force: true);
    }

    await webhook.dispose();
    await streamDone;

    await expectLater(
      webhook.start(),
      throwsA(isA<WebhookException>()),
    );

    final closedClient = io.HttpClient();
    try {
      await expectLater(
        closedClient.getUrl(uri),
        throwsA(isA<io.SocketException>()),
      );
    } finally {
      closedClient.close(force: true);
    }
  });
}
