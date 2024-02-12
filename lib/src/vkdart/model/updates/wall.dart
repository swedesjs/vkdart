import 'package:vkdart/model.dart';
import 'package:vkdart/vkontakte.dart';

/// The model `wall` updates.
///
/// See https://dev.vk.com/ru/api/community-events/json-schema#Записи%20на%20стене
class VkDartWallUpdate extends WallAttachmentModel {
  // ignore: public_member_api_docs
  VkDartWallUpdate(VkDartUpdate update) : super(update.object);

  /// Check is User.
  bool get isUser => fromId! > 0;

  /// Check is Group
  bool get isGroup => fromId! < 0;
}
