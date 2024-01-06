// ignore_for_file: public_member_api_docs, non_constant_identifier_names

part of 'attachments.dart';

/// Структура подборки товаров.
@JsonSerializable()
class MarketAlbumAttachment extends Attachment {
  MarketAlbumAttachment({
    required super.id,
    required super.owner_id,
    super.access_key,
    this.title,
    this.is_main,
    this.is_hidden,
    this.photo,
  }) : super(AttachmentType.market_album);

  factory MarketAlbumAttachment.fromJson(Map<String, dynamic> json) =>
      _$MarketAlbumAttachmentFromJson(json);

  final String? title;
  final bool? is_main;
  final bool? is_hidden;
  // structure
  final ClassicMap? photo;

  @override
  Map<String, dynamic> toJson() => _$MarketAlbumAttachmentToJson(this);
}
