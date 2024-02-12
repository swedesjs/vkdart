import 'package:vkdart/model.dart';

/// The model `like` update.
///
/// See https://dev.vk.com/ru/api/community-events/json-schema#Отметки%20Мне%20нравится
class VkDartLikeUpdate {
  // ignore: public_member_api_docs
  final VkDartUpdate update;

  // ignore: public_member_api_docs
  VkDartLikeUpdate(this.update);

  /// The ID of the user who checked the box.
  int get likerId => update.object['liker_id'];

  /// The type of material.
  String get objectType => update.object['object_type'];

  /// The ID of the owner of the material.
  int get objectOwnerId => update.object['object_owner_id'];

  /// The ID of the material.
  int get objectId => update.object['object_id'];

  /// ID of the parent comment or entry.
  int get threadReplyId => update.object['thread_reply_id'];

  /// The ID of the record (returned for the comment left under the record).
  int get postId => update.object['post_id'];
}
