import 'package:vkdart/model.dart';

/// The model `user` update.
///
/// See:
/// - https://dev.vk.com/ru/api/community-events/json-schema#user_block
/// - https://dev.vk.com/ru/api/community-events/json-schema#user_unblock
class VkDartUserUpdate {
  // ignore: public_member_api_docs
  final VkDartUpdate update;

  // ignore: public_member_api_docs
  VkDartUserUpdate(this.update);

  /// Check is user block.
  bool get isBlock => update.type == UpdateType.user_block;

  /// Check is user unblock.
  bool get isUnblock => update.type == UpdateType.user_unblock;

  /// The ID of the administrator who blacklisted the user.
  int get adminId => update.object['admin_id'];

  /// The user ID.
  int get userId => update.object['user_id'];

  /// The date of unblocking.
  int? get unblockDate => update.object['unblock_date'];

  /// The reason for the blockage.
  /// Possible values:
  /// - 0 — other (default).
  /// - 1 — spam.
  /// - 2 — insulting the participants.
  /// - 3 — obscene expressions.
  /// - 4 — Off-topic messages.
  int? get reason => update.object['reason'];

  /// The administrator's comment on the block.
  String? get comment => update.object['comment'];

  /// The date of unblocking.
  int? get endDate => update.object['by_end_date'];
}
