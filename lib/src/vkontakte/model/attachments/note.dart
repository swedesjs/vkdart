import 'package:vkdart/vkontakte.dart';

/// Model Note
///
/// See https://dev.vk.com/ru/reference/objects/note
class NoteAttachmentModel extends CustomAttachmentModel {
  // ignore: public_member_api_docs
  NoteAttachmentModel(super.payload) : super(attachType: 'note');

  /// The title of the note.
  String? get title => payload['title'];

  /// The text of the note.
  String? get text => payload['text'];

  /// The date the note was created in Unixtime format.
  int? get createdAt => payload['date'];

  /// The number of comments.
  int? get commentsCount => payload['comments'];

  /// The number of comments read (only when requesting information about the current user's note).
  int? get readCommentsCount => payload['read_comments'];

  /// The URL of the page to display the note.
  String? get viewUrl => payload['view_url'];

  /// Privacy settings for commenting on a note
  String? get privacyView => payload['privacy_view'];

  /// Is it possible to leave comments
  bool? get isCanComment => checkBoolInProperty('can_comment');

  /// Wiki link tags.
  String? get textWiki => payload['text_wiki'];
}
