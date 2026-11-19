// ignore_for_file: do_not_use_environment

import 'dart:io';

import 'package:vkdart/vkdart.dart';

Future<void> main() async {
  final token = _requiredEnvironment('VK_TOKEN');
  final confirmationToken = _requiredEnvironment('VK_CONFIRMATION_TOKEN');
  final port = int.tryParse(Platform.environment['PORT'] ?? '8080');
  if (port == null || port < 1 || port > 65535) {
    throw const FormatException('PORT must be between 1 and 65535');
  }

  final webhook = await Webhook.createHttpServer(
    port: port,
    confirmationToken: confirmationToken,
    secretKey: Platform.environment['VK_CALLBACK_SECRET'],
  );
  final vkdart = VkDart(token, fetcher: webhook);

  final messageSubscription = vkdart.onMessage().listen(
        (event) => stdout.writeln('[${event.peerId}] ${event.text}'),
        onError: _reportError,
      );
  final unknownEventSubscription = vkdart.onUnsupportedEvent().listen(
        (event) => stdout.writeln('Неизвестное событие VK: ${event.eventType}'),
        onError: _reportError,
      );

  try {
    await vkdart.start();
    stdout
      ..writeln(
        'Callback API слушает порт $port. Для остановки нажмите Ctrl+C.',
      )
      ..writeln('В production разместите HTTP-сервер за HTTPS-прокси.');
    await ProcessSignal.sigint.watch().first;
  } finally {
    await messageSubscription.cancel();
    await unknownEventSubscription.cancel();
    await vkdart.dispose();
  }
}

String _requiredEnvironment(String name) {
  final value = Platform.environment[name];
  if (value == null || value.isEmpty) {
    throw StateError('Set the $name environment variable before running.');
  }
  return value;
}

void _reportError(Object error, StackTrace stackTrace) {
  stderr
    ..writeln('Ошибка: $error')
    ..writeln(stackTrace);
}
