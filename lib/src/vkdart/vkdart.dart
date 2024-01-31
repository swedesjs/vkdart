part of '../../../vkdart.dart';

/// The main class of the library.
/// It contains methods for working with the VK API.
/// ```dart
/// vkdart.users.get({'user_id': 'durov'});
/// ```
/// It also contains methods for working with the update fetcher.
///
/// ```dart
/// vkdart.onMessage().listen((event) => print(event.object['message']['text']));
/// ```
/// `vkdart` - Instance of [VkDart].
class VkDart extends Api {
  /// Constructor.
  /// [token] - access token.
  /// [event] - [Event] instance.
  /// [fetcher] - [AbstractUpdateFetcher] instance.
  /// [groupId] - group id.
  /// [language] - Language.
  /// [version] - API version
  VkDart(
    String token, {
    Event? event,
    AbstractUpdateFetcher? fetcher,
    int? groupId,
    LangApi language = LangApi.ru,
    String version = '5.131',
  })  : _event = event ?? Event(),
        super(token: token, language: language, version: version) {
    if ((fetcher is Longpoll && groupId == null) || groupId == null) {
      throw VkDartException('Longpoll fetcher requires group id');
    }

    this.fetcher = fetcher ?? Longpoll(this, groupId: groupId);
  }

  final Event _event;

  /// Update fetcher.
  late final AbstractUpdateFetcher fetcher;

  /// Start fetcher
  Future<void> start() async {
    fetcher.onUpdate().listen(_event.emitUpdate);
    return fetcher.start();
  }

  /// Stop fetcher
  Future<void> stop() => fetcher.stop();

  /// Listen for `message_new`, `message_edit`, `message_reply` events
  Stream<VkDartMessage> onMessage() =>
      _event.onMessage().map((event) => VkDartMessage(this, event));

  /// Listen for `message_allow` event.
  Stream<VkDartMessageAllow> onMessageAllow() =>
      _event.onMessageAllow().map(VkDartMessageAllow.new);

  /// Listen for `message_deny` event.
  Stream<VkDartMessageDeny> onMessageDeny() =>
      _event.onMessageDeny().map(VkDartMessageDeny.new);

  /// Listen for `message_typing_state` event.
  Stream<VkDartMessageTypingState> onMessageTypingState() =>
      _event.onMessageTypingState().map(VkDartMessageTypingState.new);

  /// Listen for `message_event` event.
  Stream<Update> onMessageEvent() => _event.onMessageEvent();

  /// Listen for `photo_new`, `video_new`, `audio_new` events.
  Stream<Update> onAttachmentNew() => _event.onAttachmentNew();

  /// Listen for `photo_comment_new`, `photo_comment_edit`, `photo_comment_restore`, `photo_comment_delete`,
  /// `video_comment_new`, `video_comment_edit`, `video_comment_restore`, `video_comment_delete`,
  /// `market_comment_new`, `market_comment_edit`, `market_comment_restore`, `market_comment_delete`
  /// `wall_reply_new`, `wall_reply_edit`, `wall_reply_restore`, `wall_reply_delete`
  /// `board_post_new`, `board_post_edit`, `board_post_restore`, `board_post_delete` events.
  Stream<Update> onComment() => _event.onComment();

  /// Listen for `wall_post_new`, `wall_repost` events.
  Stream<Update> onWallPost() => _event.onWallPost();

  /// Listen for `like_add`, `like_remove` events.
  Stream<Update> onLike() => _event.onLike();

  /// Listen for `market_order_new`, `market_order_edit` events.
  Stream<Update> onMarketOrder() => _event.onMarketOrder();

  /// Listen for `group_join`, `group_leave` events.
  Stream<Update> onGroup() => _event.onGroup();

  /// Listen for `user_block`, `user_unblock` events.
  Stream<Update> onUser() => _event.onUser();

  /// Listen for `poll_vote_new` event.
  Stream<Update> onPollVoteNew() => _event.onPollVoteNew();

  /// Listen for `group_officers_edit`, `group_change_settings`, `group_change_photo` events.
  Stream<Update> onGroupUpdate() => _event.onGroupUpdate();

  /// Listen for `vk_pay_transaction` events.
  Stream<Update> onVkpayTransaction() => _event.onVkpayTransaction();

  /// Listen for `app_payload` events.
  Stream<Update> onAppPayload() => _event.onAppPayload();

  /// Listen for `donut_subscription_price_changed` event.
  Stream<Update> onDonutSubscriptionPriceChanged() =>
      _event.onDonutSubscriptionPriceChanged();

  /// Listen for `donut_subscription_create`, `donut_subscription_prolonged`, `donut_subscription_expired`, `donut_subscription_cancelled` events.
  Stream<Update> onDonutWithdraw() => _event.onDonutWithdraw();
}

// ignore: public_member_api_docs
class VkDartException implements Exception {
  // ignore: public_member_api_docs
  VkDartException(this.message);

  /// Message of the exception.
  final String message;

  @override
  String toString() => 'VkDartException: $message';
}
