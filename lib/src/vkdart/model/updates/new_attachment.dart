import 'package:vkdart/model.dart';
import 'package:vkdart/vkdart.dart' show VkDartException;
import 'package:vkdart/vkontakte.dart';

/// Event Model `new attachment`.
///
/// See:
/// - PhotoNew: https://dev.vk.com/ru/api/community-events/json-schema#photo_new
/// - VideoNew: https://dev.vk.com/ru/api/community-events/json-schema#video_new
/// - AudioNew: https://dev.vk.com/ru/api/community-events/json-schema#audio_new
class VkDartNewAttachmentUpdate {
  // ignore: public_member_api_docs
  final VkDartUpdate update;

  // ignore: public_member_api_docs
  VkDartNewAttachmentUpdate(this.update);

  /// Check attachment is photo
  bool get isPhoto => update.type == UpdateType.photo_new;

  /// Check attachment is video
  bool get isVideo => update.type == UpdateType.video_new;

  /// Check attachment is audio
  bool get isAudio => update.type == UpdateType.audio_new;

  /// Attachment.
  AttachmentModel get attachment {
    final attachmentPayload = update.object;

    if (isPhoto) {
      return PhotoAttachmentModel(attachmentPayload);
    }

    if (isVideo) {
      return VideoAttachmentModel(attachmentPayload);
    }

    if (isAudio) {
      return AudioAttachmentModel(attachmentPayload);
    }

    throw VkDartException('type ${update.type} is not supported.');
  }
}
