// ignore_for_file: avoid_dynamic_calls

part of 'attachment.dart';

/// Model Wall Reply.
///
/// See https://dev.vk.com/ru/reference/objects/comment
class WallReplyAttachmentModel extends CustomAttachmentModel {
  // ignore: public_member_api_docs
  WallReplyAttachmentModel(super.payload);

  @override
  int get id => attachmentObject['id'] ?? attachmentObject['cid'];

  /// The ID of the comment author.
  int get fromId => attachmentObject['from_id'];

  /// The date the comment was created in Unixtime format.
  int get createdAt => attachmentObject['date'];

  /// The text of the comment.
  String? get text => attachmentObject['text'];

  /// is the commentator a VK Donut subscriber.
  bool? get isDon => attachmentObject['donut']?['is_don'];

  /// a stub for users who have not subscribed to VK Donut.
  String? get donutPlacholder => attachmentObject['donut']?['placeholder'];

  /// The ID of the user or community to whom the current comment was left in response (if applicable).
  bool? get isReplyToUser => _checkBoolInProperty('reply_to_user');

  /// The ID of the comment that the current one was left in response to (if applicable).
  bool? get isReplyToComment => _checkBoolInProperty('reply_to_comment');

  /// Media commentary attachments (photos, links, etc.).
  /// See https://dev.vk.com/ru/reference/objects/comment#attachments
  List<Map<String, dynamic>>? get attachments =>
      attachmentObject['attachments'];

  /// An array of IDs of parent comments.
  List<int>? get parentsStack => attachmentObject['parents_stack'];

  /// the number of comments in the thread.
  int? get threadCount => attachmentObject['thread']?['count'];

  /// an array of objects for comments on a record (only for the wall.getComments method).
  List<WallReplyAttachmentModel>? get threadItems => attachmentObject['thread']
          ?['items']
      ?.map((e) => WallReplyAttachmentModel((e as Map).cast<String, dynamic>()))
      .toList();

  /// can the current user leave comments in this thread.
  bool? get isThreadCanPost => attachmentObject['thread']?['can_post'];

  /// do I need to display the reply button in the branch
  bool? get isThreadShowReplyButton =>
      attachmentObject['thread']?['show_reply_button'];

  /// can communities leave comments in the thread?
  bool? get isThreadGroupsCanPost =>
      attachmentObject['thread']?['groups_can_post'];
}
