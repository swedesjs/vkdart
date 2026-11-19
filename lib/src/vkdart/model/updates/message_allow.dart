import 'package:vkdart/model.dart';

/// Модель разрешения на сообщения.
///
/// См. https://dev.vk.com/ru/api/community-events/json-schema#message_allow
class VkDartMessageAllowUpdate {
  // ignore: public_member_api_docs
  final VkDartUpdate update;

  // ignore: public_member_api_docs
  VkDartMessageAllowUpdate(this.update);

  /// ID пользователя.
  int get userId => update.object['user_id'];

  /// Параметр, переданный в метод messages.allowMessagesFromGroup.
  String get key => update.object['key'];
}
