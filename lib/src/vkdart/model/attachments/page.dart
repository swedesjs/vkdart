part of 'attachment.dart';

/// Model Wiki Page.
///
/// See https://dev.vk.com/ru/reference/objects/wiki-page
class WikiPageAttachmentModel extends CustomAttachmentModel {
  // ignore: public_member_api_docs
  WikiPageAttachmentModel(super.payload) : super(attachType: 'page');

  /// The ID of the creator of the page.
  @override
  int get ownerId => payload['creator_id'];

  /// The community ID.
  int? get groupId => payload['group_id'];

  /// The name of the wiki page.
  String? get title => payload['title'];

  /// Can a user edit the text of a wiki page
  bool? get isCanEdit => _checkBoolInProperty('current_user_can_edit');

  /// Can a user change the access rights of a wiki page
  bool? get isCanEditAccess =>
      _checkBoolInProperty('current_user_can_edit_access');

  /// Information about who can view the wiki page:
  /// - 2 — everyone can view the page;
  /// - 1 — community members only;
  /// - 0 — community leaders only.
  int? get whoCanView => payload['who_can_view'];

  /// Specifies who can edit the wiki page:
  /// - 2 — everyone can edit the page;
  /// - 1 — community members only;
  /// - 0 — community leaders only.
  int? get whoCanEdit => payload['who_can_edit'];

  /// The date the wiki page was last modified in Unixtime format.
  int? get edited => payload['edited'];

  /// The date the wiki page was created in Unixtime format.
  int? get createdAt => payload['created'];

  /// The ID of the user who edited the wiki page last.
  int? get editorId => payload['editor_id'];

  /// The number of views of the wiki page.
  int? get viewsCount => payload['views'];

  /// The title of the parent page for navigation, if any.
  String? get parent => payload['parent'];

  /// The title of the second parent page for navigation, if any
  String? get parent2 => payload['parent2'];

  /// The text of the page in wiki format, if requested.
  String? get source => payload['source'];

  /// The text of the page in html format, if requested.
  String? get html => payload['html'];

  /// The address of the page to display the wiki page.
  String? get viewUrl => payload['view_url'];
}
