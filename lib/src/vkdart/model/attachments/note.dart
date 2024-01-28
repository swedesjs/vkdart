part of 'attachment.dart';

/// Model Note
///
/// See https://dev.vk.com/ru/reference/objects/note
class NoteAttachmentModel extends CustomAttachmentModel {
  // ignore: public_member_api_docs
  NoteAttachmentModel(super.payload);

  /// The title of the note.
  String? get title => attachmentObject['title'];

  /// The text of the note.
  String? get text => attachmentObject['text'];

  /// The date the note was created in Unixtime format.
  int? get createdAt => attachmentObject['date'];

  /// The number of comments.
  int? get commentsCount => attachmentObject['comments'];

  /// The number of comments read (only when requesting information about the current user's note).
  int? get readCommentsCount => attachmentObject['read_comments'];

  /// The URL of the page to display the note.
  String? get viewUrl => attachmentObject['view_url'];

  /// Privacy settings for commenting on a note
  String? get privacyView => attachmentObject['privacy_view'];

  /// Is it possible to leave comments
  bool? get isCanComment => _checkBoolInProperty('can_comment');

  /// Wiki link tags.
  String? get textWiki => attachmentObject['text_wiki'];
}
