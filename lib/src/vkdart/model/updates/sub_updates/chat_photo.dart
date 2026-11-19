import 'package:vkdart/model.dart';

mixin _VkDartChatPhotoMixin on VkDartMessageUpdate {
  /// Проверяет, соответствует ли тип chat_photo_update.
  bool get isUpdate => actionType == 'chat_photo_update';

  /// Проверяет, соответствует ли тип chat_photo_remove.
  bool get isRemove => actionType == 'chat_photo_remove';
}

/// Модель подтипов обновления: `chat_photo_update`, `chat_photo_remove`.
class VkDartChatPhotoUpdate = VkDartMessageUpdate with _VkDartChatPhotoMixin;
