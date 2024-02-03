part of 'attachment.dart';

/// Model Link.
///
/// See https://dev.vk.com/ru/reference/objects/link
class LinkAttachmentModel extends AttachmentModel {
  // ignore: public_member_api_docs
  LinkAttachmentModel(super.payload) : super(attachType: 'link');

  /// Link URL.
  String get url => payload['url'];

  /// Link title.
  String get title => payload['title'];

  /// Link description.
  String? get description => payload['description'];

  /// Preview image. (if available)
  PhotoAttachmentModel? get photo =>
      payload['photo'] != null ? PhotoAttachmentModel(payload['photo']) : null;

  /// Product information (if available).
  Map<String, dynamic>? get product => payload['product'];

  /// Information about the button to navigate (if available).
  Map<String, dynamic>? get button => payload['button'];

  /// ID of the content wiki page to preview the content of the page. Returned in the format `owner_id_page_ids`.
  String? get previewPage => payload['preview_page'];

  /// Content page URL to preview the page content.
  String? get previewUrl => payload['preview_url'];
}
