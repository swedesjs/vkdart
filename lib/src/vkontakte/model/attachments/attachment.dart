import 'package:vkdart/util.dart';
import 'package:vkdart/vkdart.dart' show VkDartException;
import 'package:vkdart/vkontakte.dart';

/// Базовый класс вложения
///
/// См. https://dev.vk.com/ru/docs/attachments
abstract class AttachmentModel {
  /// Данные.
  final Map<String, dynamic> payload;

  /// Тип вложения.
  final String attachType;

  // ignore: public_member_api_docs
  AttachmentModel(this.payload, {required this.attachType});

  /// Преобразует объект вложения в соответствующую модель в зависимости от его типа.
  /// Для некорректного объекта может быть выброшено исключение [VkDartException],
  /// или если тип не поддерживается.
  factory AttachmentModel.fromSpecificModel(
          Map<String, dynamic> payload, String attachType) =>
      switch (attachType) {
        'photo' => PhotoAttachmentModel(payload),
        'video' => VideoAttachmentModel(payload),
        'audio' => AudioAttachmentModel(payload),
        'doc' => DocumentAttachmentModel(payload),
        'link' => LinkAttachmentModel(payload),
        'market' => MarketAttachmentModel(payload),
        'market_album' => MarketAlbumAttachmentModel(payload),
        'wall' => WallAttachmentModel(payload),
        'wall_reply' => WallReplyAttachmentModel(payload),
        'sticker' => StickerAttachmentModel(payload),
        'gift' => GiftAttachmentModel(payload),
        'graffiti' => GraffitiAttachmentModel(payload),
        'poll' => PollAttachmentModel(payload),
        'note' => NoteAttachmentModel(payload),
        'page' => WikiPageAttachmentModel(payload),
        _ => throw VkDartException('$attachType of attachment has no support!')
      };

  // ignore: public_member_api_docs
  bool? checkBoolInProperty(String key) => checkBoolUtil(payload[key]);
}

/// Модель пользовательского вложения.
class CustomAttachmentModel extends AttachmentModel {
  // ignore: public_member_api_docs
  CustomAttachmentModel(super.payload, {required super.attachType});

  /// Разбирает строку вложения.
  /// Пример:
  /// ```dart
  /// CustomAttachmentModel.fromString('photo-1_2_ACCESS_KEY');
  /// ```
  factory CustomAttachmentModel.fromString(String attachment) {
    final parseAttachmentRe =
        RegExp(r'([a-z_]+)(-?\d+)_(\d+)_?(\w+)?', multiLine: true);

    if (!parseAttachmentRe.hasMatch(attachment)) {
      throw VkDartException('Incorrect attachment!');
    }

    final match = parseAttachmentRe.firstMatch(attachment)!;
    final attachType = match[1]!;

    final attachmentPayload = <String, dynamic>{
      'owner_id': int.parse(match[2]!),
      'id': int.parse(match[3]!),
      if (match[4] != null) 'access_key': match[4],
    };

    return AttachmentModel.fromSpecificModel(attachmentPayload, attachType)
        as CustomAttachmentModel;
  }

  /// Идентификатор владельца вложения.
  int get ownerId => payload['owner_id'];

  /// Идентификатор вложения.
  int get id => payload['id'];

  /// Ключ доступа к вложению.
  String? get accessKey => payload['access_key'];

  @override
  String toString() =>
      '$attachType${ownerId}_$id${accessKey != null ? '_$accessKey' : ''}';
}

/// Миксин для отметок «Нравится» у вложений.
mixin AttachmentLikesMixin on AttachmentModel {
  Map<String, dynamic>? get _likes => payload['likes'];

  /// количество пользователей, отметивших запись отметкой «Нравится»;
  int? get likesCount => _likes?['count'];

  /// наличие отметки «Нравится» от текущего пользователя;
  bool? get isUserLikes => checkBoolUtil(_likes?['user_likes']);

  /// информация о том, может ли текущий пользователь поставить отметку «Нравится»;
  bool? get isLikesCanLike => checkBoolUtil(_likes?['can_like']);

  /// информация о том, может ли текущий пользователь сделать репост записи;
  bool? get isLikesCanPublish => checkBoolUtil(_likes?['can_publish']);
}

/// Миксин для репостов вложений.
mixin AttachmentRepostsMixin on AttachmentModel {
  Map<String, dynamic>? get _reposts => payload['reposts'];

  /// количество репостов;
  int? get repostsCount => _reposts?['count'];

  /// Указывает, сделал ли текущий пользователь репост вложения.
  bool? get isUserReposted => checkBoolUtil(_reposts?['user_reposted']);

  /// счётчик репостов на стене.
  int? get repostsWallCount => _reposts?['wall_count'];

  /// счётчик репостов в личных сообщениях.
  int? get repostsMailCount => _reposts?['mail_count'];
}
