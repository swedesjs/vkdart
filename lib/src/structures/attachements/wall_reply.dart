// ignore_for_file: public_member_api_docs, non_constant_identifier_names

part of 'attachments.dart';

/// Структура отправленной видеозаписи.
@JsonSerializable()
class WallReplyAttachment extends MinorAttachment {
  WallReplyAttachment({
    this.id,
    this.from_id,
    this.date,
    this.text,
    this.donut,
    this.reply_to_user,
    this.reply_to_comment,
    this.attachments,
    this.parents_stack,
    this.thread,
  }) : super(AttachmentType.wall_reply);

  factory WallReplyAttachment.fromJson(Map<String, dynamic> json) =>
      _$WallReplyAttachmentFromJson(json);

  final int? id;
  final int? from_id;
  final int? date;
  final String? text;
  // structure
  final ClassicMap? donut;
  final int? reply_to_user;
  final int? reply_to_comment;
  // structure
  final ClassicMap? attachments;
  final List<int>? parents_stack;
  // structure
  final ClassicMap? thread;

  @override
  Map<String, dynamic> toJson() => _$WallReplyAttachmentToJson(this);
}
