part of 'attachment.dart';

/// Model Gift.
///
/// See https://dev.vk.com/ru/reference/objects/gift
class GiftAttachmentModel extends AttachmentModel {
  // ignore: public_member_api_docs
  GiftAttachmentModel(super.payload);

  /// The ID of the gift.
  int get id => attachmentObject['id'];

  /// Thumbnail image URL with size 256.
  String? get thumb256 => attachmentObject['thumb_256'];

  /// Thumbnail image URL with size 96.
  String? get thumb96 => attachmentObject['thumb_96'];

  /// Thumbnail image URL with size 48.
  String? get thumb48 => attachmentObject['thumb_48'];
}
