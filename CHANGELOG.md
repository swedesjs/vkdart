## 2.3.1

Changes:

- Added the ability to subscribe to the main thread twice or more times.

## 2.3.0

Changes:

- The Api class has been renamed to Vkontakte.
- Interfaces of VK sections have been removed; now it is necessary to access methods through the `request` function.
- The `fetcher` parameter to the `VkDart` class is required.

News:

- The `answer` function has been added to the `VkDartMessageEventUpdate` model, which will send an event with an action
  to the user,
  which
  clicked the callback button.
- The following functions have been added to the `VkDartMessageUpdate` model:
    - `sendMessage`: sends a message to the user in the dialog from which the event came. If you specify
      the `peerIds` parameter will be sent to the necessary dialogs.
    - `replyMessage`: does the same thing as `sendMessage`, but replies to the message.
    - `setActivity`: changes the typing status in the dialog.
- Added properties to the `MessageModel` model:
    - `actionType`: type of service action with chat.
    - `actionMemberId`: ID of the user who pinned/unpinned/joined, etc.
    - `actionText`: title of the conversation.
    - `actionOldText`: old name of the conversation.
    - `actionEmail`: user email.
    - `actionPhoto50`: used instead of `photo50`.
    - `actionPhoto100`: used instead of `photo100`.
    - `actionPhoto200`: used instead of `photo200`.

  The following properties have been removed: `actionMid`, `photo50`, `photo100`, `photo200`.
- New threads that produce messages with a service action
  chat `onChatUser`, `onChatPin`, `onChatCreate`, `onChatPhoto`, `onChatTitle`.

## 2.2.0

Change:

- Remove class `ApiResponse`.
- The `VkDartUpdate` class-mixin was removed, the `Update` class was renamed
  to `VkDartUpdate`. ([Commit](https://github.com/swedesjs/vkdart/commit/215637989b6b3e9758ab0340006641db4eaeb7b3#diff-d57374fc48bdddbb8ba6e673b90a428de20bce6e128f5435b36d5c662f3be063))
    - The `eventData` property has been renamed to `data`.
- [Api.request](https://pub.dev/documentation/vkdart/2.2.0/vkdart.vkontakte/Api/request.html): implementation of API
  invocation, function return type and input parameters
  type. ([Commit](https://github.com/swedesjs/vkdart/commit/4af4bd67a6767162e40beed3344d96fbf0978d1d))

New:

- [VkDartLikeUpdate](https://pub.dev/documentation/vkdart/2.2.0/vkdart.model/VkDartLikeUpdate-class.html), [VkDartMarketOrderUpdate](https://pub.dev/documentation/vkdart/latest/vkdart.model/VkDartMarketOrderUpdate-class.html), [VkDartWallUpdate](https://pub.dev/documentation/vkdart/latest/vkdart.model/VkDartWallUpdate-class.html):
  new [modifiers](https://github.com/swedesjs/vkdart/commit/599d169782a82190e4ebff20624baf40c52c1321).

## 2.1.0

Change:

- The documentation has become more correct and clearer.
- Got rid of the `dia`, `dia_body`, `dio` dependencies. `Dio` was replaced by the `http` package and `dia` by `dart:io`.
- [VkDartUpdate](https://pub.dev/documentation/vkdart/2.1.0/vkdart.model/VkDartUpdate-class.html): payload property
  renamed to updateObject.

New:

- [MessageModel](https://pub.dev/documentation/vkdart/2.1.0/vkdart.vkontakte/MessageModel-class.html):
  function [applyPayload](https://pub.dev/documentation/vkdart/2.1.0/vkdart.vkontakte/MessageModel/applyPayload.html) is
  implemented, which overloads the payload correctly.
- [HttpClient](https://pub.dev/documentation/vkdart/2.1.0/vkdart.util/HttpClient-class.html): for convenient use of
  requests to the VK server.
- [VkDartMessageUpdate](https://pub.dev/documentation/vkdart/2.1.0/vkdart.model/VkDartMessageUpdate-class.html):
  new [modifiers](https://github.com/swedesjs/vkdart/commit/a0b2c137d6202a48173c792aa125e53c42ff01d2).
- [VkDartKeyboard](https://pub.dev/documentation/vkdart/2.1.0/vkdart.util/VkDartKeyboard-class.html): for convenient use
  of VK keyboards.

## 2.0.0

Change:

- A census of the API package documentation.
- Refactoring code.
- Got rid of the dependency json_annotation, json_serializable, build_runner

New:

- Of attachment models, messages, and events.
- Of an unsupported event handler.
- The util library, which contains useful functions for working correctly with the package.

## 1.3.6

Change: two `donut` handlers are combined into one (`onDonut()`)

## 1.3.5

fix: adjustment of `donut` handlers.

## 1.3.4

Refactor: correction in the name of the event
handler `group_officers_edit`, `group_change_settings`, `group_change_photo`.
Rename `onGroupUpdate()` -> `onGroupChange()`

## 1.3.3

Refactor: correction in the name of the event handler `wall_post_new`, `wall_repost`.
Rename `onWallPost()` -> `onWall()`

## 1.3.2

Add: Added a handler for the `message_reaction_event` event.

## 1.3.1

Fix: `Longpoll Fetcher`: only one event was read at startup.

## 1.3.0

Change:

- Documentation on using.
- File structure package.
- Structure of using the package.
- Example file.

New:

- **Event class**. Interface containing event streams.
- Functions to listen for specific events.

## 1.2.0

- Removed attachment interfaces to make the package lighter.
- Removed support for Longpoll API, now only Callback API.
- The structure of the Callback API interface has been changed.
- Added lists of `update types`.

## 1.1.2

- Added `getAttachmentFromJson()` function.
- Correction in the interface name `AudioAttachment`.
- Added error handler to using `CallbackAPI`

## 1.1.1

- Fixed incorrect operation of the `api.request()` function.
- Amendments have been made to the documentation.

## 1.1.0

- Documentation completely rewritten
- Added error handler when reading LongPoll events
- Structures for attachments written
- Tests have been written.

## 1.0.4

- Documented methods that had no documentation
- The structure for receiving updates Longpoll API, Callback API has been changed
- Added missing methods
- Method interfaces, Longpoll API, Callback API classes have been moved to separate libraries.

## 1.0.3

- Added Callback API support

## 1.0.2

- Added Longpoll API support

## 1.0.1

- Added API methods interfaces

## 1.0.0

- Initial version.

