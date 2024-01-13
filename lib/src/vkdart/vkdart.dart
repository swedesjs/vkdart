import 'package:vkdart/events.dart';
import 'package:vkdart/src/api.dart';

/// The main class of the library.
/// It contains methods for working with the VK API.
/// ```dart
/// var api = vkdart.getApi();
/// api.users.get(...);
/// ```
/// It also contains methods for working with the update fetcher.
///
/// ```dart
/// vkdart.onMessage().listen((event) => print(event.object['message']['text']));
/// ```
/// `vkdart` - Instance of [VkDart].
class VkDart {
  /// Constructor.
  /// [token] - access token.
  /// [event] - [Event] instance.
  /// [fetcher] - [AbstractUpdateFetcher] instance.
  VkDart(String token, Event event, {required this.fetcher})
      : _token = token,
        _event = event;

  final String _token;
  final Event _event;

  /// Update fetcher.
  final AbstractUpdateFetcher fetcher;

  /// Returns [Api] instance.
  Api getApi({
    LangApi lang = LangApi.ru,
    String version = '5.131',
  }) =>
      Api(token: _token, language: lang, version: version);

  /// Start fetcher
  Future<void> start() async {
    fetcher.onUpdate().listen(_event.emitUpdate);
    return fetcher.start();
  }

  /// Stop fetcher
  Future<void> stop() => fetcher.stop();

  /// Listen for `message_new`, `message_edit`, `message_reply` events
  Stream<Update> onMessage() => _event.onMessage();

  /// Listen for `message_allow` event.
  Stream<Update> onMessageAllow() => _event.onMessageAllow();

  /// Listen for `message_deny` event.
  Stream<Update> onMessageDeny() => _event.onMessageDeny();

  /// Listen for `message_typing_state` event.
  Stream<Update> onMessageTypingState() => _event.onMessageTypingState();

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