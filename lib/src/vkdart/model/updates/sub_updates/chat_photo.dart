import 'package:vkdart/model.dart';

mixin _VkDartChatPhotoMixin on VkDartMessageUpdate {
  /// Check is type - chat_photo_update.
  bool get isUpdate => actionType == 'chat_photo_update';

  /// Check is type - chat_photo_remove.
  bool get isRemove => actionType == 'chat_photo_remove';
}

/// Sub-updates model: `chat_photo_update`, `chat_photo_remove`.
class VkDartChatPhotoUpdate = VkDartMessageUpdate with _VkDartChatPhotoMixin;
