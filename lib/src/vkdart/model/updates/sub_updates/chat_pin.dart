import 'package:vkdart/model.dart';

mixin _VkDartChatPinMixin on VkDartMessageUpdate {
  /// Check type is `chat_pin_message`.
  bool get isPin => actionType == 'chat_pin_message';

  /// Check type is `chat_unpin_message`.
  bool get isUnpin => actionType == 'chat_unpin_message';

  /// ID of the user who pinned/unpinned the message.
  int get memberId => actionMemberId!;

  /// ID of the conversation in which the message was pinned/unpinned.
  int get pinConversationMessageId => action!['conversation_message_id']!;
}

/// Sub-updates model: `chat_pin_message`, `chat_unpin_message`.
class VkDartChatPinUpdate = VkDartMessageUpdate with _VkDartChatPinMixin;
