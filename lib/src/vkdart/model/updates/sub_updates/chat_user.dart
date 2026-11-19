import 'package:vkdart/model.dart';

mixin _VkDartChatUserMixin on VkDartMessageUpdate {
  /// Проверяет, соответствует ли тип 'chat_invite_user_by_link'.
  bool get isInviteByLink => actionType! == 'chat_invite_user_by_link';

  /// Проверяет, соответствует ли тип 'chat_invite_user'.
  bool get isInviteNoLink => actionType! == 'chat_invite_user';

  /// Проверяет, соответствует ли тип 'chat_kick_user'.
  bool get isKick => actionType! == 'chat_kick_user';

  /// Проверяет, соответствует ли тип 'chat_invite_user_by_link' или 'chat_invite_user'.
  bool get isInvite => !isKick;

  /// ID пользователя, приглашённого или исключённого либо присоединившегося по ссылке.
  int get memberId => actionMemberId!;

  /// Электронная почта приглашённого или исключённого пользователя.
  String? get email => actionEmail;
}

/// Модель подтипов обновления: `chat_invite_user`, `chat_kick_user`, `chat_invite_user_by_link`.
class VkDartChatUserUpdate = VkDartMessageUpdate with _VkDartChatUserMixin;
