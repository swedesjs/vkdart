import 'package:vkdart/vkontakte.dart';

/// Модель заметки
///
/// См. https://dev.vk.com/ru/reference/objects/note
class NoteAttachmentModel extends CustomAttachmentModel {
  // ignore: public_member_api_docs
  NoteAttachmentModel(super.payload) : super(attachType: 'note');

  /// Заголовок заметки.
  String? get title => payload['title'];

  /// Текст заметки.
  String? get text => payload['text'];

  /// Дата создания заметки в формате Unix.
  int? get createdAt => payload['date'];

  /// Количество комментариев.
  int? get commentsCount => payload['comments'];

  /// Количество прочитанных комментариев (только при запросе данных о заметке текущего пользователя).
  int? get readCommentsCount => payload['read_comments'];

  /// URL страницы для отображения заметки.
  String? get viewUrl => payload['view_url'];

  /// Настройки приватности комментирования заметки.
  String? get privacyView => payload['privacy_view'];

  /// Можно ли оставлять комментарии.
  bool? get isCanComment => checkBoolInProperty('can_comment');

  /// Теги Wiki-ссылок.
  String? get textWiki => payload['text_wiki'];
}
