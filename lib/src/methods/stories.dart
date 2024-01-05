import 'package:vkdart/src/api.dart';

/// Методы для работы с историями.
class Stories {
  /// Конструктор.
  Stories(this._api);
  final Api _api;

  /// Allows to hide stories from chosen sources from current user's feed.
  Future<Map<String, dynamic>> banOwner(Map<String, Object> params) =>
      _api.request('stories.banOwner', params);

  /// Allows to delete story.
  Future<Map<String, dynamic>> delete(Map<String, Object> params) =>
      _api.request('stories.delete', params);

  /// Returns stories available for current user.
  Future<Map<String, dynamic>> get(Map<String, Object> params) =>
      _api.request('stories.get', params);

  /// Returns list of sources hidden from current user's feed.
  Future<Map<String, dynamic>> getBanned(Map<String, Object> params) =>
      _api.request('stories.getBanned', params);

  /// Returns story by its ID.
  Future<Map<String, dynamic>> getById(Map<String, Object> params) =>
      _api.request('stories.getById', params);

  // ignore: public_member_api_docs
  Future<Map<String, dynamic>> getDetailedStats(Map<String, Object> params) =>
      _api.request('stories.getDetailedStats', params);

  /// Returns URL for uploading a story with photo.
  Future<Map<String, dynamic>> getPhotoUploadServer(
    Map<String, Object> params,
  ) =>
      _api.request('stories.getPhotoUploadServer', params);

  /// Returns replies to the story.
  Future<Map<String, dynamic>> getReplies(Map<String, Object> params) =>
      _api.request('stories.getReplies', params);

  /// Returns stories available for current user.
  Future<Map<String, dynamic>> getStats(Map<String, Object> params) =>
      _api.request('stories.getStats', params);

  /// Allows to receive URL for uploading story with video.
  Future<Map<String, dynamic>> getVideoUploadServer(
    Map<String, Object> params,
  ) =>
      _api.request('stories.getVideoUploadServer', params);

  /// Returns a list of story viewers.
  Future<Map<String, dynamic>> getViewers(Map<String, Object> params) =>
      _api.request('stories.getViewers', params);

  // ignore: lines_longer_than_80_chars
  /// Hides all replies in the last 24 hours from the user to current user's stories.
  Future<Map<String, dynamic>> hideAllReplies(Map<String, Object> params) =>
      _api.request('stories.hideAllReplies', params);

  /// Hides the reply to the current user's story.
  Future<Map<String, dynamic>> hideReply(Map<String, Object> params) =>
      _api.request('stories.hideReply', params);

  /// Метод сохраняет историю в профиле после её успешной загрузки на сервер.
  Future<Map<String, dynamic>> save(Map<String, Object> params) =>
      _api.request('stories.save', params);

  /// Возвращает результаты поиска по историям.
  Future<Map<String, dynamic>> search(Map<String, Object> params) =>
      _api.request('stories.search', params);

  /// Отправляет фидбек на историю.
  Future<Map<String, dynamic>> sendInteraction(Map<String, Object> params) =>
      _api.request('stories.sendInteraction', params);

  /// Allows to show stories from hidden sources in current user's feed.
  Future<Map<String, dynamic>> unbanOwner(Map<String, Object> params) =>
      _api.request('stories.unbanOwner', params);
}
