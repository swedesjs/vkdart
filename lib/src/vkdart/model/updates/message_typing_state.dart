import 'package:vkdart/model.dart';

/// The message typing state model.
///
/// See https://dev.vk.com/ru/api/community-events/json-schema#message_typing_state
class VkDartMessageTypingStateUpdate {
  // ignore: public_member_api_docs
  final VkDartUpdate update;

  // ignore: public_member_api_docs
  VkDartMessageTypingStateUpdate(this.update);

  /// The status of the typing status.
  String get state => update.object['state'];

  /// The ID of the user who is typing the text.
  int get fromId => update.object['from_id'];

  /// The ID of the community to which the user is writing the message.
  int get toId => update.object['to_id'];
}
