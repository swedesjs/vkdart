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
  int get likerId => payload['liker_id'];

  /// The type of material.
  String get objectType => payload['object_type'];

  /// The ID of the owner of the material.
  int get objectOwnerId => payload['object_owner_id'];

  /// The ID of the material.
  int get objectId => payload['object_id'];

  /// ID of the parent comment or entry.
  int get threadReplyId => payload['thread_reply_id'];

  /// The ID of the record (returned for the comment left under the record).
  int get postId => payload['post_id'];
}
