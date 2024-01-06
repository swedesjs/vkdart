// ignore_for_file: public_member_api_docs, non_constant_identifier_names

part of 'attachments.dart';

/// Структура документа.
@JsonSerializable()
class DocAttachment extends Attachment {
  DocAttachment({
    required super.id,
    required super.owner_id,
    super.access_key,
    this.title,
    this.size,
    this.ext,
    this.url,
    this.date,
    this.type,
    this.preview,
  }) : super(AttachmentType.doc);

  factory DocAttachment.fromJson(Map<String, dynamic> json) =>
      _$DocAttachmentFromJson(json);

  final String? title;
  final int? size;
  final String? ext;
  final String? url;
  // datetime
  final int? date;
  // enum
  final int? type;
  // structure
  final ClassicMap? preview;

  @override
  Map<String, dynamic> toJson() => _$DocAttachmentToJson(this);
}
