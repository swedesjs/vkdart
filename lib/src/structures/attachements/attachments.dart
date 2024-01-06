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

/// Разбирает тип вложения из строки.
AttachmentType attachTypeFromString(String type) => switch (type) {
      'photo' => AttachmentType.photo,
      'video' => AttachmentType.video,
      'audio' => AttachmentType.audio,
      'doc' => AttachmentType.doc,
      'link' => AttachmentType.link,
      'market' => AttachmentType.market,
      'market_album' => AttachmentType.market_album,
      'wall' => AttachmentType.wall,
      'wall_reply' => AttachmentType.wall_reply,
      'sticker' => AttachmentType.sticker,
      'gift' => AttachmentType.gift,
      _ => throw Exception('Тип вложения не найден!')
    };

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

  /// Разбирает вложение из строки.
  factory Attachment.fromString(String attachment) {
    if (!parseAttachmentRe.hasMatch(attachment)) {
      throw Exception('Неккоректное вложение!');
    }

    final match = parseAttachmentRe.firstMatch(attachment)!;

    return Attachment(
      attachTypeFromString(match[1]!),
      id: int.parse(match[2]!),
      owner_id: int.parse(match[3]!),
      access_key: match[4],
    );
  }

  @override
  Map<String, dynamic> toJson() => _$AttachmentToJson(this);

  static final parseAttachmentRe =
      RegExp(r'([a-z_]+)(-?\d+)_(\d+)_?(\w+)?', multiLine: true);

  final int id;
  final int owner_id;
  final String? access_key;

  @override
  String toString() {
    final accessKey = access_key != null ? '_$access_key' : '';

    return "${attachType.name}${owner_id}_${id}$accessKey";
  }
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
