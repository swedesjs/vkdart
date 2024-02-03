import 'package:vkdart/vkontakte.dart';

/// Model Sticker.
///
/// See https://vk.com/dev/objects/sticker
class StickerAttachmentModel extends AttachmentModel {
  // ignore: public_member_api_docs
  StickerAttachmentModel(super.payload) : super(attachType: 'sticker');

  /// The ID of the set.
  int get productId => payload['product_id'];

  /// The sticker ID.
  int get stickerId => payload['sticker_id'];

  /// Sticker images (with transparent background).
  List<StickerAttachmentImageModel> get images => (payload['images'] as List)
      .map((e) =>
          // ignore: require_trailing_commass
          StickerAttachmentImageModel((e as Map).cast<String, dynamic>()))
      .toList();

  /// Images for the sticker (with an opaque background).
  List<StickerAttachmentImageModel> get imagesWithBackground =>
      (payload['images_with_background'] as List)
          .map((e) =>
              // ignore: require_trailing_commass
              StickerAttachmentImageModel((e as Map).cast<String, dynamic>()))
          .toList();

  /// The URL of the sticker animation.
  String? get animationUrl => payload['animation_url'];

  /// Whether the sticker is allowed.
  bool? get isAllowed => payload['is_allowed'];
}

/// Model Sticker Attachment Image.
///
/// See https://vk.com/dev/objects/sticker#image
final class StickerAttachmentImageModel {
  // ignore: public_member_api_docs
  StickerAttachmentImageModel(this.imageObject);

  /// Payload.
  final Map<String, dynamic> imageObject;

  /// Sticker image url.
  String get url => imageObject['url'];

  /// Sticker image width.
  String get width => imageObject['width'];

  /// Sticker image height.
  String get height => imageObject['height'];
}
