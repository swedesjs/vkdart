import 'package:vkdart/model.dart';
import 'package:vkdart/vkontakte.dart';

/// Модель обновления `group change`.
///
/// См.:
/// - https://dev.vk.com/ru/api/community-events/json-schema#group_officers_edit
/// - https://dev.vk.com/ru/api/community-events/json-schema#group_change_settings
/// - https://dev.vk.com/ru/api/community-events/json-schema#group_change_photo
class VkDartGroupChangeUpdate {
  // ignore: public_member_api_docs
  final VkDartUpdate update;

  // ignore: public_member_api_docs
  VkDartGroupChangeUpdate(this.update);

  /// Проверяет, было ли изменено сообщество.
  bool get isEdit => update.type == UpdateType.group_officers_edit;

  /// Проверяет, изменились ли настройки сообщества.
  bool get isSettings => update.type == UpdateType.group_change_settings;

  /// Проверяет, изменена ли фотография сообщества.
  bool get isPhoto => update.type == UpdateType.group_change_photo;

  /// ID пользователя.
  int get userId => update.object['user_id'];

  /// ID руководителя, внесшего изменения.
  int? get adminId => update.object['admin_id'];

  /// Прежний уровень полномочий.
  int? get levelOld => update.object['level_old'];

  /// Новый уровень полномочий.
  int? get levelNew => update.object['level_new'];

  /// См. https://dev.vk.com/ru/api/community-events/json-schema#group_change_settings
  Map<String, dynamic>? get changes => update.object['changes'];

  /// Изменение названия.
  (Object, Object)? get changeTitle => _changeToRecord(changes?['title']);

  /// Изменение описания.
  (Object, Object)? get changeDescription =>
      _changeToRecord(changes?['description']);

  /// Изменение типа сообщества.
  (Object, Object)? get changeAccess => _changeToRecord(changes?['access']);

  /// Изменение короткого адреса сообщества.
  (Object, Object)? get changeScreenName =>
      _changeToRecord(changes?['screen_name']);

  /// Изменение категорий публичной страницы.
  (Object, Object)? get changePublicCategory =>
      _changeToRecord(changes?['public_category']);

  /// Изменение подкатегории публичной страницы.
  (Object, Object)? get changePublicSubcategory =>
      _changeToRecord(changes?['public_subcategory']);

  /// Изменение возрастных ограничений.
  (Object, Object)? get changeAgeLimits =>
      _changeToRecord(changes?['age_limits']);

  /// Изменение сайта.
  (Object, Object)? get changeWebsite => _changeToRecord(changes?['website']);

  // ignore: public_member_api_docs
  (Object, Object)? get changeEnableStatusDefault =>
      _changeToRecord(changes?['enable_status_default']);

  /// Изменение доступа к разделу аудиозаписей.
  (Object, Object)? get changeEnableAudio =>
      _changeToRecord(changes?['enable_audio']);

  /// Изменение доступа к разделу фотографий.
  (Object, Object)? get changeEnablePhoto =>
      _changeToRecord(changes?['enable_photo']);

  /// Изменение доступа к разделу видео.
  (Object, Object)? get changeEnableVideo =>
      _changeToRecord(changes?['enable_video']);

  /// Изменение доступа к разделу товаров.
  (Object, Object)? get changeEnableMarket =>
      _changeToRecord(changes?['enable_market']);

  /// Изменение фотографии.
  (Object, Object)? get changePhotos => _changeToRecord(changes?['photos']);

  /// Изменение видео.
  (Object, Object)? get changeVideo => _changeToRecord(changes?['video']);

  /// Изменение документов.
  (Object, Object)? get changeDocs => _changeToRecord(changes?['docs']);

  /// Изменение обсуждений.
  (Object, Object)? get changeTopics => _changeToRecord(changes?['topics']);

  /// Изменение аудиозаписей.
  (Object, Object)? get changeAudio => _changeToRecord(changes?['audio']);

  /// Изменение ID города.
  (Object, Object)? get changeCityId => _changeToRecord(changes?['city_id']);

  /// Изменение категории v2.
  (Object, Object)? get changeCategoryV2 =>
      _changeToRecord(changes?['category_v2']);

  /// Изменение ID группы событий.
  (Object, Object)? get changeEventGroupId =>
      _changeToRecord(changes?['event_group_id']);

  (Object, Object)? _changeToRecord(Map<String, dynamic>? value) =>
      value != null ? (value['old_value'], value['new_value']) : null;

  /// Фотография.
  /// Возвращается, если [isPhoto] = true.
  PhotoAttachmentModel? get photo => update.object['photo'] != null
      ? PhotoAttachmentModel(update.object['photo'])
      : null;
}
