import 'package:vkdart/model.dart';

/// Модель обновления `like`.
///
/// См. https://dev.vk.com/ru/api/community-events/json-schema#Отметки%20Мне%20нравится
class VkDartLikeUpdate {
  // ignore: public_member_api_docs
  final VkDartUpdate update;

  // ignore: public_member_api_docs
  VkDartLikeUpdate(this.update);

  /// Проверяет, добавлена ли отметка «Нравится».
  bool get isAdd => update.type == UpdateType.like_add;

  /// Проверяет, удалена ли отметка «Нравится».
  bool get isRemove => update.type == UpdateType.like_remove;

  /// ID пользователя, поставившего отметку.
  int get likerId => update.object['liker_id'];

  /// Тип материала.
  String get objectType => update.object['object_type'];

  /// ID владельца материала.
  int get objectOwnerId => update.object['object_owner_id'];

  /// ID материала.
  int get objectId => update.object['object_id'];

  /// ID родительского комментария или записи.
  int get threadReplyId => update.object['thread_reply_id'];

  /// ID записи (возвращается для комментария к записи).
  int get postId => update.object['post_id'];
}
