# VkDart

[![Pub Version](https://img.shields.io/pub/v/vkdart?style=flat-square)](https://pub.dev/packages/vkdart)
[![Pub Popularity](https://img.shields.io/pub/popularity/vkdart?style=flat-square)](https://pub.dev/packages/vkdart)
[![Pub Points](https://img.shields.io/pub/points/vkdart?style=flat-square)](https://pub.dev/packages/vkdart)

> The package helps to simplify the work with [VK API](https://dev.vk.com/).
>
> A chat room to discuss how the package works - https://t.me/vk_dart

## Features
1. **Supports all methods.** Has a description of all public VK methods.
2. **Reliability.** Package functionality is wrapped in unit tests. 
3. **Supports events.** Supports Callback API, Longpoll API
4. **Development.** Functionality is becoming more and more every day!
5. **Easy to use.** Very easy to use!
6. **Model support.** There is a description of event, attachment and object models.

## Usage

Initialization:
```dart
import 'package:vkdart/vkdart.dart';

void main() async {
  final TOKEN = '';
  final GROUP_ID = 123;

  final vkdart = VkDart(TOKEN, groupId: GROUP_ID);

  vkdart.start();
}
```

Using API:
```dart
await vkdart.users.get({'user_id': 'durov'}); // List<Map<String, dynamic>>
await vkdart.utils.getServerTime({}); // int

// request via native function
await vkdart.request('groups.getById', {'group_id': 1}); // List<Map<String, dynamic>>
```

## Events
[VkDart](https://pub.dev/documentation/vkdart/latest/vkdart/VkDart-class.html) base class contains functions for processing VK API events.
Some events are combined into a single handler, consider this example: 
```dart
/// message_new, message_reply, message_reply.
vkdart.onMessage().listen((event) { ... });
```

In this case the events message_new, message_reply, message_edit will be processed in this listen. 
In order to filter the necessary events, you can modify [Stream](https://www.dartlang.org/tutorials/language/streams#methods-that-modify-a-stream): 
```dart
vkdart.onMessage().where((event) => event.isNew && event.isChat).listen((event) { ... });
```

Due to the fact that VK API is also updated, new events are added, there is a handler [onUnsupportedEvent](https://pub.dev/documentation/vkdart/latest/vkdart/VkDart/onUnsupportedEvent.html).
If you have caught such an event, please report it to our [chat](https://t.me/vk_dart).
```dart
vkdart.onUnsupportedEvent().listen((event) {
    print(
      'An unsupported event has arrived!\n'
      'It is necessary to inform the chat https://t.me/vk_dart\n\n'
      'Type of event ${event.eventType}\n'
      'Event Object: ${event.object}',
    );
});
```

> Each event handler, has its own functions, fields and other useful features. All update models can be found on this [page](https://pub.dev/documentation/vkdart/latest/vkdart.model/vkdart.model-library.html). 
> 
> All event handlers can be found on this [page](https://pub.dev/documentation/vkdart/latest/vkdart/VkDart-class.html). 

## Keyboard
The package includes a [keyboard builder](https://pub.dev/documentation/vkdart/latest/vkdart.util/VkDartKeyboard-class.html):
```dart
import 'package:vkdart/util.dart' show VkDartKeyboard, VkDartKeyboardColor;

final keyboard = VkDartKeyboard(
    oneTime: true, // default value
    inline: false // default value
);
```

> Warning!
> The keyboard grid has limitations:
> - For conventional keyboard size: 5 × 10, maximum number of keys: 40
> - For inline keyboard size: 5 × 6, maximum number of keys: 10

Text button:
```dart
keyboard.addButtonText('Hello world!', color: VkDartKeyboardColor.primary, payload: {'button': 'text'});
```
> The payload will be available in [message_new](https://pub.dev/documentation/vkdart/latest/vkdart/VkDart/onMessage.html) event, in the [messagePayload](https://pub.dev/documentation/vkdart/latest/vkdart.vkontakte/MessageModel/messagePayload.html) property. 

URL button:
```dart
keyboard.addButtonLink('mysite.com', 'My Site');
```

Location button:
```dart
keyboard.addButtonLocation(payload: {'button': 'location'});
```
> The payload will be available in [message_new](https://pub.dev/documentation/vkdart/latest/vkdart/VkDart/onMessage.html) event, in the [messagePayload](https://pub.dev/documentation/vkdart/latest/vkdart.vkontakte/MessageModel/messagePayload.html) property. 

Vk Pay button: 
```dart
keyboard.addButtonVkPay("action=transfer-to-group&group_id=1&aid=10");
```

Open APP button:
```dart
keyboard.addButtonApp(6232540, -157525928, hash: "123", appName: 'LiveWidget');
```

Callback button:
```dart
keyboard.addButtonCallback(
    'Hello world!', 
    color: VkDartKeyboard.secondary, // default value
    payload: {'button': 'callback'}
);
```
> The payload will be available in the [message_event](https://pub.dev/documentation/vkdart/latest/vkdart/VkDart/onMessageEvent.html) event, in the [eventPayload](https://pub.dev/documentation/vkdart/latest/vkdart.model/VkDartMessageEventUpdate/eventPayload.html) property. 

Move on to the next row:
```dart
keyboard
  ..addButtonText('1 row: Hello world!')
  ..nextRow()
  ..addButtonText('2 row: Hello world!');
```

Usage in the [messages.send](https://pub.dev/documentation/vkdart/latest/vkdart.vkontakte/Messages/send.html) method:
```dart
vkdart.messages.send({
    'peer_id': PEER_ID,
    'message': 'Hello world!',
    'random_id': RANDOM_ID,
    'keyboard': keyboard.toJson()
});
```

Button Colors:
| Field                         | Description                  | Color |
| ----------------------------- | ---------------------------- | ----- |
| VkDartKeyboardColor.primary   | Main Action                  | Blue  |
| VkDartKeyboardColor.secondary | It's just a button           | White |
| VkDartKeyboardColor.negative  | Dangerous Action or Failure  | Red   |
| VkDartKeyboardColor.positive  | "Agree," "Confirm."          | Green |

## Attachments
There are two types of class:
- [AttachmentModel](https://pub.dev/documentation/vkdart/latest/vkdart.vkontakte/CustomAttachmentModel-class.html) - A base class on which all attachments (and those that can be attached) depend, which cannot be attached.
  - [GiftAttachmentModel](https://pub.dev/documentation/vkdart/latest/vkdart.vkontakte/GiftAttachmentModel-class.html)
  - [LinkAttachmentModel](https://pub.dev/documentation/vkdart/latest/vkdart.vkontakte/LinkAttachmentModel-class.html)
  - [StickerAttachmentModel](https://pub.dev/documentation/vkdart/latest/vkdart.vkontakte/StickerAttachmentModel-class.html)
- [CustomAttachmentModel](https://pub.dev/documentation/vkdart/latest/vkdart.vkontakte/CustomAttachmentModel-class.html) - Attachment class that can be attached `{attachment_type}{owner_id}_{attach_id}_{?access_key?}`.
  - [PhotoAttachmentModel](https://pub.dev/documentation/vkdart/latest/vkdart.vkontakte/PhotoAttachmentModel-class.html)
  - [AudioAttachmentModel](https://pub.dev/documentation/vkdart/latest/vkdart.vkontakte/AudioAttachmentModel-class.html)
  - [DocumentAttachmentModel](https://pub.dev/documentation/vkdart/latest/vkdart.vkontakte/DocumentAttachmentModel-class.html)
  - [GraffitiAttachmentModel](https://pub.dev/documentation/vkdart/latest/vkdart.vkontakte/GraffitiAttachmentModel-class.html)
  - [MarketAlbumAttachmentModel](https://pub.dev/documentation/vkdart/latest/vkdart.vkontakte/MarketAlbumAttachmentModel-class.html)
  - [MarketAttachmentModel](https://pub.dev/documentation/vkdart/latest/vkdart.vkontakte/MarketAttachmentModel-class.html)
  - [NoteAttachmentModel](https://pub.dev/documentation/vkdart/latest/vkdart.vkontakte/NoteAttachmentModel-class.html)
  - [PollAttachmentModel](https://pub.dev/documentation/vkdart/latest/vkdart.vkontakte/PollAttachmentModel-class.html)
  - [VideoAttachmentModel](https://pub.dev/documentation/vkdart/latest/vkdart.vkontakte/VideoAttachmentModel-class.html)
  - [WallAttachmentModel](https://pub.dev/documentation/vkdart/latest/vkdart.vkontakte/WallAttachmentModel-class.html)
  - [WallReplyAttachmentModel](https://pub.dev/documentation/vkdart/latest/vkdart.vkontakte/WallReplyAttachmentModel-class.html)
  - [WikiPageAttachmentModel](https://pub.dev/documentation/vkdart/latest/vkdart.vkontakte/WikiPageAttachmentModel-class.html)

```dart
final customAttachment = CustomAttachmentModel({
    'owner_id': 1,
    'id': 2,
    // 'access_key': 'ACCESS_KEY'
}, attachType: 'photo'); 
```

In VK there is a format of attachments, let's say to send it in private messages, for convenience the `CustomAttachmentModel` class has an overridden function `toString()`, which will return this format.
```dart
customAttachment.toString(); // photo1_2 and photo1_2_ACCESS_KEY (if access != null)
[customAttachment, customAttachment].join(',') // photo1_2,photo1_2
```

Suppose we have an attachment object in Map format, in order to convert it into the necessary model, we will use the [`fromSpecificModel`](https://pub.dev/documentation/vkdart/latest/vkdart.vkontakte/AttachmentModel/AttachmentModel.fromSpecificModel.html) constructor:
```dart
AttachmentModel.fromSpecificModel({
    'owner_id': 1,
    'id': 2
}, attachType: 'photo'); // PhotoAttachmentModel
```

Convert the attachment string to a model: 
```dart
CustomAttachment.fromString('photo1_2'); // PhotoAttachmentModel
```

## Future plans
- Release models of VK API objects. ✔
- Release a class that makes keyboarding easier. ✔
- Release features, for chat bot commands.

## Bugs and feature requests

Please send a bug report to [issue tracker](https://github.com/swedesjs/vkdart/issues)
