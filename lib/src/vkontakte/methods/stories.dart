import 'package:vkdart/vkontakte.dart';

/// Methods for working with stories.
///
/// See https://dev.vk.com/ru/method/stories
class Stories {
  // ignore: public_member_api_docs
  Stories(this._api);
  final Api _api;

  /// Allows to hide stories from chosen sources from current user's feed.
  Future<ApiResponse<T>> banOwner<T>(Map<String, Object> params) =>
      _api.request<T>('stories.banOwner', params);

  /// Allows to delete story.
  Future<ApiResponse<T>> delete<T>(Map<String, Object> params) =>
      _api.request<T>('stories.delete', params);

  /// Returns stories available for current user.
  Future<ApiResponse<T>> get<T>(Map<String, Object> params) =>
      _api.request<T>('stories.get', params);

  /// Returns list of sources hidden from current user's feed.
  Future<ApiResponse<T>> getBanned<T>(Map<String, Object> params) =>
      _api.request<T>('stories.getBanned', params);

  /// Returns story by its ID.
  Future<ApiResponse<T>> getById<T>(Map<String, Object> params) =>
      _api.request<T>('stories.getById', params);

  // ignore: public_member_api_docs
  Future<ApiResponse<T>> getDetailedStats<T>(Map<String, Object> params) =>
      _api.request<T>('stories.getDetailedStats', params);

  /// Returns URL for uploading a story with photo.
  Future<ApiResponse<T>> getPhotoUploadServer<T>(Map<String, Object> params) =>
      _api.request<T>('stories.getPhotoUploadServer', params);

  /// Returns replies to the story.
  Future<ApiResponse<T>> getReplies<T>(Map<String, Object> params) =>
      _api.request<T>('stories.getReplies', params);

  /// Returns stories available for current user.
  Future<ApiResponse<T>> getStats<T>(Map<String, Object> params) =>
      _api.request<T>('stories.getStats', params);

  /// Allows to receive URL for uploading story with video.
  Future<ApiResponse<T>> getVideoUploadServer<T>(Map<String, Object> params) =>
      _api.request<T>('stories.getVideoUploadServer', params);

  /// Returns a list of story viewers.
  Future<ApiResponse<T>> getViewers<T>(Map<String, Object> params) =>
      _api.request<T>('stories.getViewers', params);

  /// Hides all replies in the last 24 hours from the user to current user's stories.
  Future<ApiResponse<T>> hideAllReplies<T>(Map<String, Object> params) =>
      _api.request<T>('stories.hideAllReplies', params);

  /// Hides the reply to the current user's story.
  Future<ApiResponse<T>> hideReply<T>(Map<String, Object> params) =>
      _api.request<T>('stories.hideReply', params);

  /// The method saves the history in the profile after it is successfully uploaded to the server.
  Future<ApiResponse<T>> save<T>(Map<String, Object> params) =>
      _api.request<T>('stories.save', params);

  /// Returns the results of the history search.
  Future<ApiResponse<T>> search<T>(Map<String, Object> params) =>
      _api.request<T>('stories.search', params);

  /// Sends feedback on the story.
  Future<ApiResponse<T>> sendInteraction<T>(Map<String, Object> params) =>
      _api.request<T>('stories.sendInteraction', params);

  /// Allows to show stories from hidden sources in current user's feed.
  Future<ApiResponse<T>> unbanOwner<T>(Map<String, Object> params) =>
      _api.request<T>('stories.unbanOwner', params);
}
