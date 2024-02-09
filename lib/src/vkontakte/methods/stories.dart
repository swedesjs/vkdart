import 'package:vkdart/vkontakte.dart';

/// Methods for working with stories.
///
/// See https://dev.vk.com/ru/method/stories
class Stories {
  // ignore: public_member_api_docs
  Stories(this._api);
  final Api _api;

  /// Allows to hide stories from chosen sources from current user's feed.
  Future<Object> banOwner(Map<String, dynamic> params) =>
      _api.request('stories.banOwner', params);

  /// Allows to delete story.
  Future<Object> delete(Map<String, dynamic> params) =>
      _api.request('stories.delete', params);

  /// Returns stories available for current user.
  Future<Object> get(Map<String, dynamic> params) =>
      _api.request('stories.get', params);

  /// Returns list of sources hidden from current user's feed.
  Future<Object> getBanned(Map<String, dynamic> params) =>
      _api.request('stories.getBanned', params);

  /// Returns story by its ID.
  Future<Object> getById(Map<String, dynamic> params) =>
      _api.request('stories.getById', params);

  // ignore: public_member_api_docs
  Future<Object> getDetailedStats(Map<String, dynamic> params) =>
      _api.request('stories.getDetailedStats', params);

  /// Returns URL for uploading a story with photo.
  Future<Object> getPhotoUploadServer(Map<String, dynamic> params) =>
      _api.request('stories.getPhotoUploadServer', params);

  /// Returns replies to the story.
  Future<Object> getReplies(Map<String, dynamic> params) =>
      _api.request('stories.getReplies', params);

  /// Returns stories available for current user.
  Future<Object> getStats(Map<String, dynamic> params) =>
      _api.request('stories.getStats', params);

  /// Allows to receive URL for uploading story with video.
  Future<Object> getVideoUploadServer(Map<String, dynamic> params) =>
      _api.request('stories.getVideoUploadServer', params);

  /// Returns a list of story viewers.
  Future<Object> getViewers(Map<String, dynamic> params) =>
      _api.request('stories.getViewers', params);

  /// Hides all replies in the last 24 hours from the user to current user's stories.
  Future<Object> hideAllReplies(Map<String, dynamic> params) =>
      _api.request('stories.hideAllReplies', params);

  /// Hides the reply to the current user's story.
  Future<Object> hideReply(Map<String, dynamic> params) =>
      _api.request('stories.hideReply', params);

  /// The method saves the history in the profile after it is successfully uploaded to the server.
  Future<Object> save(Map<String, dynamic> params) =>
      _api.request('stories.save', params);

  /// Returns the results of the history search.
  Future<Object> search(Map<String, dynamic> params) =>
      _api.request('stories.search', params);

  /// Sends feedback on the story.
  Future<Object> sendInteraction(Map<String, dynamic> params) =>
      _api.request('stories.sendInteraction', params);

  /// Allows to show stories from hidden sources in current user's feed.
  Future<Object> unbanOwner(Map<String, dynamic> params) =>
      _api.request('stories.unbanOwner', params);
}
