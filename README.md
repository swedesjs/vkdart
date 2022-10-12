<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

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
var vk = VkDart(token: '');
var api = vk.getApi();

var response = await api.request('users.get', { 'user_id': 1 });

print(response);
```

## Todo

Plans for the near future:

- Generate Vkontakte API methods interfaces
- Add support for LongPoll API

## Additional information

If you find a bug or an error in the code, please contact the [issue tracker](https://github.com/swedesjs/vkdart/issues)
