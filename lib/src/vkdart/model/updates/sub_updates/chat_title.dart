import 'package:vkdart/model.dart';

mixin _VkDartChatTitleMixin on VkDartMessageUpdate {
  /// Новое название беседы.
  String get newTitle => actionText!;

  /// Прежнее название беседы.
  String? get oldTitle => actionOldText;
}

/// Модель подтипа обновления: `chat_title_update`.
class VkDartChatTitleUpdate = VkDartMessageUpdate with _VkDartChatTitleMixin;
