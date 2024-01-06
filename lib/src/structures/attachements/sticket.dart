// ignore_for_file: public_member_api_docs, non_constant_identifier_names

part of 'attachments.dart';

/// Структура прикрепленной ссылки.
@JsonSerializable()
class StickerAttachment extends MinorAttachment {
  StickerAttachment({
    this.product_id,
    this.sticker_id,
    this.images,
    this.images_with_background,
    this.animation_url,
    this.is_allowed,
  }) : super(AttachmentType.sticker);

  factory StickerAttachment.fromJson(Map<String, dynamic> json) =>
      _$StickerAttachmentFromJson(json);

  final int? product_id;
  final int? sticker_id;
  // structure
  final List<ClassicMap>? images;
  // structure
  final List<ClassicMap>? images_with_background;
  final String? animation_url;
  final bool? is_allowed;

  @override
  Map<String, dynamic> toJson() => _$StickerAttachmentToJson(this);
}
