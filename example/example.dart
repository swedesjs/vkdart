// ignore_for_file: do_not_use_environment

import 'dart:async';
import 'dart:io';

import 'package:vkdart/model.dart';
import 'package:vkdart/util.dart';
import 'package:vkdart/vkdart.dart';

Future<void> main() async {
  final token = _requiredEnvironment('VK_TOKEN');
  final groupId = int.tryParse(_requiredEnvironment('VK_GROUP_ID'));
  if (groupId == null || groupId <= 0) {
    throw const FormatException('VK_GROUP_ID must be a positive integer');
  }

  final vkdart = VkDart(
    token,
    fetcher: Longpoll(
      groupId,
      maxRetries: 5,
      retryDelay: const Duration(seconds: 1),
    ),
  );

  vkdart.onMessage().listen(
    (event) {
      unawaited(_handleMessage(vkdart, event).catchError(_reportError));
    },
    onError: _reportError,
  );

  vkdart.onMessageEvent().listen(
    (event) {
      unawaited(_answerCallback(event).catchError(_reportError));
    },
    onError: _reportError,
  );

  vkdart.onUnsupportedEvent().listen(
        (event) => stderr.writeln('Неизвестное событие VK: ${event.eventType}'),
        onError: _reportError,
      );

  try {
    await vkdart.start();
    stdout.writeln('Long Poll запущен. Для остановки нажмите Ctrl+C.');
    await ProcessSignal.sigint.watch().first;
  } finally {
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

Future<void> _handleMessage(
  VkDart vkdart,
  VkDartMessageUpdate event,
) async {
  if (!event.isInbox || !event.isNew) return;

  final command = event.text.trim();
  if (command == '/start') {
    await event.replySendMessage(
      message: 'Привет! Напишите /help, чтобы увидеть команды.',
    );
  } else if (command == '/help') {
    await event.replySendMessage(
      message: 'Команды: /start, /help и /menu.',
    );
  } else if (command == '/menu') {
    final keyboard = VkDartKeyboard(oneTime: true)
      ..addButtonCallback(
        'Показать помощь',
        color: VkDartKeyboardColor.primary,
        payload: {'action': 'help'},
      )
      ..nextRow()
      ..addButtonLink(
        'https://pub.dev/packages/vkdart',
        'Страница пакета',
      );

    await event.replySendMessage(
      message: 'Выберите действие:',
      keyboard: keyboard,
    );
  }
}

Future<void> _answerCallback(VkDartMessageEventUpdate event) async {
  final payload = event.eventPayload;
  final isHelpAction =
      payload is Map<Object?, Object?> && payload['action'] == 'help';

  await event.answer(
    type: 'show_snackbar',
    text: isHelpAction ? 'Команды: /start, /help и /menu.' : 'Готово!',
  );
}

void _reportError(Object error, StackTrace stackTrace) {
  stderr
    ..writeln('Ошибка: $error')
    ..writeln(stackTrace);
}
