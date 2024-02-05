import 'package:vkdart/model.dart';

/// The model `like` update.
///
/// See https://dev.vk.com/ru/api/community-events/json-schema#Отметки%20Мне%20нравится
class VkDartLikeUpdate with VkDartUpdate {
  // ignore: public_member_api_docs
  VkDartLikeUpdate(this.update);

  @override
  final Update update;

  /// The ID of the user who checked the box.
  int get likerId => updateObject['liker_id'];

  /// The type of material.
  String get objectType => updateObject['object_type'];

  /// The ID of the owner of the material.
  int get objectOwnerId => updateObject['object_owner_id'];

  /// The ID of the material.
  int get objectId => updateObject['object_id'];

  /// ID of the parent comment or entry.
  int get threadReplyId => updateObject['thread_reply_id'];

  /// The ID of the record (returned for the comment left under the record).
  int get postId => updateObject['post_id'];
}
