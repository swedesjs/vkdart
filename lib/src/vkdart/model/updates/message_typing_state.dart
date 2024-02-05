import 'package:vkdart/model.dart';

/// The message typing state model.
///
/// See https://dev.vk.com/ru/api/community-events/json-schema#message_typing_state
class VkDartMessageTypingStateUpdate with VkDartUpdate {
  // ignore: public_member_api_docs
  VkDartMessageTypingStateUpdate(this.update);

  @override
  final Update update;

  /// The status of the typing status.
  String get state => updateObject['state'];

  /// The ID of the user who is typing the text.
  int get fromId => updateObject['from_id'];

  /// The ID of the community to which the user is writing the message.
  int get toId => updateObject['to_id'];
}
