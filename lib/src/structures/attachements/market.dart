// ignore_for_file: public_member_api_docs, non_constant_identifier_names

part of 'attachments.dart';

/// Структура товара.
@JsonSerializable()
class MarketAttachment extends Attachment {
  MarketAttachment({
    required super.id,
    required super.owner_id,
    super.access_key,
    this.title,
    this.description,
    this.price,
    this.dimensions,
    this.weight,
    this.category,
    this.thumb_photo,
    this.date,
    this.availability,
    this.is_favorite,
    this.sku,
    this.reject_info,
    this.photos,
    this.can_comment,
    this.can_repost,
    this.likes,
    this.url,
    this.button_title,
  }) : super(AttachmentType.market);

  factory MarketAttachment.fromJson(Map<String, dynamic> json) =>
      _$MarketAttachmentFromJson(json);

  final String? title;
  final String? description;
  // structure
  final ClassicMap? price;
  // structure
  final ClassicMap? dimensions;
  final int? weight;
  // structure
  final ClassicMap? category;
  final String? thumb_photo;
  // datetime
  final int? date;
  final int? availability;
  final bool? is_favorite;
  final String? sku;
  // structure
  final ClassicMap? reject_info;
  // structure
  final List<ClassicMap>? photos;
  // bool
  final int? can_comment;
  // bool
  final int? can_repost;
  // structure
  final ClassicMap? likes;
  final String? url;
  final String? button_title;

  @override
  Map<String, dynamic> toJson() => _$MarketAttachmentToJson(this);
}
