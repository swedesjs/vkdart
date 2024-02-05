import 'package:vkdart/model.dart';

/// The message allow model.
///
/// See https://dev.vk.com/ru/api/community-events/json-schema#message_allow
class VkDartMessageAllowUpdate with VkDartUpdate {
  // ignore: public_member_api_docs
  VkDartMessageAllowUpdate(this.update);

  @override
  final Update update;

  /// The user ID.
  int get userId => updateObject['user_id'];

  /// The parameter passed in the messages.allowMessagesFromGroup method.
  String get key => updateObject['key'];
}
