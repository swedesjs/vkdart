import 'package:vkdart/model.dart';

/// The message event model.
///
/// See https://dev.vk.com/ru/api/community-events/json-schema#message_event
class VkDartMessageEvent with VkDartUpdate {
  // ignore: public_member_api_docs
  VkDartMessageEvent(this.update);

  @override
  final Update update;

  /// The user ID.
  int get userId => payload['user_id'];

  /// The ID of the dialog on the bot's side.
  int get peerId => payload['peer_id'];

  /// A random string.
  /// Active for a minute, becomes invalid after a minute.
  String get eventId => payload['event_id'];

  /// Additional information specified in the key.
  Object? get eventPayload => payload['payload'];

  /// The ID of the message in the conversation.
  /// It is not transmitted for conversation keyboards.
  int? get conversationMessageId => payload['conversation_message_id'];
}
