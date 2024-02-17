import 'package:vkdart/model.dart';
import 'package:vkdart/vkdart.dart';
import 'package:vkdart/vkontakte.dart';

/// The base class of the package.
/// Allows to create requests to VK API methods using [request] function,
/// listen to [Longpoll] API and Callback API ([Webhook]) events.
///
/// Sample Example:
/// ```dart
/// // message_new, message_edit, message_reply events.
/// vkdart.onMessage().listen((event) {
///   print('message event!');
///   print('SenderId: ${event.senderId}');
///
///   vkdart.request('messages.send', {
///      'peer_id': event.peerId,
///      'message': 'Hello, World!',
///      'random_id': 0
///   }); // using API.
/// });
///
/// vkdart.start().then((_) => print('Longpoll/Callback API started'));
/// ```
///
/// `vkdart` - instance of [VkDart].
class VkDart extends Vkontakte {
  final Event _event;

  /// Update fetcher.
  late final AbstractUpdateFetcher fetcher;

  /// Basic constructor.
  ///
  /// In [token] is required for requests to VK API methods.
  ///
  /// In [fetcher] we specify how we want to receive events, for this purpose two classes [Longpoll] and [Webhook] (Callback API) are implemented.
  /// - `Longpoll API`: event queue is stored on VK side and each time it is necessary to access VK server.
  /// ```dart
  /// final GROUP_ID = 123456;
  /// final fetcher = Longpoll(GROUP_ID);
  /// ```
  /// - `Callback API`: event queue comes to your server.
  /// ```dart
  /// final fetcher = await Webhook.createHttpServer(
  ///   confirmationToken: 'token',
  ///   secretKey: 'key',
  /// ); // or createHttpsServer.
  /// ```
  /// In [event] we specify a class with methods to listen for events.
  /// Is optional.
  ///
  /// In [language] specify the language in which data will be sent when requesting the VK method.
  /// By default is [LangApi.ru].
  ///
  /// In [version] specify the version of VK API.
  /// By default is 5.131.
  ///
  /// Sample Example:
  /// ```dart
  /// final vkdart = VkDart('accessToken', fetcher: fetcher, event: Event(sync: false /* optional */));
  /// ```
  VkDart(
    String token, {
    required this.fetcher,
    Event? event,
    LangApi language = LangApi.ru,
    String version = '5.131',
  })  : _event = event ?? Event(),
        super(token: token, language: language, version: version) {
    if (fetcher is Longpoll) {
      (fetcher as Longpoll).vkontakte = this;
    }
  }

  /// Start fetcher
  Future<void> start() async {
    fetcher.onUpdate().listen(_event.emitUpdate);
    return fetcher.start();
  }

  /// Stop fetcher
  Future<void> stop() => fetcher.stop();

  /// Listen for `message_new`, `message_edit`, `message_reply` events.
  Stream<VkDartMessageUpdate> onMessage() =>
      _event.onMessage().map(VkDartMessageUpdate.new);

  /// Listen for `message_allow` event.
  Stream<VkDartMessageAllowUpdate> onMessageAllow() =>
      _event.onMessageAllow().map(VkDartMessageAllowUpdate.new);

  /// Listen for `message_deny` event.
  Stream<VkDartMessageDenyUpdate> onMessageDeny() =>
      _event.onMessageDeny().map(VkDartMessageDenyUpdate.new);

  /// Listen for `message_typing_state` event.
  Stream<VkDartMessageTypingStateUpdate> onMessageTypingState() =>
      _event.onMessageTypingState().map(VkDartMessageTypingStateUpdate.new);

  /// Listen for `message_event` event.
  Stream<VkDartMessageEventUpdate> onMessageEvent() => _event
      .onMessageEvent()
      .map((event) => VkDartMessageEventUpdate(this, event));

  /// Listen for `message_reaction_event` event.
  Stream<VkDartMessageReactionEventUpdate> onMessageReactionEvent() =>
      _event.onMessageReactionEvent().map(VkDartMessageReactionEventUpdate.new);

  /// Listen for `photo_new`, `video_new`, `audio_new` events.
  Stream<VkDartNewAttachmentUpdate> onAttachmentNew() =>
      _event.onAttachmentNew().map(VkDartNewAttachmentUpdate.new);

  /// Listen for `photo_comment_new`, `photo_comment_edit`, `photo_comment_restore`, `photo_comment_delete`,
  /// `video_comment_new`, `video_comment_edit`, `video_comment_restore`, `video_comment_delete`,
  /// `market_comment_new`, `market_comment_edit`, `market_comment_restore`, `market_comment_delete`
  /// `wall_reply_new`, `wall_reply_edit`, `wall_reply_restore`, `wall_reply_delete`
  /// `board_post_new`, `board_post_edit`, `board_post_restore`, `board_post_delete` events.
  Stream<VkDartCommentUpdate> onComment() =>
      _event.onComment().map(VkDartCommentUpdate.new);

  /// Listen for `wall_post_new`, `wall_repost` events.
  Stream<VkDartWallUpdate> onWall() =>
      _event.onWall().map(VkDartWallUpdate.new);

  /// Listen for `like_add`, `like_remove` events.
  Stream<VkDartLikeUpdate> onLike() =>
      _event.onLike().map(VkDartLikeUpdate.new);

  /// Listen for `market_order_new`, `market_order_edit` events.
  Stream<VkDartMarketOrderUpdate> onMarketOrder() =>
      _event.onMarketOrder().map(VkDartMarketOrderUpdate.new);

  /// Listen for `group_join`, `group_leave` events.
  Stream<VkDartGroupUpdate> onGroup() =>
      _event.onGroup().map(VkDartGroupUpdate.new);

  /// Listen for `user_block`, `user_unblock` events.
  Stream<VkDartUserUpdate> onUser() =>
      _event.onUser().map(VkDartUserUpdate.new);

  /// Listen for `poll_vote_new` event.
  Stream<VkDartPollVoteNewUpdate> onPollVoteNew() =>
      _event.onPollVoteNew().map(VkDartPollVoteNewUpdate.new);

  /// Listen for `group_officers_edit`, `group_change_settings`, `group_change_photo` events.
  Stream<VkDartGroupChangeUpdate> onGroupChange() =>
      _event.onGroupChange().map(VkDartGroupChangeUpdate.new);

  /// Listen for `vk_pay_transaction` event.
  Stream<VkDartPayTransactionUpdate> onVkpayTransaction() =>
      _event.onVkpayTransaction().map(VkDartPayTransactionUpdate.new);

  /// Listen for `app_payload` event.
  Stream<VkDartAppPayloadUpdate> onAppPayload() =>
      _event.onAppPayload().map(VkDartAppPayloadUpdate.new);

  /// Listen for `donut_subscription_create`, `donut_subscription_prolonged`, `donut_subscription_expired`,
  /// `donut_subscription_cancelled`, `donut_subscription_price_changed`, `donut_money_withdraw`, `donut_money_withdraw_error` events.
  Stream<VkDartDonutUpdate> onDonut() =>
      _event.onDonut().map(VkDartDonutUpdate.new);

  /// Listen of unknown events.
  Stream<VkDartUnsupportedEventUpdate> onUnsupportedEvent() =>
      _event.onUnsupportedEvent().map(VkDartUnsupportedEventUpdate.new);
}

// ignore: public_member_api_docs
class VkDartException implements Exception {
  /// Message of the exception.
  final String message;

  // ignore: public_member_api_docs
  VkDartException(this.message);

  @override
  String toString() => 'VkDartException: $message';
}
