part of 'attachment.dart';

/// Model Document.
///
/// See https://vk.com/dev/objects/doc
class DocumentAttachmentModel extends CustomAttachmentModel {
  // ignore: public_member_api_docs
  DocumentAttachmentModel(super.payload);

  /// Title of the document.
  String? get title => attachmentObject['title'];

  /// Size of the document in bytes.
  int? get size => attachmentObject['size'];

  /// MIME type of the document.
  String? get ext => attachmentObject['ext'];

  /// URL of the document.
  String? get url => attachmentObject['url'];

  /// Date when the document has been uploaded in Unixtime.
  int? get date => attachmentObject['date'];

  /// Document type.
  int? get documentType => attachmentObject['type'];

  /// File preview information.
  ///
  /// See https://vk.com/dev/objects/doc#preview
  DocumentPreviewModel? get preview => attachmentObject['preview'] != null
      ? DocumentPreviewModel(attachmentObject['preview'])
      : null;
}

/// Model Document Preview.
///
/// See https://vk.com/dev/objects/doc#preview
final class DocumentPreviewModel {
  // ignore: public_member_api_docs
  DocumentPreviewModel(this.previewObject);

  /// Payload.
  final Map<String, dynamic> previewObject;

  /// preview images.
  DocumentPreviewPhotoModel? get photo => previewObject['photo'] != null
      ? DocumentPreviewPhotoModel(previewObject['photo'])
      : null;

  /// graffiti data.
  DocumentPreviewGraffitiModel? get graffiti =>
      previewObject['graffiti'] != null
          ? DocumentPreviewGraffitiModel(previewObject['graffiti'])
          : null;

  /// audio message data.
  DocumentPreviewAudioMessageModel? get audioMessage =>
      previewObject['audio_message'] != null
          ? DocumentPreviewAudioMessageModel(previewObject['audio_message'])
          : null;
}

/// Model Document Preview.
/// Field [DocumentPreviewModel.photo].
///
/// See https://vk.com/dev/objects/doc#preview
final class DocumentPreviewPhotoModel {
  // ignore: public_member_api_docs
  DocumentPreviewPhotoModel(this.photoObject);

  /// Payload.
  final Map<String, dynamic> photoObject;

  /// an array of image copies in different sizes.
  List<PhotoCopyModel> get sizes => (photoObject['sizes'] as List)
      .map((e) => PhotoCopyModel((e as Map).cast<String, dynamic>()))
      .toList();
}

/// Model Document Preview.
/// Field [DocumentPreviewModel.graffiti].
///
/// See https://vk.com/dev/objects/doc#preview
final class DocumentPreviewGraffitiModel {
  // ignore: public_member_api_docs
  DocumentPreviewGraffitiModel(this.graffitiObject);

  /// Payload.
  final Map<String, dynamic> graffitiObject;

  /// Graffiti file URL;
  String? get src => graffitiObject['src'];

  /// image width in px;
  int? get width => graffitiObject['width'];

  /// image height in px;s
  int? get height => graffitiObject['height'];
}

/// Model Document Preview.
/// Field [DocumentPreviewModel.audioMessage].
///
/// See https://vk.com/dev/objects/doc#preview
final class DocumentPreviewAudioMessageModel {
  // ignore: public_member_api_docs
  DocumentPreviewAudioMessageModel(this.audioMessageObject);

  /// Payload.
  final Map<String, dynamic> audioMessageObject;

  /// Audio message duration in seconds.
  int? get duration => audioMessageObject['duration'];

  /// Waveform as a list of integers.
  List<int>? get waveform =>
      (audioMessageObject['waveform'] as List?)?.cast<int>();

  /// Ogg format link.
  String? get linkOgg => audioMessageObject['link_ogg'];

  /// Mp3 format link.
  String? get linkMp3 => audioMessageObject['link_mp3'];
}
