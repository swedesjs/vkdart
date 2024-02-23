import 'package:vkdart/model.dart';

mixin _VkDartChatUserMixin on VkDartMessageUpdate {
  /// Check type is 'chat_invite_user_by_link'
  bool get isInviteByLink => actionType! == 'chat_invite_user_by_link';

  /// Check type is 'chat_invite_user'
  bool get isInviteNoLink => actionType! == 'chat_invite_user';

  /// Check type is 'chat_kick_user'
  bool get isKick => actionType! == 'chat_kick_user';

  /// Check type is 'chat_invite_user_by_link' and 'chat_invite_user'
  bool get isInvite => !isKick;

  /// ID of the user who was invited/excluded/joined via the link.
  int get memberId => actionMemberId!;

  /// email that was invited or excluded.
  String? get email => actionEmail;
}

/// Sub-updates model: `chat_invite_user`, `chat_kick_user`, `chat_invite_user_by_link`.
class VkDartChatUserUpdate = VkDartMessageUpdate with _VkDartChatUserMixin;
