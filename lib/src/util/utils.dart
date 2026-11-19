import 'package:vkdart/vkontakte.dart';

/// Смещение ID чата.
const peerChatIdOffset = 2000000000;

/// Преобразует список объектов вложений следующего формата:
/// ```dart
/// [{'type': 'photo', 'photo': {...}}, {'type': 'audio', 'audio': {...}}, ...]
/// ```
/// в модель вложения.
List<AttachmentModel> transformAttachments(
        List<Map<String, dynamic>> attachments) =>
    attachments.map((e) {
      final attachType = e['type'];
      return AttachmentModel.fromSpecificModel(e[attachType], attachType);
    }).toList();

/// Источник сообщения.
enum MessageSource {
  /// Пользователь.
  user,

  /// Сообщество.
  group,

  /// Чат.
  chat
}

/// Возвращает тип диалога.
/// Принимает параметр [id].
/// Если [id] меньше [peerChatIdOffset], возвращается [MessageSource.chat].
/// Если [id] меньше нуля, возвращается [MessageSource.group].
/// Во всех остальных случаях возвращается [MessageSource.user].
MessageSource getPeerType(int id) {
  if (peerChatIdOffset < id) {
    return MessageSource.chat;
  }

  if (id < 0) {
    return MessageSource.group;
  }

  return MessageSource.user;
}

/// Проверяет, является ли [value] целым числом.
/// Если значение не является целым числом, возвращается null.
bool? checkBoolUtil(Object? value) {
  if (value is! int) {
    return null;
  }

  return value == 1;
}
