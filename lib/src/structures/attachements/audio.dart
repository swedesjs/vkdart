// ignore_for_file: public_member_api_docs, non_constant_identifier_names

part of 'attachments.dart';

/// Структура аудио.
@JsonSerializable()
class AudioAttachment extends Attachment {
  AudioAttachment({
    required super.id,
    required super.owner_id,
    super.access_key,
    this.artist,
    this.title,
    this.duration,
    this.url,
    this.lyrics_id,
    this.album_id,
    this.genre_id,
    this.date,
    this.no_search,
    this.is_hq,
  }) : super(AttachmentType.audio);

  factory AudioAttachment.fromJson(Map<String, dynamic> json) =>
      _$AudioAttachmentFromJson(json);

  final String? artist;
  final String? title;
  // duration
  final int? duration;
  final String? url;
  final int? lyrics_id;
  final int? album_id;
  final int? genre_id;
  // datetime
  final int? date;
  // bool
  final int? no_search;
  // bool
  final int? is_hq;

  @override
  Map<String, dynamic> toJson() => _$AudioAttachmentToJson(this);
}
