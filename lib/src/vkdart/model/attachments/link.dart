part of 'attachment.dart';

/// Model Link.
///
/// See https://vk.com/dev/objects/link
class LinkAttachmentModel extends AttachmentModel {
  // ignore: public_member_api_docs
  LinkAttachmentModel(super.payload);

  /// Link URL.
  String? get url => attachmentObject['url'];

  /// Link title.
  String? get title => attachmentObject['title'];

  /// Link description.
  String? get description => attachmentObject['description'];

  /// Preview image. (if available)
  PhotoAttachmentModel? get photo => attachmentObject['photo'] != null
      ? PhotoAttachmentModel(attachmentObject['photo'])
      : null;

  /// Product information (if available).
  Map<String, dynamic>? get product => attachmentObject['product'];

  /// Information about the button to navigate (if available).
  Map<String, dynamic>? get button => attachmentObject['button'];

  /// ID of the content wiki page to preview the content of the page. Returned in the format `"owner_id_page_id"`.
  String? get previewPage => attachmentObject['preview_page'];

  /// Content page URL to preview the page content.
  String? get previewUrl => attachmentObject['preview_url'];
}
