import 'package:vkdart/util.dart';
import 'package:vkdart/vkontakte.dart';

/// Модель записи на стене.
///
/// См. https://dev.vk.com/ru/reference/objects/wall
class WallAttachmentModel extends CustomAttachmentModel
    with AttachmentLikesMixin, AttachmentRepostsMixin {
  // ignore: public_member_api_docs
  WallAttachmentModel(super.payload) : super(attachType: 'wall');

  @override
  int get ownerId => payload['owner_id'] ?? payload['to_id'];

  /// ID автора записи (от имени которого она опубликована).
  int? get fromId => payload['from_id'];

  /// ID администратора, опубликовавшего запись (возвращается только для сообществ при запросе с ключом доступа администратора).
  /// Возвращается для записей, опубликованных менее 24 часов назад.
  int? get createdUserId => payload['created_by'];

  /// Время публикации записи в формате Unix.
  int? get createdAt => payload['date'];

  /// Текст записи на стене.
  String? get text => payload['text'];

  /// ID владельца записи, в ответ на которую оставлена текущая.
  int? get replyOwnerId => payload['reply_owner_id'];

  /// ID записи, на которую оставлена текущая.
  int? get replyPostId => payload['reply_post_id'];

  /// `1`, если запись создана с параметром «Только для друзей».
  bool? get isFriendsOnly => checkBoolInProperty('friends_only');

  Map<String, dynamic>? get _comments => payload['comments'];
  Map<String, dynamic>? get _copyright => payload['copyright'];

  /// количество комментариев;
  int? get commentsCount => _comments?['count'];

  /// информация о том, может ли текущий пользователь комментировать запись;
  bool? get isCommentsCanPost => checkBoolUtil(_comments?['can_post']);

  /// информация о том, могут ли сообщества комментировать запись;
  bool? get isCommentsGroupsCanPost =>
      checkBoolUtil(_comments?['groups_can_post']);

  /// Может ли текущий пользователь закрыть комментарии к записи;
  bool? get isCommentsCanClose => checkBoolUtil(_comments?['can_close']);

  /// может ли текущий пользователь открыть комментарии к записи.
  bool? get isCommentsCanOpen => checkBoolUtil(_comments?['can_open']);

  // ignore: public_member_api_docs
  int get copyrightId => _copyright?['id'];
  // ignore: public_member_api_docs
  String? get copyrightLink => _copyright?['link'];
  // ignore: public_member_api_docs
  String? get copyrightName => _copyright?['name'];
  // ignore: public_member_api_docs
  String? get copyrightType => _copyright?['type'];

  /// количество просмотров стены.
  int? get viewsCount => payload['views']?['count'];

  /// Тип записи может принимать значения: post, `copy`, `reply`, `postpone`, `suggest`.
  String? get postType => payload['post_type'];

  /// Информация о способе размещения записи.
  /// См. https://vk.com/dev/objects/wall#post_source
  Map<String, dynamic>? get postSource => payload['post_source'];

  /// Массив объектов прикреплённых к записи медиафайлов: фотографий, документов, видео и других.
  /// См. https://dev.vk.com/ru/reference/objects/wall#attachments
  List<AttachmentModel> get attachments =>
      transformAttachments((payload['attachments'] as List?)
              ?.map((e) => (e as Map).cast<String, dynamic>())
              .toList() ??
          const []);

  /// тип места;
  String? get geoType => payload['geo']?['type'];

  /// координаты местоположения;
  String? get geoCoordinates => payload['geo']?['coordinates'];

  /// описание места (если добавлено).
  /// См. https://dev.vk.com/ru/reference/objects/wall#geo
  Map<String, dynamic>? get geoPlace => payload['geo']?['place'];

  /// ID автора, если запись опубликована от имени сообщества и подписана пользователем;
  int? get signerId => payload['signer_id'];

  /// Массив с историей репостов записи.
  /// Возвращается только для записи-репоста.
  /// Каждый объект массива представляет собой запись стандартного формата.
  List<WallAttachmentModel>? get copyHistory =>
      (payload['copy_history'] as List?)
          ?.map((e) => WallAttachmentModel((e as Map).cast<String, dynamic>()))
          .toList();

  /// Информация о том, может ли текущий пользователь закрепить запись.
  bool? get isCanPin => checkBoolInProperty('can_pin');

  /// Информация о том, может ли текущий пользователь удалить запись.
  bool? get isCanDelete => checkBoolInProperty('can_delete');

  /// Информация о том, может ли текущий пользователь редактировать запись.
  bool? get isCanEdit => checkBoolInProperty('can_edit');

  /// Информация о том, что запись закреплена.
  bool? get isPinned => checkBoolInProperty('is_pinned');

  /// Информация о том, содержит ли запись отметку «реклама».
  bool? get isMarkedAsAds => checkBoolInProperty('marked_as_ads');

  /// `true`, если текущий пользователь добавил объект в закладки.
  bool? get isFavorite => payload['is_favorite'];

  /// Информация о записи VK Donut:
  ///
  /// См. https://dev.vk.com/ru/reference/objects/wall#donut
  Map<String, dynamic>? get donut => payload['donut'];

  /// ID отложенной записи.
  /// Это поле возвращается, если запись была опубликована по расписанию.
  int? get postponedId => payload['postponed_id'];
}
