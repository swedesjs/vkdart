import 'package:vkdart/model.dart';

/// The model `app payload` update.
///
/// See https://dev.vk.com/ru/api/community-events/json-schema#app_payload
class VkDartAppPayloadUpdate {
  // ignore: public_member_api_docs
  final VkDartUpdate update;

  // ignore: public_member_api_docs
  VkDartAppPayloadUpdate(this.update);

  /// the ID of the user whose action sent the event in the application.
  int get userId => update.object['user_id'];

  /// The ID of the application from which the event was sent.
  int get appId => update.object['app_id'];

  /// transmitted useful data.
  Object? get appPayload => update.object['payload'];

  /// the ID of the community to which the notification was sent.
  int get groupId => update.object['group_id'];
}
