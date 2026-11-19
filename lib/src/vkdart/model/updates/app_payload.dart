import 'package:vkdart/model.dart';

/// Модель обновления `app payload`.
///
/// См. https://dev.vk.com/ru/api/community-events/json-schema#app_payload
class VkDartAppPayloadUpdate {
  // ignore: public_member_api_docs
  final VkDartUpdate update;

  // ignore: public_member_api_docs
  VkDartAppPayloadUpdate(this.update);

  /// ID пользователя, чьё действие в приложении вызвало событие.
  int get userId => update.object['user_id'];

  /// ID приложения, из которого отправлено событие.
  int get appId => update.object['app_id'];

  /// Переданные полезные данные.
  Object? get appPayload => update.object['payload'];

  /// ID сообщества, которому отправлено уведомление.
  int get groupId => update.object['group_id'];
}
