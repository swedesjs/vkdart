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
part 'gift.dart';
part 'graffiti.dart';
part 'poll.dart';
part 'note.dart';
part 'page.dart';

/// Base class Attachment
///
/// See https://dev.vk.com/ru/docs/attachments
abstract class AttachmentModel {
  // ignore: public_member_api_docs
  AttachmentModel(this.payload);

  /// Payload.
  final Map<String, dynamic> payload;

  /// Attachment type.
  String get attachType => payload['type'];

  /// Attachment object.
  Map<String, dynamic> get attachmentObject => payload[attachType];

  static bool? _checkBool(Object value) {
    if (value is! int) {
      return null;
    }

    return value == 1;
  }

  bool? _checkBoolInProperty(String key) => _checkBool(attachmentObject[key]);
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
  Map<String, dynamic>? get _likes => attachmentObject['likes'];

  /// the number of users who liked the post;
  int? get likesCount => _likes?['count'];

  /// the presence of a "like" mark from the current user ;
  bool? get isUserLikes => AttachmentModel._checkBool(_likes?['user_likes']);

  /// information about whether the current user can mark "Like";
  bool? get isLikesCanLike => AttachmentModel._checkBool(_likes?['can_like']);

  /// information about whether the current user can repost the post;
  bool? get isLikesCanPublish =>
      AttachmentModel._checkBool(_likes?['can_publish']);
}

/// Mixin for attachment reposts.
mixin AttachmentRepostsMixin on AttachmentModel {
  Map<String, dynamic>? get _reposts => attachmentObject['reposts'];

  /// the number of reposts;
  int? get repostsCount => _reposts?['count'];

  /// Indicates whether the current user has reposted the attachment.
  bool? get isUserReposted =>
      AttachmentModel._checkBool(_reposts?['user_reposted']);

  /// repost counter on the wall.
  int? get repostsWallCount => _reposts?['wall_count'];

  /// counter of reposts in personal messages.
  int? get repostsMailCount => _reposts?['mail_count'];
}
