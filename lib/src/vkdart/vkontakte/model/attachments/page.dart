import 'package:vkdart/vkontakte.dart';

/// Модель страницы Wiki.
///
/// См. https://dev.vk.com/ru/reference/objects/wiki-page
class WikiPageAttachmentModel extends CustomAttachmentModel {
  // ignore: public_member_api_docs
  WikiPageAttachmentModel(super.payload) : super(attachType: 'page');

  /// Идентификатор создателя страницы.
  @override
  int get ownerId => payload['creator_id'];

  /// ID сообщества.
  int? get groupId => payload['group_id'];

  /// Название Wiki-страницы.
  String? get title => payload['title'];

  /// Может ли пользователь редактировать текст Wiki-страницы.
  bool? get isCanEdit => checkBoolInProperty('current_user_can_edit');

  /// Может ли пользователь изменять права доступа к Wiki-странице.
  bool? get isCanEditAccess =>
      checkBoolInProperty('current_user_can_edit_access');

  /// Информация о том, кому доступен просмотр Wiki-страницы:
  /// - 2 — страница доступна всем;
  /// - 1 — только участники сообщества;
  /// - 0 — только руководители сообщества.
  int? get whoCanView => payload['who_can_view'];

  /// Указывает, кому доступно редактирование Wiki-страницы:
  /// - 2 — страницу могут редактировать все;
  /// - 1 — только участники сообщества;
  /// - 0 — только руководители сообщества.
  int? get whoCanEdit => payload['who_can_edit'];

  /// Дата последнего изменения Wiki-страницы в формате Unix.
  int? get edited => payload['edited'];

  /// Дата создания Wiki-страницы в формате Unix.
  int? get createdAt => payload['created'];

  /// ID пользователя, последним редактировавшего Wiki-страницу.
  int? get editorId => payload['editor_id'];

  /// Количество просмотров Wiki-страницы.
  int? get viewsCount => payload['views'];

  /// Название родительской страницы для перехода (если есть).
  String? get parent => payload['parent'];

  /// Название второй родительской страницы для перехода (если есть).
  String? get parent2 => payload['parent2'];

  /// Текст страницы в формате Wiki, если он запрошен.
  String? get source => payload['source'];

  /// Текст страницы в формате HTML, если он запрошен.
  String? get html => payload['html'];

  /// Адрес страницы для отображения Wiki-страницы.
  String? get viewUrl => payload['view_url'];
}
