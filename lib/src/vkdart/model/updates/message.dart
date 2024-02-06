import 'package:vkdart/model.dart';
import 'package:vkdart/util.dart';
import 'package:vkdart/vkontakte.dart';

/// The message model (for events `message_new`, `message_edit`, `message_reply`).
///
/// See https://dev.vk.com/ru/reference/objects/message
class VkDartMessageUpdate extends MessageModel with VkDartUpdate {
  // ignore: public_member_api_docs
  VkDartMessageUpdate(this.update) : super(update.object);

  @override
  final Update update;

  /// Check is message new.
  bool get isNew => updateType == UpdateType.message_new;

  /// Check is message edit.
  bool get isEdit => updateType == UpdateType.message_edit;

  /// Check is message reply.
  bool get isReply => updateType == UpdateType.message_reply;

  /// Is this a dialog with the user.
  bool get isUser => peerType == MessageSource.user;

  /// Is this a dialogue with the group.
  bool get isGroup => peerType == MessageSource.group;

  /// Whether this dialog is in a chat.
  bool get isChat => peerType == MessageSource.chat;

  /// Whether the sender is a user.
  bool get isFromUser => senderType == MessageSource.user;

  /// Whether the sender is a group.
  bool get isFromGroup => senderType == MessageSource.group;

  /// Whether the message is out.
  bool get isOutbox => checkBoolUtil(message['out'] as int)!;

  /// Whether the message is inboxed.
  bool get isInbox => !isOutbox;
}
