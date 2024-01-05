# vkdart

[![Pub](https://img.shields.io/pub/v/vkdart)](https://pub.dev/packages/vkdart)

Library for interacting with Vkontakte API.

Preferably used with a group token.

## Features

You can use the library for:

- Create bots inside Vkontakte
- Simple interaction with VK

## Usage

```dart
final vk = VkDart(token: '');
final api = vk.getApi();

await api.users.get({'user_id': 1});

await api.request('users.get', {'user_id': 1});
```

## Usage Longpoll

```dart
import 'package:vkdart/vkdart.dart';

Future<void> main() async {
  final vkDart = VkDart(token: '');
  final userLongpoll = UserLongpoll(vkDart.getApi());

  await userLongpoll.start();
  userLongpoll.onEvent().listen((event) {
    // ...
  });

  final groupLongpoll = GroupLogpoll(0, vkDart.getApi());

  await groupLongpoll.start();
  groupLongpoll.onEvent().listen((event) {
    // ..
  });
}
```

## Usage Callback API

```dart
final vkDart = VkDart(token: '');
final callback = Callback(vkDart.getApi());

callback.onEvent().listen((event) {
  print(event);
});

callback.start(port: 80);
```

## Todo

Plans for the near future:

- Generate Vkontakte API methods interfaces ✔
- Add support for LongPoll API ✔

## Additional information

If you find a bug or an error in the code, please contact the [issue tracker](https://github.com/swedesjs/vkdart/issues)
