import 'package:vkdart/model.dart';

/// The model `app payload` update.
///
/// See https://dev.vk.com/ru/api/community-events/json-schema#app_payload
class VkDartAppPayloadUpdate with VkDartUpdate {
  // ignore: public_member_api_docs
  VkDartAppPayloadUpdate(this.update);
  @override
  final Update update;

  /// the ID of the user whose action sent the event in the application.
  int get userId => payload['user_id'];

  /// The ID of the application from which the event was sent.
  int get appId => payload['app_id'];

  /// transmitted useful data.
  Object? get appPayload => payload['payload'];

  /// the ID of the community to which the notification was sent.
  int get groupId => payload['group_id'];
}
