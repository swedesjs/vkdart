import 'dart:async';

import 'package:vkdart/model.dart';
import 'package:vkdart/src/vkdart/model/updates/sub_updates/chat_create.dart';
import 'package:vkdart/vkdart.dart';
import 'package:vkdart/vkontakte.dart';

const _$chatPhotoEvents = ['chat_photo_update', 'chat_photo_remove'];
const _$chatPinEvents = ['chat_pin_message', 'chat_unpin_message'];
const _$chatUserEvents = [
  'chat_invite_user',
  'chat_kick_user',
  'chat_invite_user_by_link'
];
const _$chatCreateEvent = ['chat_create'];
const _$chatTitleUpdateEvent = ['chat_title_update'];

/// Базовый класс пакета.
/// Позволяет отправлять запросы к методам VK API с помощью функции [request],
/// а также прослушивать события Longpoll API и Callback API ([Webhook]).
///
/// Пример:
/// ```dart
/// // События message_new, message_edit, message_reply.
/// vkdart.onMessage().listen((event) {
///   print('Событие сообщения!');
///   print('SenderId: ${event.senderId}');
///
///   vkdart.request('messages.send', {
///      'peer_id': event.peerId,
///      'message': 'Привет, мир!',
///      'random_id': 0
///   }); // Использование API.
/// });
///
/// vkdart.start().then((_) => print('Longpoll/Callback API запущен'));
/// ```
///
/// `vkdart` — экземпляр [VkDart].
class VkDart extends Vkontakte {
  final Event _event;

  StreamSubscription<VkDartUpdate>? _updateSubscription;
  Future<void>? _disposeFuture;

  /// Получатель обновлений.
  final AbstractUpdateFetcher fetcher;

  /// Основной конструктор.
  ///
  /// Параметр [token] необходим для запросов к методам VK API.
  ///
  /// В [fetcher] указывается способ получения событий. Для этого предусмотрены классы [Longpoll] и [Webhook] (Callback API).
  /// - `Longpoll API`: очередь событий хранится на стороне VK, и для её получения необходимо обращаться к серверу VK.
  /// ```dart
  /// final GROUP_ID = 123456;
  /// final fetcher = Longpoll(GROUP_ID);
  /// ```
  /// - `Callback API`: очередь событий отправляется на ваш сервер.
  /// ```dart
  /// final fetcher = await Webhook.createHttpServer(
  ///   confirmationToken: 'token',
  ///   secretKey: 'key',
  /// ); // или createHttpsServer.
  /// ```
  /// В [event] указывается класс с методами для прослушивания событий.
  /// Необязательный параметр.
  ///
  /// В [language] указывается язык данных, возвращаемых при вызове метода VK.
  /// По умолчанию используется [LangApi.ru].
  ///
  /// В [version] указывается версия VK API.
  /// По умолчанию используется версия 5.131.
  ///
  /// Пример:
  /// ```dart
  /// final vkdart = VkDart('accessToken', fetcher: fetcher, event: Event(sync: false /* необязательный параметр */));
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

  /// Запускает получатель обновлений
  Future<void> start() async {
    if (_disposeFuture != null) {
      throw StateError('VkDart has been disposed');
    }

    if (_updateSubscription == null) {
      final subscription = onUpdate().listen(_event.emitUpdate);
      _updateSubscription = subscription;

      try {
        await fetcher.start();
      } catch (_) {
        if (identical(_updateSubscription, subscription)) {
          _updateSubscription = null;
        }
        await subscription.cancel();
        rethrow;
      }

      return;
    }

    await fetcher.start();
  }

  /// Останавливает получатель обновлений
  Future<void> stop() =>
      _disposeFuture == null ? _stop() : Future<void>.value();

  Future<void> _stop() async {
    final subscription = _updateSubscription;
    _updateSubscription = null;

    try {
      await fetcher.stop();
    } finally {
      await subscription?.cancel();
    }
  }

  /// Останавливает получатель и закрывает внутренние потоки.
  ///
  /// После вызова этого метода экземпляр нельзя запустить повторно.
  Future<void> dispose() => _disposeFuture ??= _dispose();

  Future<void> _dispose() async {
    try {
      await _stop();
    } finally {
      await Future.wait([fetcher.dispose(), _event.dispose()]);
    }
  }

  /// Прослушивает события.
  Stream<VkDartUpdate> onUpdate() => fetcher.onUpdate();

  /// Прослушивает события `message_new`, `message_edit`, `message_reply`.
  Stream<VkDartMessageUpdate> onMessage() =>
      _event.onMessage().map((event) => VkDartMessageUpdate(this, event));

  Stream<VkDartMessageUpdate> _onChat(List<String> subTypes) =>
      onMessage().where((event) => subTypes.contains(event.actionType));

  /// Прослушивает сообщения о действии в чате `chat_create`.
  /// Возвращает [Stream] с экземпляром [VkDartChatCreateUpdate] (наследуется от [VkDartMessageUpdate]).
  /// Дополнительные свойства:
  /// - [VkDartChatCreateUpdate.title].
  ///
  /// Пример:
  /// ```dart
  /// vkdart.onChatCreate().listen((event) =>
  ///       event.sendMessage(message: 'Привет участникам беседы «${event.title}»!'));
  /// ```
  Stream<VkDartChatCreateUpdate> onChatCreate() => _onChat(_$chatCreateEvent)
      .map((event) => VkDartChatCreateUpdate(this, event.update));

  /// Прослушивает сообщения о действии в чате `chat_title_update`.
  /// Возвращает [Stream] с экземпляром [VkDartChatTitleUpdate] (наследуется от [VkDartMessageUpdate]).
  /// Дополнительные свойства:
  /// - [VkDartChatTitleUpdate.newTitle]
  /// - [VkDartChatTitleUpdate.oldTitle]
  ///
  /// Пример:
  /// ```dart
  /// vkdart.onChatTitle().listen((event) => event.sendMessage(
  ///       message: 'Пользователь @id${event.senderId} изменил название беседы с «${event.oldTitle}» на «${event.newTitle}»!'));
  /// ```
  Stream<VkDartChatTitleUpdate> onChatTitle() => _onChat(_$chatTitleUpdateEvent)
      .map((event) => VkDartChatTitleUpdate(this, event.update));

  /// Прослушивает сообщения о действиях в чате `chat_photo_update`, `chat_photo_remove`.
  /// Возвращает [Stream] с экземпляром [VkDartChatPhotoUpdate] (наследуется от [VkDartMessageUpdate]).
  /// Дополнительные свойства:
  /// - [VkDartChatPhotoUpdate.isUpdate]
  /// - [VkDartChatPhotoUpdate.isRemove]
  ///
  /// Пример:
  /// ```dart
  /// vkdart.onChatPhoto().listen((event) {
  ///   final textRemoveOrUpdated = event.isRemove ? 'удалил' : 'обновил';
  ///
  ///   event.sendMessage(
  ///       message:
  ///           'Пользователь @id${event.senderId} $textRemoveOrUpdated фотографию беседы!');
  /// });
  /// ```
  Stream<VkDartChatPhotoUpdate> onChatPhoto() => _onChat(_$chatPhotoEvents)
      .map((event) => VkDartChatPhotoUpdate(this, event.update));

  /// Прослушивает сообщения о действиях в чате `chat_pin_message`, `chat_unpin_message`.
  /// Возвращает [Stream] с экземпляром [VkDartChatPinUpdate] (наследуется от [VkDartMessageUpdate]).
  /// Дополнительные свойства:
  /// - [VkDartChatPinUpdate.isPin]
  /// - [VkDartChatPinUpdate.isUnpin]
  /// - [VkDartChatPinUpdate.memberId]
  /// - [VkDartChatPinUpdate.pinConversationMessageId]
  ///
  /// Пример:
  /// ```dart
  /// vkdart.onChatPin().listen((event) {
  ///   final textUnpinOrPin = event.isUnpin ? 'открепил' : 'закрепил';
  ///
  ///   event.sendMessage(
  ///       message:
  ///           'Пользователь @id${event.memberId} $textUnpinOrPin сообщение с ID "${event.pinConversationMessageId}" в беседе');
  /// });
  /// ```
  Stream<VkDartChatPinUpdate> onChatPin() => _onChat(_$chatPinEvents)
      .map((event) => VkDartChatPinUpdate(this, event.update));

  /// Прослушивает сообщения о действиях в чате `chat_invite_user`, `chat_kick_user`, `chat_invite_user_by_link`.
  /// Возвращает [Stream] с экземпляром [VkDartChatUserUpdate] (наследуется от [VkDartMessageUpdate]).
  /// Дополнительные свойства:
  /// - [VkDartChatUserUpdate.isInviteByLink]
  /// - [VkDartChatUserUpdate.isInviteNoLink]
  /// - [VkDartChatUserUpdate.isKick]
  /// - [VkDartChatUserUpdate.isInvite]
  /// - [VkDartChatUserUpdate.memberId]
  /// - [VkDartChatUserUpdate.email]
  ///
  /// Пример:
  /// ```dart
  /// vkdart.onChatUser().listen((event) {
  ///   final sayHelloOrGoodbye = event.isKick ? 'До свидания' : 'Привет';
  ///
  ///   event.sendMessage(message: '$sayHelloOrGoodbye,  @id${event.memberId}!');
  /// });
  /// ```
  Stream<VkDartChatUserUpdate> onChatUser() => _onChat(_$chatUserEvents)
      .map((event) => VkDartChatUserUpdate(this, event.update));

  /// Прослушивает событие `message_allow`.
  Stream<VkDartMessageAllowUpdate> onMessageAllow() =>
      _event.onMessageAllow().map(VkDartMessageAllowUpdate.new);

  /// Прослушивает событие `message_deny`.
  Stream<VkDartMessageDenyUpdate> onMessageDeny() =>
      _event.onMessageDeny().map(VkDartMessageDenyUpdate.new);

  /// Прослушивает событие `message_typing_state`.
  Stream<VkDartMessageTypingStateUpdate> onMessageTypingState() =>
      _event.onMessageTypingState().map(VkDartMessageTypingStateUpdate.new);

  /// Прослушивает событие `message_event`.
  Stream<VkDartMessageEventUpdate> onMessageEvent() => _event
      .onMessageEvent()
      .map((event) => VkDartMessageEventUpdate(this, event));

  /// Прослушивает событие `message_reaction_event`.
  Stream<VkDartMessageReactionEventUpdate> onMessageReactionEvent() =>
      _event.onMessageReactionEvent().map(VkDartMessageReactionEventUpdate.new);

  /// Прослушивает события `photo_new`, `video_new`, `audio_new`.
  Stream<VkDartNewAttachmentUpdate> onAttachmentNew() =>
      _event.onAttachmentNew().map(VkDartNewAttachmentUpdate.new);

  /// Прослушивает события `photo_comment_new`, `photo_comment_edit`, `photo_comment_restore`, `photo_comment_delete`,
  /// `video_comment_new`, `video_comment_edit`, `video_comment_restore`, `video_comment_delete`,
  /// `market_comment_new`, `market_comment_edit`, `market_comment_restore`, `market_comment_delete`
  /// `wall_reply_new`, `wall_reply_edit`, `wall_reply_restore`, `wall_reply_delete`
  /// события `board_post_new`, `board_post_edit`, `board_post_restore`, `board_post_delete`.
  Stream<VkDartCommentUpdate> onComment() =>
      _event.onComment().map(VkDartCommentUpdate.new);

  /// Прослушивает события `wall_post_new`, `wall_repost`.
  Stream<VkDartWallUpdate> onWall() =>
      _event.onWall().map(VkDartWallUpdate.new);

  /// Прослушивает события `like_add`, `like_remove`.
  Stream<VkDartLikeUpdate> onLike() =>
      _event.onLike().map(VkDartLikeUpdate.new);

  /// Прослушивает события `market_order_new`, `market_order_edit`.
  Stream<VkDartMarketOrderUpdate> onMarketOrder() =>
      _event.onMarketOrder().map(VkDartMarketOrderUpdate.new);

  /// Прослушивает события `group_join`, `group_leave`.
  Stream<VkDartGroupUpdate> onGroup() =>
      _event.onGroup().map(VkDartGroupUpdate.new);

  /// Прослушивает события `user_block`, `user_unblock`.
  Stream<VkDartUserUpdate> onUser() =>
      _event.onUser().map(VkDartUserUpdate.new);

  /// Прослушивает событие `poll_vote_new`.
  Stream<VkDartPollVoteNewUpdate> onPollVoteNew() =>
      _event.onPollVoteNew().map(VkDartPollVoteNewUpdate.new);

  /// Прослушивает события `group_officers_edit`, `group_change_settings`, `group_change_photo`.
  Stream<VkDartGroupChangeUpdate> onGroupChange() =>
      _event.onGroupChange().map(VkDartGroupChangeUpdate.new);

  /// Прослушивает событие `vk_pay_transaction`.
  Stream<VkDartPayTransactionUpdate> onVkpayTransaction() =>
      _event.onVkpayTransaction().map(VkDartPayTransactionUpdate.new);

  /// Прослушивает событие `app_payload`.
  Stream<VkDartAppPayloadUpdate> onAppPayload() =>
      _event.onAppPayload().map(VkDartAppPayloadUpdate.new);

  /// Прослушивает события `donut_subscription_create`, `donut_subscription_prolonged`, `donut_subscription_expired`,
  /// события `donut_subscription_cancelled`, `donut_subscription_price_changed`, `donut_money_withdraw`, `donut_money_withdraw_error`.
  Stream<VkDartDonutUpdate> onDonut() =>
      _event.onDonut().map(VkDartDonutUpdate.new);

  /// Прослушивает неизвестные события.
  Stream<VkDartUnsupportedEventUpdate> onUnsupportedEvent() =>
      _event.onUnsupportedEvent().map(VkDartUnsupportedEventUpdate.new);
}

// ignore: public_member_api_docs
class VkDartException implements Exception {
  /// Сообщение исключения.
  final String message;

  // ignore: public_member_api_docs
  VkDartException(this.message);

  @override
  String toString() => 'VkDartException: $message';
}
