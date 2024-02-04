import 'package:vkdart/util.dart';
import 'package:vkdart/vkontakte.dart';

/// Model Wall Reply.
///
/// See https://dev.vk.com/ru/reference/objects/comment
class WallReplyAttachmentModel extends CustomAttachmentModel {
  // ignore: public_member_api_docs
  WallReplyAttachmentModel(super.payload) : super(attachType: 'wall_reply');

  @override
  int get id => payload['id'] ?? payload['cid'];

  /// The ID of the comment author.
  int get fromId => payload['from_id'];

  /// The date the comment was created in Unixtime format.
  int get createdAt => payload['date'];

  /// The text of the comment.
  String? get text => payload['text'];

  /// is the commentator a VK Donut subscriber.
  bool? get isDon => payload['donut']?['is_don'];

  /// a stub for users who have not subscribed to VK Donut.
  String? get donutPlacholder => payload['donut']?['placeholder'];

  /// The ID of the user or community to whom the current comment was left in response (if applicable).
  bool? get isReplyToUser => checkBoolInProperty('reply_to_user');

  /// The ID of the comment that the current one was left in response to (if applicable).
  bool? get isReplyToComment => checkBoolInProperty('reply_to_comment');

  /// Media commentary attachments (photos, links, etc.).
  /// See https://dev.vk.com/ru/reference/objects/comment#attachments
  List<AttachmentModel> get attachments =>
      transformAttachments((payload['attachments'] as List?)
              ?.map((e) => (e as Map).cast<String, dynamic>())
              .toList() ??
          const []);

  /// An array of IDs of parent comments.
  List<int>? get parentsStack => payload['parents_stack'];

  /// the number of comments in the thread.
  int? get threadCount => payload['thread']?['count'];

  /// an array of objects for comments on a record (only for the wall.getComments method).
  List<WallReplyAttachmentModel>? get threadItems => payload['thread']?['items']
      ?.map((e) => WallReplyAttachmentModel((e as Map).cast<String, dynamic>()))
      .toList();

  /// can the current user leave comments in this thread.
  bool? get isThreadCanPost => payload['thread']?['can_post'];

  /// do I need to display the reply button in the branch
  bool? get isThreadShowReplyButton => payload['thread']?['show_reply_button'];

  /// can communities leave comments in the thread?
  bool? get isThreadGroupsCanPost => payload['thread']?['groups_can_post'];
}
