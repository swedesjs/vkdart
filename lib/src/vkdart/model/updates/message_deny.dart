import 'package:vkdart/model.dart';

/// The message deny model.
///
/// See https://dev.vk.com/ru/api/community-events/json-schema#message_deny
class VkDartMessageDeny with VkDartUpdate {
  // ignore: public_member_api_docs
  VkDartMessageDeny(this.update);

  @override
  final Update update;

  /// The user ID.
  int get userId => payload['user_id'];
}
