import 'package:vkdart/vkontakte.dart';

/// Модель аудиозаписи.
///
/// См. https://dev.vk.com/ru/reference/objects/audio
class AudioAttachmentModel extends CustomAttachmentModel {
  // ignore: public_member_api_docs
  AudioAttachmentModel(super.payload) : super(attachType: 'audio');

  /// Исполнитель.
  String? get artist => payload['artist'];

  /// Название композиции.
  String? get title => payload['title'];

  /// Продолжительность аудиозаписи в секундах.
  int? get duration => payload['duration'];

  /// Ссылка на MP3-файл.
  String? get url => payload['url'];

  /// ID текстового представления аудиозаписи (если доступно).
  int? get lyricsId => payload['lyrics_id'];

  /// ID альбома, в котором находится аудиозапись (если задан).
  int? get albumId => payload['album_id'];

  /// Идентификатор жанра из списка
  /// [audio genres](https://dev.vk.com/ru/reference/objects/audio-genres).
  int? get genreId => payload['genre_id'];

  /// Дата добавления.
  int? get createdAt => payload['date'];

  /// `true`, если включена настройка «Не показывать при поиске».
  /// Если настройка отключена, поле не возвращается.
  bool? get isNoSearch => checkBoolInProperty('no_search');

  /// `true`, если аудиозапись высокого качества.
  bool? get isHq => checkBoolInProperty('is_hq');
}
