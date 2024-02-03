import 'package:vkdart/model.dart';

/// The model `group change` update.
///
/// See:
/// - https://dev.vk.com/ru/api/community-events/json-schema#group_officers_edit
/// - https://dev.vk.com/ru/api/community-events/json-schema#group_change_settings
/// - https://dev.vk.com/ru/api/community-events/json-schema#group_change_photo
class VkDartGroupChangeUpdate with VkDartUpdate {
  // ignore: public_member_api_docs
  VkDartGroupChangeUpdate(this.update);

  @override
  final Update update;

  /// Check is group edit.
  bool get isEdit => updateType == UpdateType.group_officers_edit;

  /// Check is group change settings.
  bool get isSettings => updateType == UpdateType.group_change_settings;

  /// Check is group change photo.
  bool get isPhoto => updateType == UpdateType.group_change_photo;

  /// User ID.
  int get userId => payload['user_id'];

  /// The ID of the supervisor who made the changes.
  int? get adminId => payload['admin_id'];

  /// The old level of authority.
  int? get levelOld => payload['level_old'];

  /// The new level of authority.
  int? get levelNew => payload['level_new'];

  /// See https://dev.vk.com/ru/api/community-events/json-schema#group_change_settings
  Map<String, dynamic>? get changes => payload['changes'];

  /// Title change.
  (Object, Object)? get changeTitle => _changeToRecord(changes?['title']);

  /// Description change.
  (Object, Object)? get changeDescription =>
      _changeToRecord(changes?['description']);

  /// Changing the group type.
  (Object, Object)? get changeAccess => _changeToRecord(changes?['access']);

  /// Changing the short address of the group.
  (Object, Object)? get changeScreenName =>
      _changeToRecord(changes?['screen_name']);

  /// Сhanging the categories of the public page.
  (Object, Object)? get changePublicCategory =>
      _changeToRecord(changes?['public_category']);

  /// Сhanging the subcategory of the public page.
  (Object, Object)? get changePublicSubcategory =>
      _changeToRecord(changes?['public_subcategory']);

  /// Changing the age restrictions.
  (Object, Object)? get changeAgeLimits =>
      _changeToRecord(changes?['age_limits']);

  /// Changing the website.
  (Object, Object)? get changeWebsite => _changeToRecord(changes?['website']);

  // ignore: public_member_api_docs
  (Object, Object)? get changeEnableStatusDefault =>
      _changeToRecord(changes?['enable_status_default']);

  /// Changing access to the audio section.
  (Object, Object)? get changeEnableAudio =>
      _changeToRecord(changes?['enable_audio']);

  /// Changing access to the photos section.
  (Object, Object)? get changeEnablePhoto =>
      _changeToRecord(changes?['enable_photo']);

  /// Changing access to the video section.
  (Object, Object)? get changeEnableVideo =>
      _changeToRecord(changes?['enable_video']);

  /// Changing access to the market section.
  (Object, Object)? get changeEnableMarket =>
      _changeToRecord(changes?['enable_market']);

  /// Change photo.
  (Object, Object)? get changePhotos => _changeToRecord(changes?['photos']);

  /// Change video.
  (Object, Object)? get changeVideo => _changeToRecord(changes?['video']);

  /// Change docs.
  (Object, Object)? get changeDocs => _changeToRecord(changes?['docs']);

  /// Change topics.
  (Object, Object)? get changeTopics => _changeToRecord(changes?['topics']);

  /// Change audio.
  (Object, Object)? get changeAudio => _changeToRecord(changes?['audio']);

  /// Change city ID.
  (Object, Object)? get changeCityId => _changeToRecord(changes?['city_id']);

  /// Change category v2.
  (Object, Object)? get changeCategoryV2 =>
      _changeToRecord(changes?['category_v2']);

  /// Change event group ID.
  (Object, Object)? get changeEventGroupId =>
      _changeToRecord(changes?['event_group_id']);

  (Object, Object)? _changeToRecord(Map<String, dynamic>? value) =>
      value != null ? (value['old_value'], value['new_value']) : null;

  /// Photo.
  /// It is returned if [isPhoto] = true.
  PhotoAttachmentModel? get photo =>
      payload['photo'] != null ? PhotoAttachmentModel(payload['photo']) : null;
}
