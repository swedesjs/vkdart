import 'package:vkdart/model.dart';

mixin _VkDartChatPinMixin on VkDartMessageUpdate {
  /// Проверяет, соответствует ли тип `chat_pin_message`.
  bool get isPin => actionType == 'chat_pin_message';

  /// Проверяет, соответствует ли тип `chat_unpin_message`.
  bool get isUnpin => actionType == 'chat_unpin_message';

  /// ID пользователя, закрепившего или открепившего сообщение.
  int get memberId => actionMemberId!;

  /// ID беседы, в которой было закреплено или откреплено сообщение.
  int get pinConversationMessageId => action!['conversation_message_id']!;
}

/// Модель подтипов обновления: `chat_pin_message`, `chat_unpin_message`.
class VkDartChatPinUpdate = VkDartMessageUpdate with _VkDartChatPinMixin;
