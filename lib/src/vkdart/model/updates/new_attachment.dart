import 'package:vkdart/model.dart';
import 'package:vkdart/vkdart.dart' show VkDartException;

/// Event Model `new attachment`.
class VkDartNewAttachment with VkDartUpdate {
  // ignore: public_member_api_docs
  VkDartNewAttachment(this.update);

  @override
  final Update update;

  /// Check attachment is photo
  bool get isPhoto => updateType == UpdateType.photo_new;

  /// Check attachment is video
  bool get isVideo => updateType == UpdateType.video_new;

  /// Check attachment is audio
  bool get isAudio => updateType == UpdateType.audio_new;

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

    throw VkDartException('type $updateType is not supported.');
  }
}
