// ignore_for_file: public_member_api_docs, non_constant_identifier_names

part of 'attachments.dart';

/// Структура видеозаписи.
@JsonSerializable()
class VideoAttachment extends Attachment {
  VideoAttachment({
    required super.id,
    required super.owner_id,
    super.access_key,
    this.title,
    this.description,
    this.duration,
    this.image,
    this.first_frame,
    this.date,
    this.adding_date,
    this.views,
    this.local_views,
    this.comments,
    this.player,
    this.platform,
    this.can_add,
    this.is_private,
    this.processing,
    this.is_favorite,
    this.can_comment,
    this.can_edit,
    this.can_like,
    this.can_repost,
    this.can_subscribe,
    this.can_add_to_faves,
    this.can_attach_link,
    this.width,
    this.height,
    this.user_id,
    this.converting,
    this.added,
    this.is_subscribed,
    this.repeat,
    this.type,
    this.balance,
    this.live_status,
    this.live,
    this.upcoming,
    this.spectators,
    this.likes,
    this.reposts,
  }) : super(AttachmentType.video);

  factory VideoAttachment.fromJson(Map<String, dynamic> json) =>
      _$VideoAttachmentFromJson(json);

  final String? title;
  final String? description;
  // duration
  final int? duration;
  // structure
  final List<ClassicMap>? image;
  // structure
  final List<ClassicMap>? first_frame;
  // sstructure
  final int? date;
  final int? adding_date;
  final int? views;
  final int? local_views;
  final int? comments;
  final String? player;
  final String? platform;
  // bool
  final int? can_add;
  // bool
  final int? is_private;
  // bool
  final int? processing;
  final bool? is_favorite;
  // bool
  final int? can_comment;
  // bool
  final int? can_edit;
  // bool
  final int? can_like;
  // bool
  final int? can_repost;
  // bool
  final int? can_subscribe;
  // bool
  final int? can_add_to_faves;
  // bool
  final int? can_attach_link;
  final int? width;
  final int? height;
  final int? user_id;
  // bool
  final int? converting;
  // bool
  final int? added;
  // bool
  final int? is_subscribed;
  final int? repeat;
  // enum
  final String? type;
  final int? balance;
  // enum
  final String? live_status;
  final int? live;
  final int? upcoming;
  final int? spectators;
  // structure
  final ClassicMap? likes;
  // structure
  final ClassicMap? reposts;

  @override
  Map<String, dynamic> toJson() => _$VideoAttachmentToJson(this);
}
