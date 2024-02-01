import 'package:vkdart/model.dart';

/// The message allow model.
///
/// See https://dev.vk.com/ru/api/community-events/json-schema#message_allow
class VkDartMessageAllow with VkDartUpdate {
  // ignore: public_member_api_docs
  VkDartMessageAllow(this.update);

  @override
  final Update update;

  /// The user ID.
  int get userId => payload['user_id'];

  /// The parameter passed in the messages.allowMessagesFromGroup method.
  String get key => payload['key'];
}
