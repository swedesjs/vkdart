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
  final vkdart = VkDart(TOKEN, Event(), groupId: 123);

  vkdart.start()
}
```

Listening to events:
```dart
// messages_new, message_edit, message_reply
vkdart.onMessage().listen((event) =>
   print('message text: ${event.object['message']['text']}'));
```

Modifying [Stream](https://www.dartlang.org/tutorials/language/streams#methods-that-modify-a-stream):
```dart
vkdart
  .onComment()
  .where((comment) => comment.type == UpdateType.photo_comment_new)
  .listen((event) => print('There\'s a new comment on the photo!'));
```

Using API:
```dart
await vkdart.users.get({'user_id': 'durov'});
```

## Future plans
- Create **contexts** for received events
- Implement the VK Api **keyboard** interface
- Create a **command** constructor to simplify the creation of chatbots.

## Bugs and feature requests

Please send a bug report to [issue tracker](https://github.com/swedesjs/vkdart/issues)
