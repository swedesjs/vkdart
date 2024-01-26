// ignore_for_file: avoid_dynamic_calls

import 'package:vkdart/vkdart.dart' show VkDartException;

part 'photo.dart';
part 'video.dart';
part 'audio.dart';
part 'document.dart';
part 'link.dart';
part 'market.dart';
part 'market_album.dart';
part 'wall.dart';
part 'wall_reply.dart';
part 'sticker.dart';

/// Base class Attachment
///
/// See https://vk.com/dev/objects/attachments
abstract class AttachmentModel {
  // ignore: public_member_api_docs
  AttachmentModel(this.payload);

  /// Payload.
  final Map<String, dynamic> payload;

  /// Attachment type.
  String get attachType => payload['type'];

  /// Attachment object.
  Map<String, dynamic> get attachmentObject => payload[attachType];
}

/// Model Custom Attachment.
class CustomAttachmentModel extends AttachmentModel {
  // ignore: public_member_api_docs
  CustomAttachmentModel(super.payload);

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
    final type = match[1]!;

    final attachmentPayload = <String, dynamic>{
      'type': type,
      type: {
        'owner_id': int.parse(match[2]!),
        'id': int.parse(match[3]!),
        if (match[4] != null) 'access_key': match[4],
      },
    };

    return CustomAttachmentModel(attachmentPayload);
  }

  /// Attachment owner identifier.
  int get ownerId => attachmentObject['owner_id'];

  /// Attachment ID.
  int get id => attachmentObject['id'];

  /// Attachment access key.
  String? get accessKey => attachmentObject['access_key'];

  @override
  String toString() =>
      '$attachType${ownerId}_$id${accessKey != null ? '_$accessKey' : ''}';
}

/// Mixin for attachment likes.
mixin AttachmentLikesMixin on AttachmentModel {
  /// the number of users who liked the post;
  int get likesCount => attachmentObject['likes']['count'];

  /// the presence of a "like" mark from the current user (1 — yes, 0 — no);
  int get userLikes => attachmentObject['likes']['user_likes'];

  /// information about whether the current user can mark "Like" (1 — maybe, 0 — can't);
  bool? get likesCanLike => attachmentObject['likes']['can_like'];

  /// information about whether the current user can repost the post (1 — maybe, 0 — can't);
  bool? get likesCanPublish => attachmentObject['likes']['can_publish'];
}

/// Mixin for attachment reposts.
mixin AttachmentRepostsMixin on AttachmentModel {
  /// the number of reposts;
  int get repostsCount => attachmentObject['reposts']['count'];

  /// Indicates whether the current user has reposted the attachment.
  int get userReposted => attachmentObject['reposts']['user_reposted'];

  /// repost counter on the wall.
  int? get repostsWallCount => attachmentObject['reposts']['wall_count'];

  /// counter of reposts in personal messages.
  int? get repostsMailCount => attachmentObject['reposts']['mail_count'];
}
