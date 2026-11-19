import 'package:vkdart/model.dart';

mixin _VkDartChatCreateMixin on VkDartMessageUpdate {
  /// Название беседы.
  String get title => actionText!;
}

/// Модель подтипа обновления: `chat_create`.
class VkDartChatCreateUpdate = VkDartMessageUpdate with _VkDartChatCreateMixin;
