import 'package:vkdart/vkontakte.dart';

/// Model Document.
///
/// See https://dev.vk.com/ru/reference/objects/doc
class DocumentAttachmentModel extends CustomAttachmentModel {
  // ignore: public_member_api_docs
  DocumentAttachmentModel(super.payload) : super(attachType: 'doc');

  /// Title of the document.
  String? get title => payload['title'];

  /// Size of the document in bytes.
  int? get size => payload['size'];

  /// MIME type of the document.
  String? get ext => payload['ext'];

  /// URL of the document.
  String? get url => payload['url'];

  /// Date when the document has been uploaded in Unixtime.
  int? get createdAt => payload['date'];

  /// Document type.
  int? get documentType => payload['type'];

  Map<String, dynamic>? get _preview => payload['preview'];
  Map<String, dynamic>? get _previewGraffiti => _preview?['graffiti'];
  Map<String, dynamic>? get _previewAudioMessage => _preview?['audio_message'];

  /// an array of image copies in different sizes.
  List<PhotoCopyModel>? get previewPhotoSizes =>
      (_preview?['photo']?['sizes'] as List?)
          ?.map((e) => PhotoCopyModel((e as Map).cast<String, dynamic>()))
          .toList();

  /// Graffiti file URL;
  String? get previewGraffitiSrc => _previewGraffiti?['src'];

  /// graffiti width in px;
  int? get previewGraffitiWidth => _previewGraffiti?['width'];

  /// graffiti height in px;
  int? get previewGraffitiHeight => _previewGraffiti?['height'];

  /// Audio message duration in seconds.
  int? get previewAudioMessageDuration => _previewAudioMessage?['duration'];

  /// Audio message waveform.
  List<int>? get previewAudioMessageWaveform =>
      (_previewAudioMessage?['waveform'] as List?)?.cast<int>();

  /// Audio message ling ogg.
  String? get previewAudioMessageLinkOgg => _previewAudioMessage?['link_ogg'];

  /// Audio message ling mp3.
  String? get previewAudioMessageLinkMp3 => _previewAudioMessage?['link_mp3'];
}
