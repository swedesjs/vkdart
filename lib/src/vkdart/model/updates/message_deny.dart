import 'package:vkdart/model.dart';

/// Модель запрета на сообщения.
///
/// См. https://dev.vk.com/ru/api/community-events/json-schema#message_deny
class VkDartMessageDenyUpdate {
  // ignore: public_member_api_docs
  final VkDartUpdate update;

  // ignore: public_member_api_docs
  VkDartMessageDenyUpdate(this.update);

  /// ID пользователя.
  int get userId => update.object['user_id'];
}
