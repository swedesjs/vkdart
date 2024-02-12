import 'package:vkdart/model.dart';

/// The message event model.
///
/// See https://dev.vk.com/ru/api/community-events/json-schema#message_event
class VkDartMessageEventUpdate {
  // ignore: public_member_api_docs
  final VkDartUpdate update;

  // ignore: public_member_api_docs
  VkDartMessageEventUpdate(this.update);

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
}
