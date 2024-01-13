part of '../../methods.dart';

/// Методы для работы с историями.
class Stories {
  /// Конструктор.
  Stories(this._api);
  final Api _api;

  /// Allows to hide stories from chosen sources from current user's feed.
  Future<ApiResponse<T>> banOwner<T>(MethodTypeParams params) =>
      _api.request<T>('stories.banOwner', params);

  /// Allows to delete story.
  Future<ApiResponse<T>> delete<T>(MethodTypeParams params) =>
      _api.request<T>('stories.delete', params);

  /// Returns stories available for current user.
  Future<ApiResponse<T>> get<T>(MethodTypeParams params) =>
      _api.request<T>('stories.get', params);

  /// Returns list of sources hidden from current user's feed.
  Future<ApiResponse<T>> getBanned<T>(MethodTypeParams params) =>
      _api.request<T>('stories.getBanned', params);

  /// Returns story by its ID.
  Future<ApiResponse<T>> getById<T>(MethodTypeParams params) =>
      _api.request<T>('stories.getById', params);

  // ignore: public_member_api_docs
  Future<ApiResponse<T>> getDetailedStats<T>(MethodTypeParams params) =>
      _api.request<T>('stories.getDetailedStats', params);

  /// Returns URL for uploading a story with photo.
  Future<ApiResponse<T>> getPhotoUploadServer<T>(MethodTypeParams params) =>
      _api.request<T>('stories.getPhotoUploadServer', params);

  /// Returns replies to the story.
  Future<ApiResponse<T>> getReplies<T>(MethodTypeParams params) =>
      _api.request<T>('stories.getReplies', params);

  /// Returns stories available for current user.
  Future<ApiResponse<T>> getStats<T>(MethodTypeParams params) =>
      _api.request<T>('stories.getStats', params);

  /// Allows to receive URL for uploading story with video.
  Future<ApiResponse<T>> getVideoUploadServer<T>(MethodTypeParams params) =>
      _api.request<T>('stories.getVideoUploadServer', params);

  /// Returns a list of story viewers.
  Future<ApiResponse<T>> getViewers<T>(MethodTypeParams params) =>
      _api.request<T>('stories.getViewers', params);

  /// Hides all replies in the last 24 hours from the user to current user's stories.
  Future<ApiResponse<T>> hideAllReplies<T>(MethodTypeParams params) =>
      _api.request<T>('stories.hideAllReplies', params);

  /// Hides the reply to the current user's story.
  Future<ApiResponse<T>> hideReply<T>(MethodTypeParams params) =>
      _api.request<T>('stories.hideReply', params);

  /// Метод сохраняет историю в профиле после её успешной загрузки на сервер.
  Future<ApiResponse<T>> save<T>(MethodTypeParams params) =>
      _api.request<T>('stories.save', params);

  /// Возвращает результаты поиска по историям.
  Future<ApiResponse<T>> search<T>(MethodTypeParams params) =>
      _api.request<T>('stories.search', params);

  /// Отправляет фидбек на историю.
  Future<ApiResponse<T>> sendInteraction<T>(MethodTypeParams params) =>
      _api.request<T>('stories.sendInteraction', params);

  /// Allows to show stories from hidden sources in current user's feed.
  Future<ApiResponse<T>> unbanOwner<T>(MethodTypeParams params) =>
      _api.request<T>('stories.unbanOwner', params);
}
