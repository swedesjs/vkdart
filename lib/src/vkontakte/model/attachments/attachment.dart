import 'package:vkdart/util.dart';
import 'package:vkdart/vkdart.dart' show VkDartException;
import 'package:vkdart/vkontakte.dart';

/// Base class Attachment
///
/// See https://dev.vk.com/ru/docs/attachments
abstract class AttachmentModel {
  // ignore: public_member_api_docs
  AttachmentModel(this.payload, {required this.attachType});

  /// Transforms the attachment object into a specific model, depending on its type.
  /// There may be exceptions [VkDartException] in the case of a non-correct object,
  /// or if the type is not supported
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

  /// Payload.
  final Map<String, dynamic> payload;

  /// Attachment type.
  final String attachType;

  // ignore: public_member_api_docs
  bool? checkBoolInProperty(String key) => checkBoolUtil(payload[key]);
}

/// Model Custom Attachment.
class CustomAttachmentModel extends AttachmentModel {
  // ignore: public_member_api_docs
  CustomAttachmentModel(super.payload, {required super.attachType});

  /// Parses an attachment from a string.
  /// Example:
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

    return CustomAttachmentModel(attachmentPayload, attachType: attachType);
  }

  /// Attachment owner identifier.
  int get ownerId => payload['owner_id'];

  /// Attachment ID.
  int get id => payload['id'];

  /// Attachment access key.
  String? get accessKey => payload['access_key'];

  @override
  String toString() =>
      '$attachType${ownerId}_$id${accessKey != null ? '_$accessKey' : ''}';
}

/// Mixin for attachment likes.
mixin AttachmentLikesMixin on AttachmentModel {
  Map<String, dynamic>? get _likes => payload['likes'];

  /// the number of users who liked the post;
  int? get likesCount => _likes?['count'];

  /// the presence of a "like" mark from the current user ;
  bool? get isUserLikes => checkBoolUtil(_likes?['user_likes']);

  /// information about whether the current user can mark "Like";
  bool? get isLikesCanLike => checkBoolUtil(_likes?['can_like']);

  /// information about whether the current user can repost the post;
  bool? get isLikesCanPublish => checkBoolUtil(_likes?['can_publish']);
}

/// Mixin for attachment reposts.
mixin AttachmentRepostsMixin on AttachmentModel {
  Map<String, dynamic>? get _reposts => payload['reposts'];

  /// the number of reposts;
  int? get repostsCount => _reposts?['count'];

  /// Indicates whether the current user has reposted the attachment.
  bool? get isUserReposted => checkBoolUtil(_reposts?['user_reposted']);

  /// repost counter on the wall.
  int? get repostsWallCount => _reposts?['wall_count'];

  /// counter of reposts in personal messages.
  int? get repostsMailCount => _reposts?['mail_count'];
}
