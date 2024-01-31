import 'package:vkdart/model.dart';

/// The message typing state model.
class VkDartMessageTypingState extends MessageTypingStateModel
    with VkDartUpdate {
  // ignore: public_member_api_docs
  VkDartMessageTypingState(this.update) : super(update.object);

  @override
  final Update update;
}

/// Message Typing State model.
///
/// See https://dev.vk.com/ru/api/community-events/json-schema#message_typing_state
class MessageTypingStateModel {
  // ignore: public_member_api_docs
  MessageTypingStateModel(this.payload);

  /// Payload.
  final Map<String, dynamic> payload;

  /// The status of the typing status.
  String get state => payload['state'];

  /// The ID of the user who is typing the text.
  int get fromId => payload['from_id'];

  /// The ID of the community to which the user is writing the message.
  int get toId => payload['to_id'];
}
