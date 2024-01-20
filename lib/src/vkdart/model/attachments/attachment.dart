import 'package:vkdart/vkdart.dart' show VkDartException;

part 'photo.dart';
part 'video.dart';
part 'audio.dart';
part 'document.dart';
part 'link.dart';
part 'market.dart';
part 'market_album.dart';

/// Base class Attachment
///
/// See https://vk.com/dev/objects/attachments
abstract class AttachmentModel {
  // ignore: public_member_api_docs
  AttachmentModel(this.payload);

  /// Payload.
  final Map<String, dynamic> payload;

  /// Attachment type.
  String get type => payload['type'];

  /// Attachment object.
  Map<String, dynamic> get attachmentObject => payload[type];
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
      '$type${ownerId}_$id${accessKey != null ? '_$accessKey' : ''}';
}
