import 'package:vkdart/model.dart';
import 'package:vkdart/util.dart';
import 'package:vkdart/vkontakte.dart' show Vkontakte;

/// Модель события сообщения.
///
/// См. https://dev.vk.com/ru/api/community-events/json-schema#message_event
class VkDartMessageEventUpdate {
  // ignore: public_member_api_docs
  final VkDartUpdate update;
  final Vkontakte _vkontakte;

  // ignore: public_member_api_docs
  VkDartMessageEventUpdate(this._vkontakte, this.update);

  /// ID пользователя.
  int get userId => update.object['user_id'];

  /// ID диалога со стороны бота.
  int get peerId => update.object['peer_id'];

  /// Случайная строка.
  /// Действует одну минуту, после чего становится недействительным.
  String get eventId => update.object['event_id'];

  /// Дополнительная информация, указанная в ключе.
  Object? get eventPayload => update.object['payload'];

  /// ID сообщения в беседе.
  /// Не передаётся для клавиатур беседы.
  int? get conversationMessageId => update.object['conversation_message_id'];

  /// Отправляет событие с действием, которое будет выполнено при нажатии кнопки Callback.
  /// Вызывает метод `messages.send` со свойствами [eventId], [peerId], [userId].
  /// Свойство [type] принимает только одно из значений: `show_snackbar`, `open_link`, `open_app`.
  /// Если тип неизвестен или не указаны обязательные свойства, будет выброшено исключение [ArgumentError].
  ///
  /// При успешном выполнении возвращает `true`.
  ///
  /// См.: https://dev.vk.com/ru/api/bots/development/keyboard#Типы%20действий
  ///
  /// Пример:
  /// ```dart
  /// vkdart
  ///     .onMessageEvent()
  ///     .listen((event) => event.answer(type: 'show_snackbar', text: 'Привет, мир!'));
  /// ```
  Future<bool> answer(
      {required String type,
      String? text,
      String? link,
      int? appId,
      int? ownerId,
      String? hash}) {
    /// ignore: non_constant_identifier_names
    final event_data = <String, dynamic>{'type': type};

    switch (type) {
      case 'show_snackbar':
        event_data['text'] = ArgumentError.checkNotNull(text, 'text');
      case 'open_link':
        event_data['link'] = ArgumentError.checkNotNull(link, 'link');
      case 'open_app':
        event_data
          ..['app_id'] = ArgumentError.checkNotNull(appId, 'appId')
          ..['owner_id'] = ArgumentError.checkNotNull(ownerId, 'ownerId')
          ..['hash'] = ArgumentError.checkNotNull(hash, 'hash');
      default:
        throw ArgumentError.value(type, 'type',
            'only 3 values are possible: show_snackbar, open_link, open_app');
    }

    return _vkontakte.request('messages.sendMessageEventAnswer', {
      'event_id': eventId,
      'peer_id': peerId,
      'user_id': userId,
      'event_data': event_data
    }).then((value) => checkBoolUtil(value)!);
  }
}
