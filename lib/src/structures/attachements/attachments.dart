// ignore: lines_longer_than_80_chars
// ignore_for_file: constant_identifier_names, public_member_api_docs, non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';
import 'package:vkdart/src/types/methods.dart';

part 'attachments.g.dart';
part 'photo.dart';
part 'audio.dart';
part 'doc.dart';
part 'gift.dart';
part 'link.dart';
part 'market_album.dart';
part 'market.dart';
part 'video.dart';
part 'sticket.dart';
part 'wall_reply.dart';
part 'wall.dart';

/// Перечисление типов вложения.
enum AttachmentType {
  /// Фотография
  photo,

  /// Видеозапись
  video,

  /// Аудио
  audio,

  /// Документ
  doc,

  /// Ссылка
  link,

  /// Товар
  market,

  /// Подборка товаров
  market_album,

  /// Запись на стене
  wall,

  /// Комментарий на стене
  wall_reply,

  /// Стикер
  sticker,

  /// Подарок
  gift
}

/// Структура объединяющая все вложения.
@JsonSerializable()
class MainAttachment {
  MainAttachment(this.attachType);

  factory MainAttachment.fromJson(Map<String, dynamic> json) =>
      _$MainAttachmentFromJson(json);

  final AttachmentType attachType;

  Map<String, dynamic> toJson() => _$MainAttachmentToJson(this);
}

/// Структура вложения.
@JsonSerializable()
class Attachment extends MainAttachment {
  Attachment(
    super.attachType, {
    required this.id,
    required this.owner_id,
    this.access_key,
  });

  factory Attachment.fromJson(Map<String, dynamic> json) =>
      _$AttachmentFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AttachmentToJson(this);

  final int id;
  final int owner_id;
  final String? access_key;
}

// Второстепенная структура.
@JsonSerializable()
class MinorAttachment extends MainAttachment {
  MinorAttachment(super.attachType);

  factory MinorAttachment.fromJson(Map<String, dynamic> json) =>
      _$MinorAttachmentFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MinorAttachmentToJson(this);
}
