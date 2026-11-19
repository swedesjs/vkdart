import 'package:vkdart/vkontakte.dart';

/// Модель документа.
///
/// См. https://dev.vk.com/ru/reference/objects/doc
class DocumentAttachmentModel extends CustomAttachmentModel {
  // ignore: public_member_api_docs
  DocumentAttachmentModel(super.payload) : super(attachType: 'doc');

  /// Название документа.
  String? get title => payload['title'];

  /// Размер документа в байтах.
  int? get size => payload['size'];

  /// MIME-тип документа.
  String? get ext => payload['ext'];

  /// URL документа.
  String? get url => payload['url'];

  /// Дата загрузки документа в формате Unix.
  int? get createdAt => payload['date'];

  /// Тип документа.
  int? get documentType => payload['type'];

  Map<String, dynamic>? get _preview => payload['preview'];
  Map<String, dynamic>? get _previewGraffiti => _preview?['graffiti'];
  Map<String, dynamic>? get _previewAudioMessage => _preview?['audio_message'];

  /// массив копий изображения разных размеров.
  List<PhotoCopyModel>? get previewPhotoSizes =>
      (_preview?['photo']?['sizes'] as List?)
          ?.map((e) => PhotoCopyModel((e as Map).cast<String, dynamic>()))
          .toList();

  /// URL файла граффити;
  String? get previewGraffitiSrc => _previewGraffiti?['src'];

  /// ширина граффити в пикселях;
  int? get previewGraffitiWidth => _previewGraffiti?['width'];

  /// высота граффити в пикселях;
  int? get previewGraffitiHeight => _previewGraffiti?['height'];

  /// Продолжительность голосового сообщения в секундах.
  int? get previewAudioMessageDuration => _previewAudioMessage?['duration'];

  /// Форма звуковой волны голосового сообщения.
  List<int>? get previewAudioMessageWaveform =>
      (_previewAudioMessage?['waveform'] as List?)?.cast<int>();

  /// Ссылка на голосовое сообщение в формате OGG.
  String? get previewAudioMessageLinkOgg => _previewAudioMessage?['link_ogg'];

  /// Ссылка на голосовое сообщение в формате MP3.
  String? get previewAudioMessageLinkMp3 => _previewAudioMessage?['link_mp3'];
}
