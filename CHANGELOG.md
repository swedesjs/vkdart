## 1.0.0

- Initial version.

## 1.0.1

- Added API methods interfaces

## 1.0.2

- Added Longpoll API support

## 1.0.3

- Added Callback API support

## 1.0.4

- Documented methods that had no documentation
- The structure for receiving updates Longpoll API, Callback API has been changed
- Added missing methods
- Method interfaces, Longpoll API, Callback API classes have been moved to separate libraries.

## 1.1.0

- Documentation completely rewritten
- Added error handler when reading LongPoll events
- Structures for attachments written
- Tests have been written.

## 1.1.1
- Fixed incorrect operation of the `api.request()` function.
- Amendments have been made to the documentation.

## 1.1.2
- Added `getAttachmentFromJson()` function.
- Correction in the interface name `AudioAttachment`.
- Added error handler to using `CallbackAPI`

## 1.2.0
- Removed attachment interfaces to make the package lighter.
- Removed support for Longpoll API, now only Callback API.
- The structure of the Callback API interface has been changed.
- Added lists of `update types`.

## 1.3.0
Updates:
- Documentation on using.
- File structure package.
- Structure of using the package.
- Example file.

Added: 
- **Event class**. Interface containing event streams.
- Functions to listen for specific events.

## 1.3.1
Fix: `Longpoll Fetcher`: only one event was read at startup.