import 'package:vkdart/vkontakte.dart';

/// Model Gift.
///
/// See https://dev.vk.com/ru/reference/objects/gift
class GiftAttachmentModel extends AttachmentModel {
  // ignore: public_member_api_docs
  GiftAttachmentModel(super.payload) : super(attachType: 'gift');

  /// The ID of the gift.
  int get id => payload['id'];

  /// Thumbnail image URL with size 256.
  String? get thumb256 => payload['thumb_256'];

  /// Thumbnail image URL with size 96.
  String? get thumb96 => payload['thumb_96'];

  /// Thumbnail image URL with size 48.
  String? get thumb48 => payload['thumb_48'];
}
