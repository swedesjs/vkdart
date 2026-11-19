import 'package:vkdart/model.dart';

/// Модель обновления `user`.
///
/// См.:
/// - https://dev.vk.com/ru/api/community-events/json-schema#user_block
/// - https://dev.vk.com/ru/api/community-events/json-schema#user_unblock
class VkDartUserUpdate {
  // ignore: public_member_api_docs
  final VkDartUpdate update;

  // ignore: public_member_api_docs
  VkDartUserUpdate(this.update);

  /// Проверяет, заблокирован ли пользователь.
  bool get isBlock => update.type == UpdateType.user_block;

  /// Проверяет, разблокирован ли пользователь.
  bool get isUnblock => update.type == UpdateType.user_unblock;

  /// ID администратора, добавившего пользователя в чёрный список.
  int get adminId => update.object['admin_id'];

  /// ID пользователя.
  int get userId => update.object['user_id'];

  /// Дата разблокировки.
  int? get unblockDate => update.object['unblock_date'];

  /// Причина блокировки.
  /// Возможные значения:
  /// - 0 — другое (по умолчанию).
  /// - 1 — спам.
  /// - 2 — оскорбление участников.
  /// - 3 — нецензурные выражения.
  /// - 4 — сообщения не по теме.
  int? get reason => update.object['reason'];

  /// Комментарий администратора к блокировке.
  String? get comment => update.object['comment'];

  /// Дата разблокировки.
  int? get endDate => update.object['by_end_date'];
}
