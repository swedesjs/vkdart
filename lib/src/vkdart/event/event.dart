part of '../../../events.dart';

/// This class provides methods to subscribe to events.
/// for example to listen to new messages.
///
class Event {
  // ignore: public_member_api_docs
  Event({bool sync = false})
      : _messageController = StreamController.broadcast(sync: sync),
        _messageAllowController = StreamController.broadcast(sync: sync),
        _messageDenyController = StreamController.broadcast(sync: sync),
        _messageTypingStateController = StreamController.broadcast(sync: sync),
        _messageEventController = StreamController.broadcast(sync: sync),
        _attachmentNewController = StreamController.broadcast(sync: sync),
        _commentController = StreamController.broadcast(sync: sync),
        _wallPostController = StreamController.broadcast(sync: sync),
        _likeController = StreamController.broadcast(sync: sync),
        _marketOrderController = StreamController.broadcast(sync: sync),
        _groupController = StreamController.broadcast(sync: sync),
        _userController = StreamController.broadcast(sync: sync),
        _pollVoteNewController = StreamController.broadcast(sync: sync),
        _groupUpdateController = StreamController.broadcast(sync: sync),
        _vkpayTransactionController = StreamController.broadcast(sync: sync),
        _appPayloadController = StreamController.broadcast(sync: sync),
        _donutSubscriptionController = StreamController.broadcast(sync: sync),
        _donutSubscriptionPriceChangedController =
            StreamController.broadcast(sync: sync),
        _donutWithdrawController = StreamController.broadcast(sync: sync);

  // message_new, message_edit, message_reply,
  final StreamController<Update> _messageController;
  // message_allow
  final StreamController<Update> _messageAllowController;
  // message_deny
  final StreamController<Update> _messageDenyController;
  // message_typing_state
  final StreamController<Update> _messageTypingStateController;
  // message_event
  final StreamController<Update> _messageEventController;
  // photo_new, audio_new, video_new
  final StreamController<Update> _attachmentNewController;
  // photo_comment_new, photo_comment_edit, photo_comment_restore, photo_comment_delete,
  // video_comment_new, video_comment_edit, video_comment_restore, video_comment_delete
  // market_comment_new, market_comment_edit, market_comment_restore, market_comment_delete
  // wall_reply_new, wall_reply_edit, wall_reply_restore, wall_reply_delete
  // board_post_new, board_post_edit, board_post_restore, board_post_delete events
  final StreamController<Update> _commentController;
  // wall_post_new, wall_repost
  final StreamController<Update> _wallPostController;
  // like_add, like_remove
  final StreamController<Update> _likeController;
  // market_order_new, market_order_edit events
  final StreamController<Update> _marketOrderController;
  // group_join, group_leave
  final StreamController<Update> _groupController;
  // user_block, user_unblock
  final StreamController<Update> _userController;
  // poll_vote_new,
  final StreamController<Update> _pollVoteNewController;
  // group_officers_edit, group_change_settings, group_change_photo
  final StreamController<Update> _groupUpdateController;
  // vk_pay_transaction
  final StreamController<Update> _vkpayTransactionController;
  // app_payload
  final StreamController<Update> _appPayloadController;
  // donut_subscription_create, donut_subscription_prolonged, donut_subscription_expired, donut_subscription_cancelled
  final StreamController<Update> _donutSubscriptionController;
  // donut_subscription_price_changed
  final StreamController<Update> _donutSubscriptionPriceChangedController;
  // donut_money_withdraw, donut_money_withdraw_error
  final StreamController<Update> _donutWithdrawController;

  /// Emiter update.
  void emitUpdate(Update update) {
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
        _wallPostController.add(update);
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
        _groupUpdateController.add(update);
      case UpdateType.vkpay_transaction:
        _vkpayTransactionController.add(update);
      case UpdateType.app_payload:
        _appPayloadController.add(update);
      case UpdateType.donut_subscription_create:
      case UpdateType.donut_subscription_prolonged:
      case UpdateType.donut_subscription_expired:
      case UpdateType.donut_subscription_cancelled:
        _donutSubscriptionController.add(update);
      case UpdateType.donut_subscription_price_changed:
        _donutSubscriptionPriceChangedController.add(update);
      case UpdateType.donut_money_withdraw:
      case UpdateType.donut_money_withdraw_error:
        _donutWithdrawController.add(update);
    }
  }

  /// Listen for `message_new`, `message_edit`, `message_reply` events
  Stream<Update> onMessage() => _messageController.stream;

  /// Listen for `message_allow` events.
  Stream<Update> onMessageAllow() => _messageAllowController.stream;

  /// Listens for `message_deny` events.
  Stream<Update> onMessageDeny() => _messageDenyController.stream;

  /// Listen for `message_typing_state` events.
  Stream<Update> onMessageTypingState() => _messageTypingStateController.stream;

  /// Listen for `message_event` events.
  Stream<Update> onMessageEvent() => _messageEventController.stream;

  /// Listen for `photo_new`, `video_new`, `audio_new` events.
  Stream<Update> onAttachmentNew() => _attachmentNewController.stream;

  /// Listen for `photo_comment_new`, `photo_comment_edit`, `photo_comment_restore`, `photo_comment_delete`,
  /// `video_comment_new`, `video_comment_edit`, `video_comment_restore`, `video_comment_delete`,
  /// `market_comment_new`, `market_comment_edit`, `market_comment_restore`, `market_comment_delete`
  /// `wall_reply_new`, `wall_reply_edit`, `wall_reply_restore`, `wall_reply_delete`
  /// `board_post_new`, `board_post_edit`, `board_post_restore`, `board_post_delete` events.
  Stream<Update> onComment() => _commentController.stream;

  /// Listen for `wall_post_new`, `wall_repost` events.
  Stream<Update> onWallPost() => _wallPostController.stream;

  /// Listen for `like_add`, `like_remove` events.
  Stream<Update> onLike() => _likeController.stream;

  /// Listen for `market_order_new`, `market_order_edit` events.
  Stream<Update> onMarketOrder() => _marketOrderController.stream;

  /// Listen for `group_join`, `group_leave` events.
  Stream<Update> onGroup() => _groupController.stream;

  /// Listen for `user_block`, `user_unblock` events.
  Stream<Update> onUser() => _userController.stream;

  /// Listen for `poll_vote_new` events.
  Stream<Update> onPollVoteNew() => _pollVoteNewController.stream;

  /// Listen for `group_officers_edit`, `group_change_settings`, `group_change_photo` events.
  Stream<Update> onGroupUpdate() => _groupUpdateController.stream;

  /// Listen for `vk_pay_transaction` events.
  Stream<Update> onVkpayTransaction() => _vkpayTransactionController.stream;

  /// Listen for `app_payload` events.
  Stream<Update> onAppPayload() => _appPayloadController.stream;

  /// Listen for `donut_subscription_create`, `donut_subscription_prolonged`, `donut_subscription_expired`, `donut_subscription_cancelled` events.
  Stream<Update> onDonutSubscription() => _donutSubscriptionController.stream;

  /// Listen for `donut_subscription_price_changed` events.
  Stream<Update> onDonutSubscriptionPriceChanged() =>
      _donutSubscriptionPriceChangedController.stream;

  /// Listen for `donut_money_withdraw`, `donut_money_withdraw_error` events.
  Stream<Update> onDonutWithdraw() => _donutWithdrawController.stream;
}