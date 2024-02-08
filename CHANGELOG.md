## 2.1.0
Update:
- The documentation has become more correct and clearer.
- Got rid of the `dia`, `dia_body`, `dio` dependencies. `Dio` was replaced by the `http` package and `dia` by `dart:io`.
- [VkDartUpdate](https://pub.dev/documentation/vkdart/latest/vkdart.model/VkDartUpdate-class.html): payload property renamed to updateObject.

New:
- [MessageModel](https://pub.dev/documentation/vkdart/latest/vkdart.vkontakte/MessageModel-class.html): function [applyPayload](https://pub.dev/documentation/vkdart/latest/vkdart.vkontakte/MessageModel/applyPayload.html) is implemented, which overloads the payload correctly.
- [HttpClient](https://pub.dev/documentation/vkdart/latest/vkdart.util/HttpClient-class.html): for convenient use of requests to the VK server.
- [VkDartMessageUpdate](https://pub.dev/documentation/vkdart/latest/vkdart.model/VkDartMessageUpdate-class.html): new [modifiers](https://github.com/swedesjs/vkdart/commit/a0b2c137d6202a48173c792aa125e53c42ff01d2).
- [VkDartKeyboard](https://pub.dev/documentation/vkdart/latest/vkdart.util/VkDartKeyboard-class.html): for convenient use of VK keyboards. 

## 2.0.0
Update:
- A census of the API package documentation.
- Refactoring code.
- Got rid of the dependency json_annotation, json_serializable, build_runner

Release: 
- Of attachment models, messages, and events.
- Of an unsupported event handler.
- The util library, which contains useful functions for working correctly with the package.

## 1.3.6
Update: two `donut` handlers are combined into one (`onDonut()`)

## 1.3.5
fix: adjustment of `donut` handlers.

## 1.3.4
Refactor: correction in the name of the event handler `group_officers_edit`, `group_change_settings`, `group_change_photo`.
Rename `onGroupUpdate()` -> `onGroupChange()`

## 1.3.3
Refactor: correction in the name of the event handler `wall_post_new`, `wall_repost`.
Rename `onWallPost()` -> `onWall()`

## 1.3.2
Add: Added a handler for the `message_reaction_event` event.

## 1.3.1
Fix: `Longpoll Fetcher`: only one event was read at startup.

## 1.3.0
Updates:
- Documentation on using.
- File structure package.
- Structure of using the package.
- Example file.

Added: 
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

