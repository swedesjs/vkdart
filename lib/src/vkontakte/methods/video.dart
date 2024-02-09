import 'package:vkdart/vkontakte.dart';

/// Methods for working with video recordings.
///
/// See https://dev.vk.com/ru/method/video
class Video {
  // ignore: public_member_api_docs
  Video(this._api);
  final Api _api;

  /// Adds a video to a user or community page.
  Future<Object> add(Map<String, dynamic> params) =>
      _api.request('video.add', params);

  /// Creates an empty album for videos.
  Future<Object> addAlbum(Map<String, dynamic> params) =>
      _api.request('video.addAlbum', params);

  /// Add a video to an album.
  Future<Object> addToAlbum(Map<String, dynamic> params) =>
      _api.request('video.addToAlbum', params);

  /// Adds a new comment on a video.
  Future<Object> createComment(Map<String, dynamic> params) =>
      _api.request('video.createComment', params);

  /// Deletes a video from a user or community page.
  Future<Object> delete(Map<String, dynamic> params) =>
      _api.request('video.delete', params);

  /// Deletes a video album.
  Future<Object> deleteAlbum(Map<String, dynamic> params) =>
      _api.request('video.deleteAlbum', params);

  /// Deletes a comment on a video.
  Future<Object> deleteComment(Map<String, dynamic> params) =>
      _api.request('video.deleteComment', params);

  /// Edits information about a video on a user or community page.
  Future<Object> edit(Map<String, dynamic> params) =>
      _api.request('video.edit', params);

  /// Edits the title of a video album.
  Future<Object> editAlbum(Map<String, dynamic> params) =>
      _api.request('video.editAlbum', params);

  /// Edits the text of a comment on a video.
  Future<Object> editComment(Map<String, dynamic> params) =>
      _api.request('video.editComment', params);

  /// Returns detailed information about videos.
  Future<Object> get(Map<String, dynamic> params) =>
      _api.request('video.get', params);

  /// Returns video album info
  Future<Object> getAlbumById(Map<String, dynamic> params) =>
      _api.request('video.getAlbumById', params);

  /// Returns a list of video albums owned by a user or community.
  Future<Object> getAlbums(Map<String, dynamic> params) =>
      _api.request('video.getAlbums', params);

  /// Get a list of albums.
  Future<Object> getAlbumsByVideo(Map<String, dynamic> params) =>
      _api.request('video.getAlbumsByVideo', params);

  /// Returns a list of comments on a video.
  Future<Object> getComments(Map<String, dynamic> params) =>
      _api.request('video.getComments', params);

  // ignore: public_member_api_docs
  Future<Object> getLongPollServer(Map<String, dynamic> params) =>
      _api.request('video.getLongPollServer', params);

  /// Search for a video by tag.
  Future<Object> getNewTags(Map<String, dynamic> params) =>
      _api.request('video.getNewTags', params);

  /// Returns the tags of the video recording.
  Future<Object> getTags(Map<String, dynamic> params) =>
      _api.request('video.getTags', params);

  // ignore: public_member_api_docs
  Future<Object> liveGetCategories(Map<String, dynamic> params) =>
      _api.request('video.liveGetCategories', params);

  // ignore: public_member_api_docs
  Future<Object> moveToAlbum(Map<String, dynamic> params) =>
      _api.request('video.moveToAlbum', params);

  // ignore: public_member_api_docs
  Future<Object> putTag(Map<String, dynamic> params) =>
      _api.request('video.putTag', params);

  /// Delete the video from the album.
  Future<Object> removeFromAlbum(Map<String, dynamic> params) =>
      _api.request('video.removeFromAlbum', params);

  /// Remove the tag from the video.
  Future<Object> removeTag(Map<String, dynamic> params) =>
      _api.request('video.removeTag', params);

  /// Reorders the album in the list of user video albums.
  Future<Object> reorderAlbums(Map<String, dynamic> params) =>
      _api.request('video.reorderAlbums', params);

  /// Reorders the video in the video album.
  Future<Object> reorderVideos(Map<String, dynamic> params) =>
      _api.request('video.reorderVideos', params);

  /// Reports (submits a complaint about) a video.
  Future<Object> report(Map<String, dynamic> params) =>
      _api.request('video.report', params);

  /// Reports (submits a complaint about) a comment on a video.
  Future<Object> reportComment(Map<String, dynamic> params) =>
      _api.request('video.reportComment', params);

  /// Restores a previously deleted video.
  Future<Object> restore(Map<String, dynamic> params) =>
      _api.request('video.restore', params);

  /// Restores a previously deleted comment on a video.
  Future<Object> restoreComment(Map<String, dynamic> params) =>
      _api.request('video.restoreComment', params);

  /// Returns a server address (required for upload) and video data.
  Future<Object> save(Map<String, dynamic> params) =>
      _api.request('video.save', params);

  /// Returns a list of videos under the set search criterion.
  Future<Object> search(Map<String, dynamic> params) =>
      _api.request('video.search', params);

  // ignore: public_member_api_docs
  Future<Object> startStreaming(Map<String, dynamic> params) =>
      _api.request('video.startStreaming', params);

  // ignore: public_member_api_docs
  Future<Object> stopStreaming(Map<String, dynamic> params) =>
      _api.request('video.stopStreaming', params);
}
