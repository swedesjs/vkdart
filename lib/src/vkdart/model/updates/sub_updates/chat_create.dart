import 'package:vkdart/model.dart';

mixin _VkDartChatCreateMixin on VkDartMessageUpdate {
  /// Title of conversation.
  String get title => actionText!;
}

/// Sub-update model: `chat_create`.
class VkDartChatCreateUpdate = VkDartMessageUpdate with _VkDartChatCreateMixin;
