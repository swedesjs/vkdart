part of '../../methods.dart';

/// Методы для работы с историями.
class Stories {
  /// Конструктор.
  Stories(this._api);
  final Api _api;

  /// Allows to hide stories from chosen sources from current user's feed.
  MethodTypeReturn banOwner(MethodTypeParams params) =>
      _api.request('stories.banOwner', params);

  /// Allows to delete story.
  MethodTypeReturn delete(MethodTypeParams params) =>
      _api.request('stories.delete', params);

  /// Returns stories available for current user.
  MethodTypeReturn get(MethodTypeParams params) =>
      _api.request('stories.get', params);

  /// Returns list of sources hidden from current user's feed.
  MethodTypeReturn getBanned(MethodTypeParams params) =>
      _api.request('stories.getBanned', params);

  /// Returns story by its ID.
  MethodTypeReturn getById(MethodTypeParams params) =>
      _api.request('stories.getById', params);

  // ignore: public_member_api_docs
  MethodTypeReturn getDetailedStats(MethodTypeParams params) =>
      _api.request('stories.getDetailedStats', params);

  /// Returns URL for uploading a story with photo.
  MethodTypeReturn getPhotoUploadServer(MethodTypeParams params) =>
      _api.request('stories.getPhotoUploadServer', params);

  /// Returns replies to the story.
  MethodTypeReturn getReplies(MethodTypeParams params) =>
      _api.request('stories.getReplies', params);

  /// Returns stories available for current user.
  MethodTypeReturn getStats(MethodTypeParams params) =>
      _api.request('stories.getStats', params);

  /// Allows to receive URL for uploading story with video.
  MethodTypeReturn getVideoUploadServer(MethodTypeParams params) =>
      _api.request('stories.getVideoUploadServer', params);

  /// Returns a list of story viewers.
  MethodTypeReturn getViewers(MethodTypeParams params) =>
      _api.request('stories.getViewers', params);

  // ignore: lines_longer_than_80_chars
  /// Hides all replies in the last 24 hours from the user to current user's stories.
  MethodTypeReturn hideAllReplies(MethodTypeParams params) =>
      _api.request('stories.hideAllReplies', params);

  /// Hides the reply to the current user's story.
  MethodTypeReturn hideReply(MethodTypeParams params) =>
      _api.request('stories.hideReply', params);

  /// Метод сохраняет историю в профиле после её успешной загрузки на сервер.
  MethodTypeReturn save(MethodTypeParams params) =>
      _api.request('stories.save', params);

  /// Возвращает результаты поиска по историям.
  MethodTypeReturn search(MethodTypeParams params) =>
      _api.request('stories.search', params);

  /// Отправляет фидбек на историю.
  MethodTypeReturn sendInteraction(MethodTypeParams params) =>
      _api.request('stories.sendInteraction', params);

  /// Allows to show stories from hidden sources in current user's feed.
  MethodTypeReturn unbanOwner(MethodTypeParams params) =>
      _api.request('stories.unbanOwner', params);
}
