// ignore_for_file: avoid_dynamic_calls

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
  Map<String, dynamic>? get preview => attachmentObject['preview'];

  /// Graffiti data.
  Map<String, dynamic>? get previewGraffiti => preview?['graffiti'];

  /// Audio message data.
  Map<String, dynamic>? get previewAudioMessage => preview?['audio_message'];

  /// an array of image copies in different sizes.
  List<PhotoCopyModel> get previewPhotoSizes =>
      (preview?['photo']?['sizes'] as List?)
          ?.map((e) => PhotoCopyModel((e as Map).cast<String, dynamic>()))
          .toList() ??
      const [];

  /// Graffiti file URL;
  String? get previewGraffitiSrc => previewGraffiti?['src'];

  /// graffiti width in px;
  int? get previewGraffitiWidth => previewGraffiti?['width'];

  /// graffiti height in px;
  int? get previewGraffitiHeight => previewGraffiti?['height'];

  /// Audio message duration in seconds.
  int? get previewAudioMessageDuration => previewAudioMessage?['duration'];

  /// Audio message waveform.
  List<int>? get previewAudioMessageWaveform =>
      (previewAudioMessage?['waveform'] as List?)?.cast<int>();

  /// Audio message ling ogg.
  String? get previewAudioMessageLinkOgg => previewAudioMessage?['link_ogg'];

  /// Audio message ling mp3.
  String? get previewAudioMessageLinkMp3 => previewAudioMessage?['link_mp3'];
}
