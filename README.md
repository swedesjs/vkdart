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
final vkDart = VkDart(token: '');

// to receive community events, specify the groupId parameter
final longpoll = Longpoll(vkDart.getApi());

await longpoll.start();

longpoll.subscribe((event) {
  // ....
  // event - VK server response
});
```

## Usage Callback API

```dart
final vkDart = VkDart(token: '');

final callback = Callback(vkDart.getApi());

// ignore: cascade_invocations
callback.subscribe((event) {
  // ....
  // event - VK server response
});

await callback.start(port: 80);
```

## Todo

Plans for the near future:

- Generate Vkontakte API methods interfaces ✔
- Add support for LongPoll API ✔

## Additional information

If you find a bug or an error in the code, please contact the [issue tracker](https://github.com/swedesjs/vkdart/issues)
