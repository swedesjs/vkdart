import 'package:vkdart/model.dart';

/// Модель обновления `group`.
///
/// См.:
/// - https://dev.vk.com/ru/api/community-events/json-schema#group_leave
/// - https://dev.vk.com/ru/api/community-events/json-schema#group_join
class VkDartGroupUpdate {
  // ignore: public_member_api_docs
  final VkDartUpdate update;

  // ignore: public_member_api_docs
  VkDartGroupUpdate(this.update);

  /// Проверяет, вышел ли пользователь.
  bool get isLeave => update.type == UpdateType.group_leave;

  /// Проверяет, присоединился ли пользователь.
  bool get isJoin => update.type == UpdateType.group_join;

  /// ID пользователя.
  int get userId => update.object['user_id'];

  /// Указывает, был ли пользователь удалён или вышел самостоятельно.
  int? get self => update.object['self'];

  /// Указывает, каким именно способом был добавлен участник.
  String? get joinType => update.object['join_type'];
}
