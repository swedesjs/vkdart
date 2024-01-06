// ignore_for_file: public_member_api_docs, non_constant_identifier_names

part of 'attachments.dart';

/// Структура фотографии.
@JsonSerializable()
class PhotoAttachment extends Attachment {
  PhotoAttachment({
    required super.id,
    required super.owner_id,
    super.access_key,
    this.album_id,
    this.user_id,
    this.text,
    this.date,
    this.sizes,
  }) : super(AttachmentType.photo);

  factory PhotoAttachment.fromJson(Map<String, dynamic> json) =>
      _$PhotoAttachmentFromJson(json);

  final int? album_id;
  final int? user_id;
  final String? text;
  // datetime
  final int? date;

  final List<PhotoSizes>? sizes;

  @override
  Map<String, dynamic> toJson() => _$PhotoAttachmentToJson(this);
}

// Описывает копию фотографии
@JsonSerializable()
class PhotoSizes {
  PhotoSizes({this.type, this.url, this.width, this.height});

  factory PhotoSizes.fromJson(Map<String, dynamic> json) =>
      _$PhotoSizesFromJson(json);

  // enum
  final String? type;
  final String? url;
  final int? width;
  final int? height;

  Map<String, dynamic> toJson() => _$PhotoSizesToJson(this);
}
