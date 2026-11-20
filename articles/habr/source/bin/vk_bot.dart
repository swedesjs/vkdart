import 'package:vkdart/util.dart';
import 'package:vkdart/vkdart.dart';

import '../config.dart';

Future<void> main() async {
  final vk = VkDart(
    token,
    fetcher: Longpoll(groupId),
  );

  vk.onMessage().listen((event) async {
    if (!event.isInbox || !event.isNew || !event.isUser) return;

    final text = event.text.trim().toLowerCase();

    try {
      if (text == 'привет') {
        await event.replySendMessage(
          message: 'Привет! Я бот. Пока учусь, но уже рад знакомству 🙂',
        );
      } else if (text == '/start' || text == '/help' || text == 'помощь') {
        await event.replySendMessage(
          message: 'Я умею здороваться и рассказывать о себе. '
              'Напишите /menu, чтобы открыть меню.',
        );
      } else if (text == '/menu') {
        final keyboard = VkDartKeyboard()
          ..addButtonText(
            'Помощь',
            color: VkDartKeyboardColor.primary,
          )
          ..addButtonText(
            'О боте',
            color: VkDartKeyboardColor.secondary,
          );

        await event.replySendMessage(
          message: 'Выберите кнопку. Сложного меню не будет 🙂',
          keyboard: keyboard,
        );
      } else if (text == 'о боте') {
        await event.replySendMessage(
          message: 'Я написан на Dart с помощью библиотеки VKDart.',
        );
      } else {
        await event.replySendMessage(
          message: 'Такой команды я пока не знаю. Напишите /help.',
        );
      }
    } on Exception catch (error) {
      print('Не удалось обработать сообщение: $error');
    }
  });

  await vk.start();
  print('Бот запущен! Напишите ему в сообщения сообщества.');
}
