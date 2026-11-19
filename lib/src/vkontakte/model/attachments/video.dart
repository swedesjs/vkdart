import 'package:vkdart/util.dart';
import 'package:vkdart/vkontakte.dart';

/// Модель видео
///
/// См. https://dev.vk.com/ru/reference/objects/video
class VideoAttachmentModel extends CustomAttachmentModel
    with AttachmentLikesMixin, AttachmentRepostsMixin {
  // ignore: public_member_api_docs
  VideoAttachmentModel(super.payload) : super(attachType: 'video');

  /// Название видео.
  String? get title => payload['title'];

  /// Описание видео.
  String? get description => payload['description'];

  /// Продолжительность видео в секундах.
  int? get duration => payload['duration'];

  /// Изображение обложки.
  /// См. https://dev.vk.com/ru/reference/objects/video#image
  List<VideoCoverImageModel> get image => (payload['image'] as List)
      .map((e) => VideoCoverImageModel((e as Map).cast<String, dynamic>()))
      .toList();

  /// Изображение первого кадра.
  /// См. https://vk.com/dev/objects/video#first_frame
  List<VideoFirstFrameImageModel> get firstFrame => (payload['first_frame']
          as List)
      .map((e) => VideoFirstFrameImageModel((e as Map).cast<String, dynamic>()))
      .toList();

  /// Дата создания видео в формате Unix.
  int? get createdAt => payload['date'];

  /// Дата добавления видео пользователем или сообществом в формате Unix.
  int? get addedAt => payload['adding_date'];

  /// Количество просмотров видео.
  int? get viewsCount => payload['views'];

  /// Количество просмотров видео во ВКонтакте, если оно размещено на внешнем ресурсе.
  int? get localViews => payload['local_views'];

  /// Количество комментариев к видео. Поле не возвращается, если комментирование недоступно.
  int? get commentsCount => payload['comments'];

  /// URL страницы с проигрывателем для просмотра видео в браузере.
  /// Поддерживаются Flash и HTML5; проигрыватель всегда подстраивается под размер окна.
  String? get player => payload['player'];

  /// Название платформы (для видео, добавленных с внешних сайтов).
  String? get platformName => payload['platform'];

  /// Может ли пользователь добавить видео себе?
  bool? get isCanAdd => checkBoolInProperty('can_add');

  /// Поле возвращается для приватного видео (например, загруженного в личное сообщение) и всегда содержит 1.
  bool? get isPrivate => checkBoolInProperty('is_private');

  /// Поле возвращается во время обработки видео и всегда содержит 1.
  bool? get isProcessing => checkBoolInProperty('processing');

  /// true, если текущий пользователь добавил объект в закладки.
  bool? get isFavorite => payload['is_favorite'];

  /// Может ли пользователь комментировать видео?
  bool? get isCanComment => checkBoolInProperty('can_comment');

  /// Может ли пользователь редактировать видео?
  bool? get isCanEdit => checkBoolInProperty('can_edit');

  /// Может ли пользователь добавить видео в список «Нравится».
  bool? get isCanLike => checkBoolInProperty('can_like');

  /// Может ли пользователь сделать репост видео?
  bool? get isCanRepost => checkBoolInProperty('can_repost');

  /// Может ли пользователь подписаться на автора видео?
  bool? get isCanSubscribe => checkBoolInProperty('can_subscribe');

  /// Может ли пользователь добавить видео в избранное.
  bool? get isCanAddToFaves => checkBoolInProperty('can_add_to_faves');

  /// Может ли пользователь прикрепить к видео кнопку действия.
  bool? get isCanAttachLink => checkBoolInProperty('can_attach_link');

  /// Ширина видео.
  int? get width => payload['width'];

  /// Высота видео.
  int? get height => payload['height'];

  /// ID пользователя, загрузившего видео в сообщество от имени одного из участников.
  int? get userId => payload['user_id'];

  /// Конвертируется ли видео?
  bool? get isConverting => checkBoolInProperty('converting');

  /// Добавлено ли видео в альбомы пользователя.
  bool? get isAdded => checkBoolInProperty('added');

  /// Подписан ли пользователь на автора видео.
  bool? get isSubscribed => checkBoolInProperty('is_subscribed');

  /// Поле возвращается, если видео воспроизводится по кругу; всегда содержит 1.
  bool? get isRepeat => checkBoolInProperty('repeat');

  /// Тип видео.
  /// Возможные значения: video, music_video, movie
  String? get videoType => payload['type'];

  /// Баланс пожертвований в прямом эфире.
  int? get balance => payload['balance'];

  /// Статус прямой трансляции.
  /// Возможные значения: waiting, started, finished, failed, upcoming.
  String? get liveStatus => payload['live_status'];

  /// Поле возвращается для видео с прямой трансляцией и всегда содержит 1. В этом случае поле продолжительности содержит 0.
  bool? get isBroadcast => checkBoolInProperty('live');

  /// Поле указывает, что трансляция скоро начнётся. Для live = 1.
  bool? get isUpcoming => checkBoolInProperty('upcoming');

  /// Количество зрителей трансляции.
  int? get spectatorsCount => payload['spectators'];
}

/// Модель изображения обложки видео.
///
/// См. https://dev.vk.com/ru/reference/objects/video#image
final class VideoCoverImageModel {
  // ignore: public_member_api_docs
  VideoCoverImageModel(this.videoCoverImageObject);

  /// Данные.
  final Map<String, dynamic> videoCoverImageObject;

  /// URL обложки.
  String get url => videoCoverImageObject['url'];

  /// Ширина обложки.
  int get width => videoCoverImageObject['width'];

  /// Высота обложки.
  int get height => videoCoverImageObject['height'];

  /// Поле возвращается, если изображение дополнено полями; всегда содержит 1.
  bool? get withPadding => checkBoolUtil(videoCoverImageObject['with_padding']);
}

/// Модель изображения первого кадра видео.
///
/// См. https://dev.vk.com/ru/reference/objects/video#first_frame
final class VideoFirstFrameImageModel {
  // ignore: public_member_api_docs
  VideoFirstFrameImageModel(this.firstFrameObject);

  /// Данные.
  final Map<String, dynamic> firstFrameObject;

  /// URL первого кадра.
  String get url => firstFrameObject['url'];

  /// Ширина первого кадра.
  int get width => firstFrameObject['width'];

  /// Высота первого кадра.
  int get height => firstFrameObject['height'];
}
