import 'dart:async';

import 'package:vkdart/model.dart';
import 'package:vkdart/vkdart.dart';

/// This class provides methods to subscribe to events.
/// It's used in [VkDart] class.
class Event {
  // message_new, message_edit, message_reply,
  final StreamController<VkDartUpdate> _messageController;

  // message_allow
  final StreamController<VkDartUpdate> _messageAllowController;

  // message_deny
  final StreamController<VkDartUpdate> _messageDenyController;

  // message_typing_state
  final StreamController<VkDartUpdate> _messageTypingStateController;

  // message_event
  final StreamController<VkDartUpdate> _messageEventController;

  // message_reaction_event
  final StreamController<VkDartUpdate> _messageReactionController;

  // photo_new, audio_new, video_new
  final StreamController<VkDartUpdate> _attachmentNewController;

  // photo_comment_new, photo_comment_edit, photo_comment_restore, photo_comment_delete,
  // video_comment_new, video_comment_edit, video_comment_restore, video_comment_delete
  // market_comment_new, market_comment_edit, market_comment_restore, market_comment_delete
  // wall_reply_new, wall_reply_edit, wall_reply_restore, wall_reply_delete
  // board_post_new, board_post_edit, board_post_restore, board_post_delete events
  final StreamController<VkDartUpdate> _commentController;

  // wall_post_new, wall_repost
  final StreamController<VkDartUpdate> _wallController;

  // like_add, like_remove
  final StreamController<VkDartUpdate> _likeController;

  // market_order_new, market_order_edit events
  final StreamController<VkDartUpdate> _marketOrderController;

  // group_join, group_leave
  final StreamController<VkDartUpdate> _groupController;

  // user_block, user_unblock
  final StreamController<VkDartUpdate> _userController;

  // poll_vote_new,
  final StreamController<VkDartUpdate> _pollVoteNewController;

  // group_officers_edit, group_change_settings, group_change_photo
  final StreamController<VkDartUpdate> _groupChangeController;

  // vk_pay_transaction
  final StreamController<VkDartUpdate> _vkpayTransactionController;

  // app_payload
  final StreamController<VkDartUpdate> _appPayloadController;

  // donut_subscription_create, donut_subscription_prolonged, donut_subscription_expired,
  // donut_subscription_cancelled, donut_subscription_price_changed donut_money_withdraw, donut_money_withdraw_error
  final StreamController<VkDartUpdate> _donutController;
  final StreamController<VkDartUpdate> _unsupportedEventController;

  // ignore: public_member_api_docs
  Event({bool sync = false})
      : _messageController = StreamController.broadcast(sync: sync),
        _messageAllowController = StreamController.broadcast(sync: sync),
        _messageDenyController = StreamController.broadcast(sync: sync),
        _messageTypingStateController = StreamController.broadcast(sync: sync),
        _messageEventController = StreamController.broadcast(sync: sync),
        _messageReactionController = StreamController.broadcast(sync: sync),
        _attachmentNewController = StreamController.broadcast(sync: sync),
        _commentController = StreamController.broadcast(sync: sync),
        _wallController = StreamController.broadcast(sync: sync),
        _likeController = StreamController.broadcast(sync: sync),
        _marketOrderController = StreamController.broadcast(sync: sync),
        _groupController = StreamController.broadcast(sync: sync),
        _userController = StreamController.broadcast(sync: sync),
        _pollVoteNewController = StreamController.broadcast(sync: sync),
        _groupChangeController = StreamController.broadcast(sync: sync),
        _vkpayTransactionController = StreamController.broadcast(sync: sync),
        _appPayloadController = StreamController.broadcast(sync: sync),
        _donutController = StreamController.broadcast(sync: sync),
        _unsupportedEventController = StreamController.broadcast(sync: sync);

  /// Emitter update.
  void emitUpdate(VkDartUpdate update) {
    switch (update.type) {
      case UpdateType.message_new:
      case UpdateType.message_reply:
      case UpdateType.message_edit:
        _messageController.add(update);
      case UpdateType.message_allow:
        _messageAllowController.add(update);
      case UpdateType.message_deny:
        _messageDenyController.add(update);
      case UpdateType.message_typing_state:
        _messageTypingStateController.add(update);
      case UpdateType.message_event:
        _messageEventController.add(update);
      case UpdateType.message_reaction_event:
        _messageReactionController.add(update);
      case UpdateType.audio_new:
      case UpdateType.photo_new:
      case UpdateType.video_new:
        _attachmentNewController.add(update);
      case UpdateType.photo_comment_new:
      case UpdateType.photo_comment_edit:
      case UpdateType.photo_comment_restore:
      case UpdateType.photo_comment_delete:
      case UpdateType.video_comment_new:
      case UpdateType.video_comment_edit:
      case UpdateType.video_comment_restore:
      case UpdateType.video_comment_delete:
      case UpdateType.market_comment_new:
      case UpdateType.market_comment_edit:
      case UpdateType.market_comment_restore:
      case UpdateType.market_comment_delete:
      case UpdateType.wall_reply_new:
      case UpdateType.wall_reply_edit:
      case UpdateType.wall_reply_restore:
      case UpdateType.wall_reply_delete:
      case UpdateType.board_post_new:
      case UpdateType.board_post_edit:
      case UpdateType.board_post_restore:
      case UpdateType.board_post_delete:
        _commentController.add(update);
      case UpdateType.wall_post_new:
      case UpdateType.wall_repost:
        _wallController.add(update);
      case UpdateType.like_add:
      case UpdateType.like_remove:
        _likeController.add(update);
      case UpdateType.market_order_new:
      case UpdateType.market_order_edit:
        _marketOrderController.add(update);
      case UpdateType.group_join:
      case UpdateType.group_leave:
        _groupController.add(update);
      case UpdateType.user_block:
      case UpdateType.user_unblock:
        _userController.add(update);
      case UpdateType.poll_vote_new:
        _pollVoteNewController.add(update);
      case UpdateType.group_officers_edit:
      case UpdateType.group_change_settings:
      case UpdateType.group_change_photo:
        _groupChangeController.add(update);
      case UpdateType.vkpay_transaction:
        _vkpayTransactionController.add(update);
      case UpdateType.app_payload:
        _appPayloadController.add(update);
      case UpdateType.donut_subscription_create:
      case UpdateType.donut_subscription_prolonged:
      case UpdateType.donut_subscription_expired:
      case UpdateType.donut_subscription_cancelled:
      case UpdateType.donut_subscription_price_changed:
      case UpdateType.donut_money_withdraw:
      case UpdateType.donut_money_withdraw_error:
        _donutController.add(update);
      case UpdateType.unknown_event:
        _unsupportedEventController.add(update);
    }
  }

  /// Listen for `message_new`, `message_edit`, `message_reply` events.
  Stream<VkDartUpdate> onMessage() => _messageController.stream;

  /// Listen for `message_allow` event.
  Stream<VkDartUpdate> onMessageAllow() => _messageAllowController.stream;

  /// Listen for `message_deny` event.
  Stream<VkDartUpdate> onMessageDeny() => _messageDenyController.stream;

  /// Listen for `message_typing_state` event.
  Stream<VkDartUpdate> onMessageTypingState() =>
      _messageTypingStateController.stream;

  /// Listen for `message_event` event.
  Stream<VkDartUpdate> onMessageEvent() => _messageEventController.stream;

  /// Listen for `message_reaction_event` event.
  Stream<VkDartUpdate> onMessageReactionEvent() =>
      _messageReactionController.stream;

  /// Listen for `photo_new`, `video_new`, `audio_new` events.
  Stream<VkDartUpdate> onAttachmentNew() => _attachmentNewController.stream;

  /// Listen for `photo_comment_new`, `photo_comment_edit`, `photo_comment_restore`, `photo_comment_delete`,
  /// `video_comment_new`, `video_comment_edit`, `video_comment_restore`, `video_comment_delete`,
  /// `market_comment_new`, `market_comment_edit`, `market_comment_restore`, `market_comment_delete`
  /// `wall_reply_new`, `wall_reply_edit`, `wall_reply_restore`, `wall_reply_delete`
  /// `board_post_new`, `board_post_edit`, `board_post_restore`, `board_post_delete` events.
  Stream<VkDartUpdate> onComment() => _commentController.stream;

  /// Listen for `wall_post_new`, `wall_repost` events.
  Stream<VkDartUpdate> onWall() => _wallController.stream;

  /// Listen for `like_add`, `like_remove` events.
  Stream<VkDartUpdate> onLike() => _likeController.stream;

  /// Listen for `market_order_new`, `market_order_edit` events.
  Stream<VkDartUpdate> onMarketOrder() => _marketOrderController.stream;

  /// Listen for `group_join`, `group_leave` events.
  Stream<VkDartUpdate> onGroup() => _groupController.stream;

  /// Listen for `user_block`, `user_unblock` events.
  Stream<VkDartUpdate> onUser() => _userController.stream;

  /// Listen for `poll_vote_new` event.
  Stream<VkDartUpdate> onPollVoteNew() => _pollVoteNewController.stream;

  /// Listen for `group_officers_edit`, `group_change_settings`, `group_change_photo` events.
  Stream<VkDartUpdate> onGroupChange() => _groupChangeController.stream;

  /// Listen for `vk_pay_transaction` event.
  Stream<VkDartUpdate> onVkpayTransaction() =>
      _vkpayTransactionController.stream;

  /// Listen for `app_payload` event.
  Stream<VkDartUpdate> onAppPayload() => _appPayloadController.stream;

  /// Listen for `donut_subscription_create`, `donut_subscription_prolonged`, `donut_subscription_expired`, `donut_subscription_cancelled`,
  /// `donut_subscription_price_changed`, `donut_money_withdraw`, `donut_money_withdraw_error`s events.
  Stream<VkDartUpdate> onDonut() => _donutController.stream;

  /// Listen of unknown events.
  Stream<VkDartUpdate> onUnsupportedEvent() =>
      _unsupportedEventController.stream;
}
