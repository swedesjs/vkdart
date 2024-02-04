import 'package:vkdart/model.dart';
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
}
