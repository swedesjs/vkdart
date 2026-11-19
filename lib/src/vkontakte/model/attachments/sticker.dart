import 'package:vkdart/vkontakte.dart';

/// Модель стикера.
///
/// См. https://vk.com/dev/objects/sticker
class StickerAttachmentModel extends AttachmentModel {
  // ignore: public_member_api_docs
  StickerAttachmentModel(super.payload) : super(attachType: 'sticker');

  /// ID набора.
  int get productId => payload['product_id'];

  /// ID стикера.
  int get stickerId => payload['sticker_id'];

  /// Изображения стикера (с прозрачным фоном).
  List<StickerAttachmentImageModel> get images => (payload['images'] as List)
      .map((e) =>
          // ignore: require_trailing_commass
          StickerAttachmentImageModel((e as Map).cast<String, dynamic>()))
      .toList();

  /// Изображения стикера (с непрозрачным фоном).
  List<StickerAttachmentImageModel> get imagesWithBackground =>
      (payload['images_with_background'] as List)
          .map((e) =>
              // ignore: require_trailing_commass
              StickerAttachmentImageModel((e as Map).cast<String, dynamic>()))
          .toList();

  /// URL анимации стикера.
  String? get animationUrl => payload['animation_url'];

  /// Разрешён ли стикер.
  bool? get isAllowed => payload['is_allowed'];
}

/// Модель изображения стикера.
///
/// См. https://vk.com/dev/objects/sticker#image
final class StickerAttachmentImageModel {
  // ignore: public_member_api_docs
  StickerAttachmentImageModel(this.imageObject);

  /// Данные.
  final Map<String, dynamic> imageObject;

  /// URL изображения стикера.
  String get url => imageObject['url'];

  /// Ширина изображения стикера.
  String get width => imageObject['width'];

  /// Высота изображения стикера.
  String get height => imageObject['height'];
}
