import 'package:vkdart/model.dart';

/// The model `user` update.
///
/// See:
/// - https://dev.vk.com/ru/api/community-events/json-schema#user_block
/// - https://dev.vk.com/ru/api/community-events/json-schema#user_unblocks
class VkDartUserUpdate with VkDartUpdate {
  // ignore: public_member_api_docs
  VkDartUserUpdate(this.update);
  @override
  final Update update;

  /// Check is user block.
  bool get isBlock => updateType == UpdateType.user_block;

  /// Check is user unblock.
  bool get isUnblock => updateType == UpdateType.user_unblock;

  /// The ID of the administrator who blacklisted the user.
  int get adminId => payload['admin_id'];

  /// The user ID.
  int get userId => payload['user_id'];

  /// The date of unblocking.
  int? get unblockDate => payload['unblock_date'];

  /// The reason for the blockage.
  /// Possible values:
  /// - 0 — other (default).
  /// - 1 — spam.
  /// - 2 — insulting the participants.
  /// - 3 — obscene expressions.
  /// - 4 — Off-topic messages.
  int? get reason => payload['reason'];

  /// The administrator's comment on the block.
  String? get comment => payload['comment'];

  /// The date of unblocking.
  int? get endDate => payload['by_end_date'];
}