import 'package:vkdart/model.dart';

/// The message allow model.
///
/// See https://dev.vk.com/ru/api/community-events/json-schema#message_allow
class VkDartMessageAllowUpdate {
  // ignore: public_member_api_docs
  final VkDartUpdate update;

  // ignore: public_member_api_docs
  VkDartMessageAllowUpdate(this.update);

  /// The user ID.
  int get userId => update.object['user_id'];

  /// The parameter passed in the messages.allowMessagesFromGroup method.
  String get key => update.object['key'];
}
