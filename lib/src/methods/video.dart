import 'package:vkdart/src/api.dart';

/// Методы для работы с видеозаписями.
class Video {
  /// Конструктор.
  Video(this._api);
  final Api _api;

  /// Adds a video to a user or community page.
  Future<Map<String, dynamic>> add(Map<String, Object> params) =>
      _api.request('video.add', params);

  /// Creates an empty album for videos.
  Future<Map<String, dynamic>> addAlbum(Map<String, Object> params) =>
      _api.request('video.addAlbum', params);

  /// Добавить видео в альбом.
  Future<Map<String, dynamic>> addToAlbum(Map<String, Object> params) =>
      _api.request('video.addToAlbum', params);

  /// Adds a new comment on a video.
  Future<Map<String, dynamic>> createComment(Map<String, Object> params) =>
      _api.request('video.createComment', params);

  /// Deletes a video from a user or community page.
  Future<Map<String, dynamic>> delete(Map<String, Object> params) =>
      _api.request('video.delete', params);

  /// Deletes a video album.
  Future<Map<String, dynamic>> deleteAlbum(Map<String, Object> params) =>
      _api.request('video.deleteAlbum', params);

  /// Deletes a comment on a video.
  Future<Map<String, dynamic>> deleteComment(Map<String, Object> params) =>
      _api.request('video.deleteComment', params);

  /// Edits information about a video on a user or community page.
  Future<Map<String, dynamic>> edit(Map<String, Object> params) =>
      _api.request('video.edit', params);

  /// Edits the title of a video album.
  Future<Map<String, dynamic>> editAlbum(Map<String, Object> params) =>
      _api.request('video.editAlbum', params);

  /// Edits the text of a comment on a video.
  Future<Map<String, dynamic>> editComment(Map<String, Object> params) =>
      _api.request('video.editComment', params);

  /// Returns detailed information about videos.
  Future<Map<String, dynamic>> get(Map<String, Object> params) =>
      _api.request('video.get', params);

  /// Returns video album info
  Future<Map<String, dynamic>> getAlbumById(Map<String, Object> params) =>
      _api.request('video.getAlbumById', params);

  /// Returns a list of video albums owned by a user or community.
  Future<Map<String, dynamic>> getAlbums(Map<String, Object> params) =>
      _api.request('video.getAlbums', params);

  /// Получить список альбов.
  Future<Map<String, dynamic>> getAlbumsByVideo(Map<String, Object> params) =>
      _api.request('video.getAlbumsByVideo', params);

  /// Returns a list of comments on a video.
  Future<Map<String, dynamic>> getComments(Map<String, Object> params) =>
      _api.request('video.getComments', params);

  // ignore: public_member_api_docs
  Future<Map<String, dynamic>> getLongPollServer(Map<String, Object> params) =>
      _api.request('video.getLongPollServer', params);

  /// Поиск видеозаписи по тегу.
  Future<Map<String, dynamic>> getNewTags(Map<String, Object> params) =>
      _api.request('video.getNewTags', params);

  /// Возвращает теги видеозаписи.
  Future<Map<String, dynamic>> getTags(Map<String, Object> params) =>
      _api.request('video.getTags', params);

  // ignore: public_member_api_docs
  Future<Map<String, dynamic>> liveGetCategories(Map<String, Object> params) =>
      _api.request('video.liveGetCategories', params);

  // ignore: public_member_api_docs
  Future<Map<String, dynamic>> moveToAlbum(Map<String, Object> params) =>
      _api.request('video.moveToAlbum', params);

  // ignore: public_member_api_docs
  Future<Map<String, dynamic>> putTag(Map<String, Object> params) =>
      _api.request('video.putTag', params);

  /// Удалить видео из альбома.
  Future<Map<String, dynamic>> removeFromAlbum(Map<String, Object> params) =>
      _api.request('video.removeFromAlbum', params);

  /// Удалить тег с видеозаписи.
  Future<Map<String, dynamic>> removeTag(Map<String, Object> params) =>
      _api.request('video.removeTag', params);

  /// Reorders the album in the list of user video albums.
  Future<Map<String, dynamic>> reorderAlbums(Map<String, Object> params) =>
      _api.request('video.reorderAlbums', params);

  /// Reorders the video in the video album.
  Future<Map<String, dynamic>> reorderVideos(Map<String, Object> params) =>
      _api.request('video.reorderVideos', params);

  /// Reports (submits a complaint about) a video.
  Future<Map<String, dynamic>> report(Map<String, Object> params) =>
      _api.request('video.report', params);

  /// Reports (submits a complaint about) a comment on a video.
  Future<Map<String, dynamic>> reportComment(Map<String, Object> params) =>
      _api.request('video.reportComment', params);

  /// Restores a previously deleted video.
  Future<Map<String, dynamic>> restore(Map<String, Object> params) =>
      _api.request('video.restore', params);

  /// Restores a previously deleted comment on a video.
  Future<Map<String, dynamic>> restoreComment(Map<String, Object> params) =>
      _api.request('video.restoreComment', params);

  /// Returns a server address (required for upload) and video data.
  Future<Map<String, dynamic>> save(Map<String, Object> params) =>
      _api.request('video.save', params);

  /// Returns a list of videos under the set search criterion.
  Future<Map<String, dynamic>> search(Map<String, Object> params) =>
      _api.request('video.search', params);

  // ignore: public_member_api_docs
  Future<Map<String, dynamic>> startStreaming(Map<String, Object> params) =>
      _api.request('video.startStreaming', params);

  // ignore: public_member_api_docs
  Future<Map<String, dynamic>> stopStreaming(Map<String, Object> params) =>
      _api.request('video.stopStreaming', params);
}
