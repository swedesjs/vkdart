import 'package:vkdart/model.dart';

/// Модель состояния набора текста.
///
/// См. https://dev.vk.com/ru/api/community-events/json-schema#message_typing_state
class VkDartMessageTypingStateUpdate {
  // ignore: public_member_api_docs
  final VkDartUpdate update;

  // ignore: public_member_api_docs
  VkDartMessageTypingStateUpdate(this.update);

  /// Статус набора текста.
  String get state => update.object['state'];

  /// ID пользователя, набирающего текст.
  int get fromId => update.object['from_id'];

  /// ID сообщества, которому пользователь пишет сообщение.
  int get toId => update.object['to_id'];
}
