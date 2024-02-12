import 'package:vkdart/model.dart';

/// The model `group` update.
///
/// See:
/// - https://dev.vk.com/ru/api/community-events/json-schema#group_leave
/// - https://dev.vk.com/ru/api/community-events/json-schema#group_join
class VkDartGroupUpdate {
  // ignore: public_member_api_docs
  final VkDartUpdate update;

  // ignore: public_member_api_docs
  VkDartGroupUpdate(this.update);

  /// Check is user leave.
  bool get isLeave => update.type == UpdateType.group_leave;

  /// Check is user join.
  bool get isJoin => update.type == UpdateType.group_join;

  /// User ID.
  int get userId => update.object['user_id'];

  /// A value indicating whether the user was deleted or logged out on their own.
  int? get self => update.object['self'];

  /// Specifies exactly how the participant was added.
  String? get joinType => update.object['join_type'];
}
