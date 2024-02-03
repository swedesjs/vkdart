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
}
