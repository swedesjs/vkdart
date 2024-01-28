part of 'attachment.dart';

/// Model Audio.
///
/// See https://dev.vk.com/ru/reference/objects/audio
class AudioAttachmentModel extends CustomAttachmentModel {
  // ignore: public_member_api_docs
  AudioAttachmentModel(super.payload);

  /// A singer.
  String? get artist => attachmentObject['artist'];

  /// Title of the composition.
  String? get title => attachmentObject['title'];

  /// Duration of the audio recording in seconds.
  int? get duration => attachmentObject['duration'];

  /// Link to mp3.
  String? get url => attachmentObject['url'];

  /// Audio text ID (if available).
  int? get lyricsId => attachmentObject['lyrics_id'];

  /// Identifier of the album in which the audio recording is located (if assigned).
  int? get albumId => attachmentObject['album_id'];

  /// Genre identifier from the list of
  /// [audio genres](https://dev.vk.com/ru/reference/objects/audio-genres).
  int? get genreId => attachmentObject['genre_id'];

  /// Date added.
  int? get createdAt => attachmentObject['date'];

  /// `true` if the “Do not display during search” option is enabled.
  /// If the option is disabled, the field is not returned.
  bool? get isNoSearch => _checkBoolInProperty('no_search');

  /// `true` if the audio is high quality.
  bool? get isHq => _checkBoolInProperty('is_hq');
}
