// ignore_for_file: public_member_api_docs, non_constant_identifier_names

part of 'attachments.dart';

/// Структура прикрепленной ссылки.
@JsonSerializable()
class LinkAttachment extends MainAttachment {
  LinkAttachment({
    this.url,
    this.title,
    this.caption,
    this.description,
    this.photo,
  }) : super(AttachmentType.link);

  factory LinkAttachment.fromJson(Map<String, dynamic> json) =>
      _$LinkAttachmentFromJson(json);

  final String? url;
  final String? title;
  final String? caption;
  final String? description;
  // structure
  final ClassicMap? photo;

  @override
  Map<String, dynamic> toJson() => _$LinkAttachmentToJson(this);
}
