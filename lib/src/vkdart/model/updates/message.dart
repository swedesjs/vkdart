import 'dart:math';

import 'package:vkdart/model.dart';
import 'package:vkdart/util.dart';
import 'package:vkdart/vkontakte.dart';

/// Модель сообщения (для событий `message_new`, `message_edit`, `message_reply`).
///
/// См.:
/// - https://dev.vk.com/ru/api/community-events/json-schema#message_new
/// - https://dev.vk.com/ru/api/community-events/json-schema#message_reply
/// - https://dev.vk.com/ru/api/community-events/json-schema#message_edit
class VkDartMessageUpdate extends MessageModel {
  // ignore: public_member_api_docs
  final VkDartUpdate update;
  final Vkontakte _vkontakte;

  // ignore: public_member_api_docs
  VkDartMessageUpdate(this._vkontakte, this.update) : super(update.object);

  /// Проверяет, является ли сообщение новым.
  bool get isNew => update.type == UpdateType.message_new;

  /// Проверяет, изменено ли сообщение.
  bool get isEdit => update.type == UpdateType.message_edit;

  /// Проверяет, является ли сообщение ответом.
  bool get isReply => update.type == UpdateType.message_reply;

  /// Является ли это диалогом с пользователем.
  bool get isUser => peerType == MessageSource.user;

  /// Является ли это диалогом с сообществом.
  bool get isGroup => peerType == MessageSource.group;

  /// Находится ли этот диалог в чате.
  bool get isChat => peerType == MessageSource.chat;

  /// Является ли отправитель пользователем.
  bool get isFromUser => senderType == MessageSource.user;

  /// Является ли отправитель сообществом.
  bool get isFromGroup => senderType == MessageSource.group;

  /// Является ли сообщение исходящим.
  bool get isOutbox => checkBoolUtil(message['out'] as int)!;

  /// Является ли сообщение входящим.
  bool get isInbox => !isOutbox;

  /// Отправляет сообщение в диалог, из которого пришло событие.
  /// Чтобы отправить сообщение в несколько диалогов, укажите аргумент [peerIds].
  ///
  /// Необходимо указать один из аргументов [message] или [attachment],
  /// иначе будет выброшено исключение [ArgumentError].
  ///
  /// Если аргумент [randomId] не указан,
  /// функция сама добавит этот параметр в запрос (любое число в диапазоне 2 ^ 31).
  ///
  /// Пример:
  /// ```
  /// vkdart
  ///   .onMessage()
  ///   .where((event) => event.isInbox)
  ///   .listen((event) => event.sendMessage(message: 'Привет, мир!'));
  /// ```
  Future<List<MessageModel>> sendMessage(
      {List<int>? peerIds,
      String? message,
      int? randomId,
      String? domain,
      int? guid,
      int? lat,
      int? long,
      List<dynamic>? attachment,
      int? replyTo,
      List<int>? forwardMessages,
      Map<String, dynamic>? forward,
      int? stickerId,
      VkDartKeyboard? keyboard,
      Map<String, dynamic>? template,
      String? payload,
      Map<String, dynamic>? contentSource,
      bool? dontParseLinks,
      bool? disableMentions,
      String? intent,
      int? subscribeId}) {
    if (message == null && attachment == null) {
      throw ArgumentError('Message or attachment must be not null');
    }

    final body = {
      'peer_ids': peerIds?.join(',') ?? peerId,
      'message': message,
      'random_id': randomId ?? Random().nextInt(2 ^ 31),
      'domain': domain,
      'guid': guid,
      'lat': lat,
      'long': long,
      'attachment': attachment?.join(','),
      'reply_to': replyTo,
      'forward_messages': forwardMessages?.join(','),
      'forward': forward,
      'sticker_id': stickerId,
      'keyboard': keyboard?.toJson(),
      'template': template,
      'payload': payload,
      'content_source': contentSource,
      'dont_parse_links':
          dontParseLinks != null ? (dontParseLinks ? 1 : 0) : null,
      'disable_mentions':
          disableMentions != null ? (disableMentions ? 1 : 0) : null,
      'intent': intent,
      'subscribe_id': subscribeId
    }..removeWhere((key, value) => value == null);

    // VK возвращает список сообщений; каждому добавляем контекст клиента.
    return _vkontakte
        .request('messages.send', body)
        .then((value) => (value as List).map((element) {
              final payload = {
                'client_info': clientInfo,
                ...(element as Map).cast<String, dynamic>()
              };
              return MessageModel(payload);
            }).toList());
  }

  /// Отвечает на сообщение в диалоге, из которого пришло событие.
  /// Подробнее см. [sendMessage].
  ///
  /// Пример:
  /// ```dart
  /// vkdart
  ///   .onMessage()
  ///   .where((event) => event.isInbox)
  ///   .listen((event) => event.replySendMessage(message: 'Привет, @id${event.senderId!}'));
  /// ```
  Future<List<MessageModel>> replySendMessage(
      {String? message,
      int? randomId,
      String? domain,
      int? guid,
      int? lat,
      int? long,
      List<dynamic>? attachment,
      List<int>? forwardMessages,
      int? stickerId,
      VkDartKeyboard? keyboard,
      Map<String, dynamic>? template,
      String? payload,
      Map<String, dynamic>? contentSource,
      bool? dontParseLinks,
      bool? disableMentions,
      String? intent,
      int? subscribeId}) {
    final forwardOptions = {
      'peer_id': peerId,
      'is_reply': true,
      if (conversationMessageId != null)
        'conversation_message_ids': conversationMessageId
      else
        'message_ids': id
    };

    return sendMessage(
      message: message,
      randomId: randomId,
      domain: domain,
      guid: guid,
      lat: lat,
      long: long,
      attachment: attachment,
      forward: forwardOptions,
      stickerId: stickerId,
      keyboard: keyboard,
      template: template,
      payload: payload,
      contentSource: contentSource,
      dontParseLinks: dontParseLinks,
      disableMentions: disableMentions,
      intent: intent,
      subscribeId: subscribeId,
    );
  }

  /// Изменяет статус диалога: пользователь начал набирать текст.
  Future<bool> setActivity() {
    final body = {'peer_id': peerId, 'type': 'typing'};
    return _vkontakte
        .request('messages.setActivity', body)
        .then((value) => checkBoolUtil(value)!);
  }
}
