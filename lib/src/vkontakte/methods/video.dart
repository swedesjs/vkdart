part of '../../methods.dart';

/// Методы для работы с видеозаписями.
class Video {
  /// Конструктор.
  Video(this._api);
  final Api _api;

  /// Adds a video to a user or community page.
  Future<ApiResponse<T>> add<T>(MethodTypeParams params) =>
      _api.request<T>('video.add', params);

  /// Creates an empty album for videos.
  Future<ApiResponse<T>> addAlbum<T>(MethodTypeParams params) =>
      _api.request<T>('video.addAlbum', params);

  /// Добавить видео в альбом.
  Future<ApiResponse<T>> addToAlbum<T>(MethodTypeParams params) =>
      _api.request<T>('video.addToAlbum', params);

  /// Adds a new comment on a video.
  Future<ApiResponse<T>> createComment<T>(MethodTypeParams params) =>
      _api.request<T>('video.createComment', params);

  /// Deletes a video from a user or community page.
  Future<ApiResponse<T>> delete<T>(MethodTypeParams params) =>
      _api.request<T>('video.delete', params);

  /// Deletes a video album.
  Future<ApiResponse<T>> deleteAlbum<T>(MethodTypeParams params) =>
      _api.request<T>('video.deleteAlbum', params);

  /// Deletes a comment on a video.
  Future<ApiResponse<T>> deleteComment<T>(MethodTypeParams params) =>
      _api.request<T>('video.deleteComment', params);

  /// Edits information about a video on a user or community page.
  Future<ApiResponse<T>> edit<T>(MethodTypeParams params) =>
      _api.request<T>('video.edit', params);

  /// Edits the title of a video album.
  Future<ApiResponse<T>> editAlbum<T>(MethodTypeParams params) =>
      _api.request<T>('video.editAlbum', params);

  /// Edits the text of a comment on a video.
  Future<ApiResponse<T>> editComment<T>(MethodTypeParams params) =>
      _api.request<T>('video.editComment', params);

  /// Returns detailed information about videos.
  Future<ApiResponse<T>> get<T>(MethodTypeParams params) =>
      _api.request<T>('video.get', params);

  /// Returns video album info
  Future<ApiResponse<T>> getAlbumById<T>(MethodTypeParams params) =>
      _api.request<T>('video.getAlbumById', params);

  /// Returns a list of video albums owned by a user or community.
  Future<ApiResponse<T>> getAlbums<T>(MethodTypeParams params) =>
      _api.request<T>('video.getAlbums', params);

  /// Получить список альбов.
  Future<ApiResponse<T>> getAlbumsByVideo<T>(MethodTypeParams params) =>
      _api.request<T>('video.getAlbumsByVideo', params);

  /// Returns a list of comments on a video.
  Future<ApiResponse<T>> getComments<T>(MethodTypeParams params) =>
      _api.request<T>('video.getComments', params);

  // ignore: public_member_api_docs
  Future<ApiResponse<T>> getLongPollServer<T>(MethodTypeParams params) =>
      _api.request<T>('video.getLongPollServer', params);

  /// Поиск видеозаписи по тегу.
  Future<ApiResponse<T>> getNewTags<T>(MethodTypeParams params) =>
      _api.request<T>('video.getNewTags', params);

  /// Возвращает теги видеозаписи.
  Future<ApiResponse<T>> getTags<T>(MethodTypeParams params) =>
      _api.request<T>('video.getTags', params);

  // ignore: public_member_api_docs
  Future<ApiResponse<T>> liveGetCategories<T>(MethodTypeParams params) =>
      _api.request<T>('video.liveGetCategories', params);

  // ignore: public_member_api_docs
  Future<ApiResponse<T>> moveToAlbum<T>(MethodTypeParams params) =>
      _api.request<T>('video.moveToAlbum', params);

  // ignore: public_member_api_docs
  Future<ApiResponse<T>> putTag<T>(MethodTypeParams params) =>
      _api.request<T>('video.putTag', params);

  /// Удалить видео из альбома.
  Future<ApiResponse<T>> removeFromAlbum<T>(MethodTypeParams params) =>
      _api.request<T>('video.removeFromAlbum', params);

  /// Удалить тег с видеозаписи.
  Future<ApiResponse<T>> removeTag<T>(MethodTypeParams params) =>
      _api.request<T>('video.removeTag', params);

  /// Reorders the album in the list of user video albums.
  Future<ApiResponse<T>> reorderAlbums<T>(MethodTypeParams params) =>
      _api.request<T>('video.reorderAlbums', params);

  /// Reorders the video in the video album.
  Future<ApiResponse<T>> reorderVideos<T>(MethodTypeParams params) =>
      _api.request<T>('video.reorderVideos', params);

  /// Reports (submits a complaint about) a video.
  Future<ApiResponse<T>> report<T>(MethodTypeParams params) =>
      _api.request<T>('video.report', params);

  /// Reports (submits a complaint about) a comment on a video.
  Future<ApiResponse<T>> reportComment<T>(MethodTypeParams params) =>
      _api.request<T>('video.reportComment', params);

  /// Restores a previously deleted video.
  Future<ApiResponse<T>> restore<T>(MethodTypeParams params) =>
      _api.request<T>('video.restore', params);

  /// Restores a previously deleted comment on a video.
  Future<ApiResponse<T>> restoreComment<T>(MethodTypeParams params) =>
      _api.request<T>('video.restoreComment', params);

  /// Returns a server address (required for upload) and video data.
  Future<ApiResponse<T>> save<T>(MethodTypeParams params) =>
      _api.request<T>('video.save', params);

  /// Returns a list of videos under the set search criterion.
  Future<ApiResponse<T>> search<T>(MethodTypeParams params) =>
      _api.request<T>('video.search', params);

  // ignore: public_member_api_docs
  Future<ApiResponse<T>> startStreaming<T>(MethodTypeParams params) =>
      _api.request<T>('video.startStreaming', params);

  // ignore: public_member_api_docs
  Future<ApiResponse<T>> stopStreaming<T>(MethodTypeParams params) =>
      _api.request<T>('video.stopStreaming', params);
}
