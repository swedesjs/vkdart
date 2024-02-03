import 'package:vkdart/vkontakte.dart';

/// Offset Chat ID.
const peerChatIdOffset = 2000000000;

/// Transforms a list of attachment objects in the format:
/// ```dart
/// [{'type': 'photo', 'photo': {...}}, {'type': 'audio', 'audio': {...}}, ...]
/// ```
/// in the attachment model.
List<AttachmentModel> transformAttachments(
        List<Map<String, dynamic>> attachments) =>
    attachments.map((e) {
      final attachType = e['type'];
      return AttachmentModel.fromSpecificModel(e[attachType], attachType);
    }).toList();

/// Message Source
enum MessageSource {
  /// User.
  user,

  /// Group.
  group,

  /// Chat.
  chat
}

/// Returns the dialog type.
/// Accepts the [id] parameter as input,
/// if [id] is less than [peerChatIdOffset], [MessageSource.chat] is returned,
/// if [id] is less than zero, returned [MessageSource.group],
/// in all other cases [MessageSource.user]
MessageSource getPeerType(int id) {
  if (peerChatIdOffset < id) {
    return MessageSource.chat;
  }

  if (id < 0) {
    return MessageSource.group;
  }

  return MessageSource.user;
}

/// Checks the [value] for an integer, then checks for one.
/// If the value is not an integer, null is returned,
bool? checkBoolUtil(Object? value) {
  if (value is! int) {
    return null;
  }

  return value == 1;
}
