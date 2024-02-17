import 'package:vkdart/model.dart';
import 'package:vkdart/util.dart';
import 'package:vkdart/vkontakte.dart' show Api, Messages;

/// The message event model.
///
/// See https://dev.vk.com/ru/api/community-events/json-schema#message_event
class VkDartMessageEventUpdate {
  // ignore: public_member_api_docs
  final VkDartUpdate update;
  final Api _api;

  // ignore: public_member_api_docs
  VkDartMessageEventUpdate(this._api, this.update);

  /// The user ID.
  int get userId => update.object['user_id'];

  /// The ID of the dialog on the bot's side.
  int get peerId => update.object['peer_id'];

  /// A random string.
  /// Active for a minute, becomes invalid after a minute.
  String get eventId => update.object['event_id'];

  /// Additional information specified in the key.
  Object? get eventPayload => update.object['payload'];

  /// The ID of the message in the conversation.
  /// It is not transmitted for conversation keyboards.
  int? get conversationMessageId => update.object['conversation_message_id'];

  /// Sends an event with the action that will occur when the callback button is clicked.
  /// Calls the [Messages.sendMessageEventAnswer] method, with the properties [eventId], [peerId], [userId].
  /// The [type] property accepts only one of these values: `show_snackbar`, `open_link`, `open_app`.
  /// If the type is unknown or the required properties are unknown, an [ArgumentError] will be thrown.
  ///
  /// Will return `true` upon successful execution.
  ///
  /// See: https://dev.vk.com/ru/api/bots/development/keyboard#Типы%20действий
  ///
  /// Sample Example:
  /// ```dart
  /// vkdart
  ///     .onMessageEvent()
  ///     .listen((event) => event.answer(type: 'show_snackbar', text: 'Hello world!'));
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

    return _api.messages.sendMessageEventAnswer({
      'event_id': eventId,
      'peer_id': peerId,
      'user_id': userId,
      'event_data': event_data
    }).then((value) => checkBoolUtil(value)!);
  }
}
