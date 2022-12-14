import '../api.dart';

class Video {
  final Api _api;

  Video(this._api);

  /// Adds a video to a user or community page.
  Future<Map<String, dynamic>> add(Map<String, Object> params) {
    return _api.request('video.add', params);
  }

  /// Creates an empty album for videos.
  Future<Map<String, dynamic>> addAlbum(Map<String, Object> params) {
    return _api.request('video.addAlbum', params);
  }

  Future<Map<String, dynamic>> addToAlbum(Map<String, Object> params) {
    return _api.request('video.addToAlbum', params);
  }

  /// Adds a new comment on a video.
  Future<Map<String, dynamic>> createComment(Map<String, Object> params) {
    return _api.request('video.createComment', params);
  }

  /// Deletes a video from a user or community page.
  Future<Map<String, dynamic>> delete(Map<String, Object> params) {
    return _api.request('video.delete', params);
  }

  /// Deletes a video album.
  Future<Map<String, dynamic>> deleteAlbum(Map<String, Object> params) {
    return _api.request('video.deleteAlbum', params);
  }

  /// Deletes a comment on a video.
  Future<Map<String, dynamic>> deleteComment(Map<String, Object> params) {
    return _api.request('video.deleteComment', params);
  }

  /// Edits information about a video on a user or community page.
  Future<Map<String, dynamic>> edit(Map<String, Object> params) {
    return _api.request('video.edit', params);
  }

  /// Edits the title of a video album.
  Future<Map<String, dynamic>> editAlbum(Map<String, Object> params) {
    return _api.request('video.editAlbum', params);
  }

  /// Edits the text of a comment on a video.
  Future<Map<String, dynamic>> editComment(Map<String, Object> params) {
    return _api.request('video.editComment', params);
  }

  /// Returns detailed information about videos.
  Future<Map<String, dynamic>> get(Map<String, Object> params) {
    return _api.request('video.get', params);
  }

  /// Returns video album info
  Future<Map<String, dynamic>> getAlbumById(Map<String, Object> params) {
    return _api.request('video.getAlbumById', params);
  }

  /// Returns a list of video albums owned by a user or community.
  Future<Map<String, dynamic>> getAlbums(Map<String, Object> params) {
    return _api.request('video.getAlbums', params);
  }

  Future<Map<String, dynamic>> getAlbumsByVideo(Map<String, Object> params) {
    return _api.request('video.getAlbumsByVideo', params);
  }

  /// Returns a list of comments on a video.
  Future<Map<String, dynamic>> getComments(Map<String, Object> params) {
    return _api.request('video.getComments', params);
  }

  Future<Map<String, dynamic>> removeFromAlbum(Map<String, Object> params) {
    return _api.request('video.removeFromAlbum', params);
  }

  /// Reorders the album in the list of user video albums.
  Future<Map<String, dynamic>> reorderAlbums(Map<String, Object> params) {
    return _api.request('video.reorderAlbums', params);
  }

  /// Reorders the video in the video album.
  Future<Map<String, dynamic>> reorderVideos(Map<String, Object> params) {
    return _api.request('video.reorderVideos', params);
  }

  /// Reports (submits a complaint about) a video.
  Future<Map<String, dynamic>> report(Map<String, Object> params) {
    return _api.request('video.report', params);
  }

  /// Reports (submits a complaint about) a comment on a video.
  Future<Map<String, dynamic>> reportComment(Map<String, Object> params) {
    return _api.request('video.reportComment', params);
  }

  /// Restores a previously deleted video.
  Future<Map<String, dynamic>> restore(Map<String, Object> params) {
    return _api.request('video.restore', params);
  }

  /// Restores a previously deleted comment on a video.
  Future<Map<String, dynamic>> restoreComment(Map<String, Object> params) {
    return _api.request('video.restoreComment', params);
  }

  /// Returns a server address (required for upload) and video data.
  Future<Map<String, dynamic>> save(Map<String, Object> params) {
    return _api.request('video.save', params);
  }

  /// Returns a list of videos under the set search criterion.
  Future<Map<String, dynamic>> search(Map<String, Object> params) {
    return _api.request('video.search', params);
  }
}
