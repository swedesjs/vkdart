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

var response = await api.users.get({'user_id': 1});

/// Second way
var response2 = await api.request('users.get', {'user_id': 1});

print(response);
print(response2);
```

## Todo

Plans for the near future:

- Generate Vkontakte API methods interfaces ✔
- Add support for LongPoll API

## Additional information

If you find a bug or an error in the code, please contact the [issue tracker](https://github.com/swedesjs/vkdart/issues)
