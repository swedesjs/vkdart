import 'dart:math';

import 'package:vkdart/model.dart';
import 'package:vkdart/util.dart';
import 'package:vkdart/vkontakte.dart';

/// The message model (for events `message_new`, `message_edit`, `message_reply`).
///
/// See:
/// - https://dev.vk.com/ru/api/community-events/json-schema#message_new
/// - https://dev.vk.com/ru/api/community-events/json-schema#message_reply
/// - https://dev.vk.com/ru/api/community-events/json-schema#message_edit
class VkDartMessageUpdate extends MessageModel {
  // ignore: public_member_api_docs
  final VkDartUpdate update;
  final Vkontakte _vkontakte;

  // ignore: public_member_api_docs
  VkDartMessageUpdate(this._vkontakte, this.update) : super(update.object);

  /// Check is message new.
  bool get isNew => update.type == UpdateType.message_new;

  /// Check is message edit.
  bool get isEdit => update.type == UpdateType.message_edit;

  /// Check is message reply.
  bool get isReply => update.type == UpdateType.message_reply;

  /// Is this a dialog with the user.
  bool get isUser => peerType == MessageSource.user;

  /// Is this a dialogue with the group.
  bool get isGroup => peerType == MessageSource.group;

  /// Whether this dialog is in a chat.
  bool get isChat => peerType == MessageSource.chat;

  /// Whether the sender is a user.
  bool get isFromUser => senderType == MessageSource.user;

  /// Whether the sender is a group.
  bool get isFromGroup => senderType == MessageSource.group;

  /// Whether the message is out.
  bool get isOutbox => checkBoolUtil(message['out'] as int)!;

  /// Whether the message is inboxed.
  bool get isInbox => !isOutbox;

  /// Sends a message to the dialog from which the event came.
  /// If you want to send to multiple dialogs, specify the [peerIds] argument.
  ///
  /// One of the [message] or [attachment] arguments must be specified,
  /// otherwise an [ArgumentError] error will be thrown.
  ///
  /// If the [randomId] argument is not specified,
  /// the function itself will send this parameter to the request (any number in the range 2 ^ 31).
  ///
  /// Sample example:
  /// ```
  /// vkdart
  ///   .onMessage()
  ///   .where((event) => event.isInbox)
  ///   .listen((event) => event.sendMessage(message: 'Hello world!'));
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

  /// Responds to a message in the dialog from which the event came.
  /// More detailed documentation: [sendMessage]
  ///
  /// Sample example:
  /// ```dart
  /// vkdart
  ///   .onMessage()
  ///   .where((event) => event.isInbox)
  ///   .listen((event) => event.replySendMessage(message: 'Hello, @id${event.senderId!}'));
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

  /// Changes the status of the dialog - the user has started typing.
  Future<bool> setActivity() {
    final body = {'peer_id': peerId, 'type': 'typing'};
    return _vkontakte
        .request('messages.setActivity', body)
        .then((value) => checkBoolUtil(value)!);
  }
}
