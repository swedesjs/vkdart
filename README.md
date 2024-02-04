# VkDart

[![Pub Version](https://img.shields.io/pub/v/vkdart?style=flat-square)](https://pub.dev/packages/vkdart)
[![Pub Popularity](https://img.shields.io/pub/popularity/vkdart?style=flat-square)](https://pub.dev/packages/vkdart)
[![Pub Points](https://img.shields.io/pub/points/vkdart?style=flat-square)](https://pub.dev/packages/vkdart)

> Package helps to make working with the [VK API](https://dev.vk.com/) easier.
>
> Chat discussion of the package - https://t.me/vk_dart

## Features
1. **Supports all methods.** Has interfaces of all public VK methods.
2. **Reliable.** Functionality of the package is wrapped in Unit tests 
3. **Event support.** Supports Callback API, Longpoll API
4. **Developing.** Functionality is becoming more!
5. **Easy to use.** Very easy to use!

## Usage

Initialization:
```dart
import 'package:vkdart/vkdart.dart';

void main() async {
  final TOKEN = ''; // Group Token
  final vkdart = VkDart(TOKEN, groupId: 123);

  vkdart.start();
}
```

Listening to events:
```dart
// message_new, message_edit, message_reply
vkdart.onMessage().listen((event) => print('A message has arrived!\n\n'
    'From ID: ${event.senderId}\n'
    'From Type: ${event.senderType.name}\n'
    'Dialog ID: ${event.peerId}\n'
    'Dialog Type: ${event.peerType.name}\n'
    'Outbox: ${event.isOutbox}'));

// message_event
vkdart.onMessageEvent().listen((event) => print(
    'The user clicked on the Callback button!\n'
    'Dialog ID: ${event.peerId}\n'
    'UserID: ${event.userId}'
    '${event.eventPayload != null ? '\nPayload: ${event.eventPayload}' : ''}'
    '\nEventID: ${event.eventId}'));
```

Listening on unsupported events:
```dart
vkdart
    .onUnsupportedEvent()
    .listen((event) => print('An unsupported event has arrived!\n'
        'It is necessary to inform the chat https://t.me/vk_dart\n\n'
        'Type of event ${event.eventType}\n'
        'Event Object: ${event.object}'));
```

Modifying [Stream](https://www.dartlang.org/tutorials/language/streams#methods-that-modify-a-stream):
```dart
vkdart
    .onComment()
    .where((event) => event.isPhotoComment && event.isNew)
    .listen((event) => print('Commented on the photo!\n\n'
        'Owner ID: ${event.ownerId}\n'
        'Photo ID: ${event.objectId}'
        '${event.attachments.isNotEmpty ? '\nAttachments: ${event.attachments}' : ''}'));

```

All event handlers:
```dart
/// Listen for `message_new`, `message_edit`, `message_reply` events.
Stream<VkDartMessageUpdate> onMessage();

/// Listen for `message_allow` event.
Stream<VkDartMessageAllowUpdate> onMessageAllow();

/// Listen for `message_deny` event.
Stream<VkDartMessageDenyUpdate> onMessageDeny();

/// Listen for `message_typing_state` event.
Stream<VkDartMessageTypingStateUpdate> onMessageTypingState();

/// Listen for `message_event` event.
Stream<Update> onMessageEvent();

/// Listen for `message_reaction_event` event.
Stream<VkDartMessageReactionEvent> onMessageReactionEvent();

/// Listen for `photo_new`, `video_new`, `audio_new` events.
Stream<VkDartNewAttachmentUpdate> onAttachmentNew();

/// Listen for `photo_comment_new`, `photo_comment_edit`, `photo_comment_restore`, `photo_comment_delete`,
/// `video_comment_new`, `video_comment_edit`, `video_comment_restore`, `video_comment_delete`,
/// `market_comment_new`, `market_comment_edit`, `market_comment_restore`, `market_comment_delete`
/// `wall_reply_new`, `wall_reply_edit`, `wall_reply_restore`, `wall_reply_delete`
/// `board_post_new`, `board_post_edit`, `board_post_restore`, `board_post_delete` events.
Stream<VkDartCommentUpdate> onComment();

/// Listen for `wall_post_new`, `wall_repost` events.
Stream<VkDartWallUpdate> onWall();

/// Listen for `like_add`, `like_remove` events.
Stream<VkDartLikeUpdate> onLike();

/// Listen for `market_order_new`, `market_order_edit` events.
Stream<Update> onMarketOrder();

/// Listen for `group_join`, `group_leave` events.
Stream<VkDartGroupUpdate> onGroup();

/// Listen for `user_block`, `user_unblock` events.
Stream<VkDartUserUpdate> onUser();

/// Listen for `poll_vote_new` event.
Stream<VkDartPollVoteNewUpdate> onPollVoteNew();

/// Listen for `group_officers_edit`, `group_change_settings`, `group_change_photo` events.
Stream<VkDartGroupChangeUpdate> onGroupChange();

/// Listen for `vk_pay_transaction` event.
Stream<VkDartPayTransactionUpdate> onVkpayTransaction();

/// Listen for `app_payload` event.
Stream<VkDartAppPayloadUpdate> onAppPayload();

/// Listen for `donut_subscription_create`, `donut_subscription_prolonged`, `donut_subscription_expired`, `donut_subscription_cancelled`,
/// `donut_subscription_price_changed`, `donut_money_withdraw`, `donut_money_withdraw_error`s events.
Stream<VkDartDonutUpdate> onDonut();

/// Listen of unknown events.
Stream<VkDartUnsupportedEventUpdate> onUnsupportedEvent();
```

Using API:
```dart
await vkdart.users.get({'user_id': 'durov'});
```

## Future plans
- Create **models** for received events ✔
- Implement the VK Api **keyboard** interface.
- Create a **command** constructor to simplify the creation of chatbots.

## Bugs and feature requests

Please send a bug report to [issue tracker](https://github.com/swedesjs/vkdart/issues)
