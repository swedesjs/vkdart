import 'package:vkdart/model.dart';

/// The model `group` update.
///
/// See:
/// - https://dev.vk.com/ru/api/community-events/json-schema#group_leave
/// - https://dev.vk.com/ru/api/community-events/json-schema#group_join
class VkDartGroupUpdate with VkDartUpdate {
  // ignore: public_member_api_docs
  VkDartGroupUpdate(this.update);

  @override
  final Update update;

  /// Check is user leave.
  bool get isLeave => updateType == UpdateType.group_leave;

  /// Check is user join.
  bool get isJoin => updateType == UpdateType.group_join;

  /// User ID.
  int get userId => updateObject['user_id'];

  /// A value indicating whether the user was deleted or logged out on their own.
  int? get self => updateObject['self'];

  /// Specifies exactly how the participant was added.
  String? get joinType => updateObject['join_type'];
}
