import 'package:vkdart/model.dart';
import 'package:vkdart/vkontakte.dart';

const _newEvents = [
  UpdateType.photo_comment_new,
  UpdateType.video_comment_new,
  UpdateType.market_comment_new,
  UpdateType.wall_reply_new,
  UpdateType.board_post_new,
];

const _photoCommentEvents = [
  UpdateType.photo_comment_new,
  UpdateType.photo_comment_edit,
  UpdateType.photo_comment_delete,
  UpdateType.photo_comment_restore
];

const _videoCommentEvents = [
  UpdateType.video_comment_new,
  UpdateType.video_comment_edit,
  UpdateType.video_comment_delete,
  UpdateType.video_comment_restore
];

const _marketCommentEvents = [
  UpdateType.market_comment_new,
  UpdateType.market_comment_edit,
  UpdateType.market_comment_delete,
  UpdateType.market_comment_restore
];

const _wallReplyEvents = [
  UpdateType.wall_reply_new,
  UpdateType.wall_reply_edit,
  UpdateType.wall_reply_delete,
  UpdateType.wall_reply_restore
];

const _boardPostEvents = [
  UpdateType.board_post_new,
  UpdateType.board_post_edit,
  UpdateType.board_post_delete,
  UpdateType.board_post_restore
];

/// Event model `comment`.
///
/// See:
/// - PhotoCommentNew: https://dev.vk.com/ru/api/community-events/json-schema#photo_comment_new
/// - PhotoCommentNew: https://dev.vk.com/ru/api/community-events/json-schema#photo_comment_new
/// - PhotoCommentEdit: https://dev.vk.com/ru/api/community-events/json-schema#photo_comment_edit
/// - PhotoCommentDelete: https://dev.vk.com/ru/api/community-events/json-schema#photo_comment_delete
/// - PhotoCommentRestore: https://dev.vk.com/ru/api/community-events/json-schema#photo_comment_restore
/// - VideoCommentNew: https://dev.vk.com/ru/api/community-events/json-schema#video_comment_new
/// - VideoCommentEdit: https://dev.vk.com/ru/api/community-events/json-schema#video_comment_edit
/// - VideoCommentDelete: https://dev.vk.com/ru/api/community-events/json-schema#video_comment_delete
/// - VideoCommentRestore: https://dev.vk.com/ru/api/community-events/json-schema#video_comment_restore
/// - MarketCommentNew: https://dev.vk.com/ru/api/community-events/json-schema#market_comment_new
/// - MarketCommentEdit: https://dev.vk.com/ru/api/community-events/json-schema#market_comment_edit
/// - MarketCommentDelete: https://dev.vk.com/ru/api/community-events/json-schema#market_comment_delete
/// - MarketCommentRestore: https://dev.vk.com/ru/api/community-events/json-schema#market_comment_restore
/// - WallReplyNew: https://dev.vk.com/ru/api/community-events/json-schema#wall_reply_new
/// - WallReplyEdit: https://dev.vk.com/ru/api/community-events/json-schema#wall_reply_edit
/// - WallReplyDelete: https://dev.vk.com/ru/api/community-events/json-schema#wall_reply_delete
/// - WallReplyRestore: https://dev.vk.com/ru/api/community-events/json-schema#wall_reply_restore
/// - BoardPostNew: https://dev.vk.com/ru/api/community-events/json-schema#board_post_new
/// - BoardPostEdit: https://dev.vk.com/ru/api/community-events/json-schema#board_post_edit
/// - BoardPostDelete: https://dev.vk.com/ru/api/community-events/json-schema#board_post_delete
/// - BoardPostRestore: https://dev.vk.com/ru/api/community-events/json-schema#board_post_restore
class VkDartCommentUpdate extends WallReplyAttachmentModel {
  // ignore: public_member_api_docs
  final VkDartUpdate update;

  // ignore: public_member_api_docs
  VkDartCommentUpdate(this.update) : super(update.object);

  /// Check is new comment
  bool get isNew => _newEvents.contains(update.type);

  /// Check is photo comment.
  bool get isPhotoComment => _photoCommentEvents.contains(update.type);

  /// Check is video comment.
  bool get isVideoComment => _videoCommentEvents.contains(update.type);

  /// Check is market comment.
  bool get isMarketComment => _marketCommentEvents.contains(update.type);

  /// Check is wall comment.
  bool get isWallComment => _wallReplyEvents.contains(update.type);

  /// Check is board comment.
  bool get isBoardComment => _boardPostEvents.contains(update.type);

  /// Is the sender a user.
  bool get isUser => fromId > 0;

  /// Is the sender a group
  bool get isGroup => fromId < 0;

  /// The ID of the user who deleted the comment.
  int? get deleterId => update.object['deleter_id'];

  /// Owner Id
  @override
  int get ownerId =>
      update.object['owner_id'] ??
      update.object['photo_owner_id'] ??
      update.object['video_owner_id'] ??
      update.object['post_owner_id'] ??
      update.object['market_owner_id'] ??
      update.object['topic_owner_id'];

  /// Object ID.
  int get objectId =>
      update.object['photo_id'] ??
      update.object['video_id'] ??
      update.object['post_id'] ??
      update.object['item_id'] ??
      update.object['topic_id'];
}
