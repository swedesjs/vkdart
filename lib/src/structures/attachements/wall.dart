// ignore_for_file: public_member_api_docs, non_constant_identifier_names

part of 'attachments.dart';

/// Структура записи.
@JsonSerializable()
class WallAttachment extends Attachment {
  WallAttachment({
    required super.id,
    required super.owner_id,
    this.from_id,
    this.created_by,
    this.date,
    this.text,
    this.reply_owner_id,
    this.reply_post_id,
    this.friends_only,
    this.comments,
    this.copyright,
    this.likes,
    this.reposts,
    this.views,
    this.post_type,
    this.post_source,
    this.attachments,
    this.geo,
    this.signer_id,
    this.copy_history,
    this.can_pin,
    this.can_delete,
    this.can_edit,
    this.is_pinned,
    this.marked_as_ads,
    this.is_favorite,
    this.donut,
    this.postponed_id,
  }) : super(AttachmentType.wall);

  factory WallAttachment.fromJson(Map<String, dynamic> json) =>
      _$WallAttachmentFromJson(json);

  final int? from_id;
  final int? created_by;
  // datetime
  final int? date;
  final String? text;
  final int? reply_owner_id;
  final int? reply_post_id;
  // bool
  final int? friends_only;
  // structure
  final ClassicMap? comments;
  // structure
  final ClassicMap? copyright;
  // structure
  final ClassicMap? likes;
  // structure
  final ClassicMap? reposts;
  // structure
  final ClassicMap? views;
  final String? post_type;
  final ClassicMap? post_source;
  final List<ClassicMap>? attachments;
  final ClassicMap? geo;
  final int? signer_id;
  // structure
  final ClassicMap? copy_history;
  // bool
  final int? can_pin;
  // bool
  final int? can_delete;
  // bool
  final int? can_edit;
  // bool
  final int? is_pinned;
  // bool
  final int? marked_as_ads;
  final bool? is_favorite;
  // structure
  final ClassicMap? donut;
  final int? postponed_id;

  @override
  Map<String, dynamic> toJson() => _$WallAttachmentToJson(this);
}
