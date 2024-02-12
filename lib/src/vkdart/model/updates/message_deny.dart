import 'package:vkdart/model.dart';

/// The message deny model.
///
/// See https://dev.vk.com/ru/api/community-events/json-schema#message_deny
class VkDartMessageDenyUpdate {
  // ignore: public_member_api_docs
  final VkDartUpdate update;

  // ignore: public_member_api_docs
  VkDartMessageDenyUpdate(this.update);

  /// The user ID.
  int get userId => update.object['user_id'];
}
