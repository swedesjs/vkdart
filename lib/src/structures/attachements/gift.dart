// ignore_for_file: public_member_api_docs, non_constant_identifier_names

part of 'attachments.dart';

/// Структура подарка.
@JsonSerializable()
class GiftAttachment extends MainAttachment {
  GiftAttachment({this.id, this.thumb_256, this.thumb_96, this.thumb_48})
      : super(AttachmentType.gift);

  factory GiftAttachment.fromJson(Map<String, dynamic> json) =>
      _$GiftAttachmentFromJson(json);

  final int? id;
  final String? thumb_256;
  final String? thumb_96;
  final String? thumb_48;

  @override
  Map<String, dynamic> toJson() => _$GiftAttachmentToJson(this);
}
