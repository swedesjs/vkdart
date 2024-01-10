# VkDart

[![Pub Version](https://img.shields.io/pub/v/vkdart?style=flat-square)](https://pub.dev/packages/vkdart)
[![Pub Popularity](https://img.shields.io/pub/popularity/vkdart?style=flat-square)](https://pub.dev/packages/vkdart)
[![Pub Points](https://img.shields.io/pub/points/vkdart?style=flat-square)](https://pub.dev/packages/vkdart)

> Package helps to make working with the [VK API](https://dev.vk.com/) easier.
>
> Chat discussion of the package - https://t.me/vk_dart

### Navigation: 
- [Features](#features)
- [Get started](#get-started)
  - [Install](#install)
  - [The simplest use](#the-simplest-use)
- [Using VK Api](#using-api)
  - [Creating an API Instance](#creating-an-api-instance)
  - [Calling Methods](#calling-methods)
  - [Request Response](#request-response)
- [Using Callback Api](#using-callback-api)
- [Future Plans](#future-plans)
- [Bugs and feature requests](#bugs-and-feature-requests)

## Features
1. **Supports all methods.** Has interfaces of all public VK methods.
2. **Reliable.** Functionality of the package is wrapped in Unit tests 
3. **Event support** It is possible to catch VK events, support for user and group events
4. **Developing.** Functionality is becoming more!

## Get Started

### Install 
First, let's [install package](https://pub.dev/packages/vkdart/install).

### The simplest use:

```dart
import 'package:vkdart/vkdart.dart';

void main() async {
  final accessToken = ''; // Group Token, User Token.
  final vk = VkDart(token: accessToken);
  final api = vk.getApi();

  final user = await api.users.get({'user_id': 'durov'});

  final name = user.data[0]['first_name'];
  // surname
  final surname = user.data[0]['last_name'];

  print('User details: Name = $name, Surname = $surname');
}

```

## Using API

### Creating an API Instance

To use VK Api methods, you need to create an instance of the `Api` class, there are two ways:
```dart
vk.getApi();
// and
Api(token: /* */, language: /* LangApi */, version: /* */);
```
The function `getApi()` creates an instance with default parameters.

default `lang` is **LangApi**.ru**, `version` is **5.131**.

### Calling methods

For requests to API methods, you can use two methods, the `request()` (**it is advisable use if there no method in interfaces**)
```dart
api.request('name_method', /* Map<String, Object> parameters */);
```

Example:
```dart
api.request('users.get', {'user_id': 'durov'}); // instance Future<ApiResponse<dynamic>>
```

or already existing request interfaces.

```text
api.<selection>.<name>(/* parameters */);
```

Example:
```dart
api.users.get({'user_id': 'durov'}); // instance Future<ApiResponse<dynamic>>
```

### Request response

When calling methods, response is wrapped in an instance of the `ApiResponse` class, which has a **response** and **requestOptions** field.
```dart
final user = await api.users.get({'user_id': 'durov'});

print('Data: ${user.data}'); // type user.data = dynamic
print('Request Options: ${user.requestOptions}'); // access token remove!
```

Example above, output data type is dynamic, order to specify the response type, specify it in the generic function.
```dart
api.users.get<List<dynamic>>(/* params */);
// or
api.request<List<dynamic>>('name method', /* ... */);
```

## Using Callback API
### Elementary example of use:
```dart
final vk = VkDart(token: '');
final callback = Callback(
   secretKey: 'mySecretKey', // optional
  confirmationHandler: (_) => 'confirmation string';
);

callback.updates.listen((event) {
  if (event.type == UpdateType.message_new) {
    print('new message!');
    print('message text: ${event.object['message']['text']}');
  }
});

await callback.start().then((_) => print('Callback API run!'));
```
More detailed [example](https://github.com/swedesjs/vkdart/blob/master/example/callback_usage.dart)

> By default, the server runs on **localhost**, on port **80**, if the certificate **443** is specified.

Install certificate:

```dart
callback.start(port: /* ... */, securityContext: SecurityContext(/* ... */));
```
> Documentation for [SecurityContext](https://api.dart.dev/be/137752/dart-io/SecurityContext-class.html)

## Future plans
In the future I plan to implement the `VK API` for convenient use:

- Create **contexts** for received events
- Wrap received events in **middleware**.
- Implement the VK Api **keyboard** interface
- Create a **command** constructor to simplify the creation of chatbots.

## Bugs and feature requests

Please send a bug report to [issue tracker](https://github.com/swedesjs/vkdart/issues)
