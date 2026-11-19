import 'package:vkdart/model.dart';
import 'package:vkdart/vkontakte.dart';

/// Модель обновлений `wall`.
///
/// См. https://dev.vk.com/ru/api/community-events/json-schema#Записи%20на%20стене
class VkDartWallUpdate extends WallAttachmentModel {
// ignore: public_member_api_docs
  final VkDartUpdate update;

  // ignore: public_member_api_docs
  VkDartWallUpdate(this.update) : super(update.object);

  /// Проверяет, является ли запись новой.
  bool get isPostNew => update.type == UpdateType.wall_post_new;

  /// Проверяет, является ли запись репостом.
  bool get isRepost => update.type == UpdateType.wall_repost;

  /// Проверяет, является ли отправитель пользователем.
  bool get isUser => fromId! > 0;

  /// Проверяет, является ли отправитель сообществом.
  bool get isGroup => fromId! < 0;
}
