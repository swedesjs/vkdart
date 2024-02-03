import 'package:vkdart/vkontakte.dart';

/// Methods for working with video recordings.
///
/// See https://dev.vk.com/ru/method/video
class Video {
  // ignore: public_member_api_docs
  Video(this._api);
  final Api _api;

  /// Adds a video to a user or community page.
  Future<ApiResponse<T>> add<T>(Map<String, Object> params) =>
      _api.request<T>('video.add', params);

  /// Creates an empty album for videos.
  Future<ApiResponse<T>> addAlbum<T>(Map<String, Object> params) =>
      _api.request<T>('video.addAlbum', params);

  /// Add a video to an album.
  Future<ApiResponse<T>> addToAlbum<T>(Map<String, Object> params) =>
      _api.request<T>('video.addToAlbum', params);

  /// Adds a new comment on a video.
  Future<ApiResponse<T>> createComment<T>(Map<String, Object> params) =>
      _api.request<T>('video.createComment', params);

  /// Deletes a video from a user or community page.
  Future<ApiResponse<T>> delete<T>(Map<String, Object> params) =>
      _api.request<T>('video.delete', params);

  /// Deletes a video album.
  Future<ApiResponse<T>> deleteAlbum<T>(Map<String, Object> params) =>
      _api.request<T>('video.deleteAlbum', params);

  /// Deletes a comment on a video.
  Future<ApiResponse<T>> deleteComment<T>(Map<String, Object> params) =>
      _api.request<T>('video.deleteComment', params);

  /// Edits information about a video on a user or community page.
  Future<ApiResponse<T>> edit<T>(Map<String, Object> params) =>
      _api.request<T>('video.edit', params);

  /// Edits the title of a video album.
  Future<ApiResponse<T>> editAlbum<T>(Map<String, Object> params) =>
      _api.request<T>('video.editAlbum', params);

  /// Edits the text of a comment on a video.
  Future<ApiResponse<T>> editComment<T>(Map<String, Object> params) =>
      _api.request<T>('video.editComment', params);

  /// Returns detailed information about videos.
  Future<ApiResponse<T>> get<T>(Map<String, Object> params) =>
      _api.request<T>('video.get', params);

  /// Returns video album info
  Future<ApiResponse<T>> getAlbumById<T>(Map<String, Object> params) =>
      _api.request<T>('video.getAlbumById', params);

  /// Returns a list of video albums owned by a user or community.
  Future<ApiResponse<T>> getAlbums<T>(Map<String, Object> params) =>
      _api.request<T>('video.getAlbums', params);

  /// Get a list of albums.
  Future<ApiResponse<T>> getAlbumsByVideo<T>(Map<String, Object> params) =>
      _api.request<T>('video.getAlbumsByVideo', params);

  /// Returns a list of comments on a video.
  Future<ApiResponse<T>> getComments<T>(Map<String, Object> params) =>
      _api.request<T>('video.getComments', params);

  // ignore: public_member_api_docs
  Future<ApiResponse<T>> getLongPollServer<T>(Map<String, Object> params) =>
      _api.request<T>('video.getLongPollServer', params);

  /// Search for a video by tag.
  Future<ApiResponse<T>> getNewTags<T>(Map<String, Object> params) =>
      _api.request<T>('video.getNewTags', params);

  /// Returns the tags of the video recording.
  Future<ApiResponse<T>> getTags<T>(Map<String, Object> params) =>
      _api.request<T>('video.getTags', params);

  // ignore: public_member_api_docs
  Future<ApiResponse<T>> liveGetCategories<T>(Map<String, Object> params) =>
      _api.request<T>('video.liveGetCategories', params);

  // ignore: public_member_api_docs
  Future<ApiResponse<T>> moveToAlbum<T>(Map<String, Object> params) =>
      _api.request<T>('video.moveToAlbum', params);

  // ignore: public_member_api_docs
  Future<ApiResponse<T>> putTag<T>(Map<String, Object> params) =>
      _api.request<T>('video.putTag', params);

  /// Delete the video from the album.
  Future<ApiResponse<T>> removeFromAlbum<T>(Map<String, Object> params) =>
      _api.request<T>('video.removeFromAlbum', params);

  /// Remove the tag from the video.
  Future<ApiResponse<T>> removeTag<T>(Map<String, Object> params) =>
      _api.request<T>('video.removeTag', params);

  /// Reorders the album in the list of user video albums.
  Future<ApiResponse<T>> reorderAlbums<T>(Map<String, Object> params) =>
      _api.request<T>('video.reorderAlbums', params);

  /// Reorders the video in the video album.
  Future<ApiResponse<T>> reorderVideos<T>(Map<String, Object> params) =>
      _api.request<T>('video.reorderVideos', params);

  /// Reports (submits a complaint about) a video.
  Future<ApiResponse<T>> report<T>(Map<String, Object> params) =>
      _api.request<T>('video.report', params);

  /// Reports (submits a complaint about) a comment on a video.
  Future<ApiResponse<T>> reportComment<T>(Map<String, Object> params) =>
      _api.request<T>('video.reportComment', params);

  /// Restores a previously deleted video.
  Future<ApiResponse<T>> restore<T>(Map<String, Object> params) =>
      _api.request<T>('video.restore', params);

  /// Restores a previously deleted comment on a video.
  Future<ApiResponse<T>> restoreComment<T>(Map<String, Object> params) =>
      _api.request<T>('video.restoreComment', params);

  /// Returns a server address (required for upload) and video data.
  Future<ApiResponse<T>> save<T>(Map<String, Object> params) =>
      _api.request<T>('video.save', params);

  /// Returns a list of videos under the set search criterion.
  Future<ApiResponse<T>> search<T>(Map<String, Object> params) =>
      _api.request<T>('video.search', params);

  // ignore: public_member_api_docs
  Future<ApiResponse<T>> startStreaming<T>(Map<String, Object> params) =>
      _api.request<T>('video.startStreaming', params);

  // ignore: public_member_api_docs
  Future<ApiResponse<T>> stopStreaming<T>(Map<String, Object> params) =>
      _api.request<T>('video.stopStreaming', params);
}
