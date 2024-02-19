import 'package:vkdart/model.dart';

mixin _VkDartChatTitleMixin on VkDartMessageUpdate {
  /// New title of the conversation.
  String get newTitle => actionText!;

  /// An old conversation title.
  String? get oldTitle => actionOldText;
}

/// Sub-update model: `chat_title_update`.
class VkDartChatTitleUpdate = VkDartMessageUpdate with _VkDartChatTitleMixin;
