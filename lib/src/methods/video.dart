part of vkdart.methods;

/// Методы для работы с видеозаписями.
class Video {
  /// Конструктор.
  Video(this._api);
  final Api _api;

  /// Adds a video to a user or community page.
  MethodTypeReturn add(MethodTypeParams params) =>
      _api.request('video.add', params);

  /// Creates an empty album for videos.
  MethodTypeReturn addAlbum(MethodTypeParams params) =>
      _api.request('video.addAlbum', params);

  /// Добавить видео в альбом.
  MethodTypeReturn addToAlbum(MethodTypeParams params) =>
      _api.request('video.addToAlbum', params);

  /// Adds a new comment on a video.
  MethodTypeReturn createComment(MethodTypeParams params) =>
      _api.request('video.createComment', params);

  /// Deletes a video from a user or community page.
  MethodTypeReturn delete(MethodTypeParams params) =>
      _api.request('video.delete', params);

  /// Deletes a video album.
  MethodTypeReturn deleteAlbum(MethodTypeParams params) =>
      _api.request('video.deleteAlbum', params);

  /// Deletes a comment on a video.
  MethodTypeReturn deleteComment(MethodTypeParams params) =>
      _api.request('video.deleteComment', params);

  /// Edits information about a video on a user or community page.
  MethodTypeReturn edit(MethodTypeParams params) =>
      _api.request('video.edit', params);

  /// Edits the title of a video album.
  MethodTypeReturn editAlbum(MethodTypeParams params) =>
      _api.request('video.editAlbum', params);

  /// Edits the text of a comment on a video.
  MethodTypeReturn editComment(MethodTypeParams params) =>
      _api.request('video.editComment', params);

  /// Returns detailed information about videos.
  MethodTypeReturn get(MethodTypeParams params) =>
      _api.request('video.get', params);

  /// Returns video album info
  MethodTypeReturn getAlbumById(MethodTypeParams params) =>
      _api.request('video.getAlbumById', params);

  /// Returns a list of video albums owned by a user or community.
  MethodTypeReturn getAlbums(MethodTypeParams params) =>
      _api.request('video.getAlbums', params);

  /// Получить список альбов.
  MethodTypeReturn getAlbumsByVideo(MethodTypeParams params) =>
      _api.request('video.getAlbumsByVideo', params);

  /// Returns a list of comments on a video.
  MethodTypeReturn getComments(MethodTypeParams params) =>
      _api.request('video.getComments', params);

  // ignore: public_member_api_docs
  MethodTypeReturn getLongPollServer(MethodTypeParams params) =>
      _api.request('video.getLongPollServer', params);

  /// Поиск видеозаписи по тегу.
  MethodTypeReturn getNewTags(MethodTypeParams params) =>
      _api.request('video.getNewTags', params);

  /// Возвращает теги видеозаписи.
  MethodTypeReturn getTags(MethodTypeParams params) =>
      _api.request('video.getTags', params);

  // ignore: public_member_api_docs
  MethodTypeReturn liveGetCategories(MethodTypeParams params) =>
      _api.request('video.liveGetCategories', params);

  // ignore: public_member_api_docs
  MethodTypeReturn moveToAlbum(MethodTypeParams params) =>
      _api.request('video.moveToAlbum', params);

  // ignore: public_member_api_docs
  MethodTypeReturn putTag(MethodTypeParams params) =>
      _api.request('video.putTag', params);

  /// Удалить видео из альбома.
  MethodTypeReturn removeFromAlbum(MethodTypeParams params) =>
      _api.request('video.removeFromAlbum', params);

  /// Удалить тег с видеозаписи.
  MethodTypeReturn removeTag(MethodTypeParams params) =>
      _api.request('video.removeTag', params);

  /// Reorders the album in the list of user video albums.
  MethodTypeReturn reorderAlbums(MethodTypeParams params) =>
      _api.request('video.reorderAlbums', params);

  /// Reorders the video in the video album.
  MethodTypeReturn reorderVideos(MethodTypeParams params) =>
      _api.request('video.reorderVideos', params);

  /// Reports (submits a complaint about) a video.
  MethodTypeReturn report(MethodTypeParams params) =>
      _api.request('video.report', params);

  /// Reports (submits a complaint about) a comment on a video.
  MethodTypeReturn reportComment(MethodTypeParams params) =>
      _api.request('video.reportComment', params);

  /// Restores a previously deleted video.
  MethodTypeReturn restore(MethodTypeParams params) =>
      _api.request('video.restore', params);

  /// Restores a previously deleted comment on a video.
  MethodTypeReturn restoreComment(MethodTypeParams params) =>
      _api.request('video.restoreComment', params);

  /// Returns a server address (required for upload) and video data.
  MethodTypeReturn save(MethodTypeParams params) =>
      _api.request('video.save', params);

  /// Returns a list of videos under the set search criterion.
  MethodTypeReturn search(MethodTypeParams params) =>
      _api.request('video.search', params);

  // ignore: public_member_api_docs
  MethodTypeReturn startStreaming(MethodTypeParams params) =>
      _api.request('video.startStreaming', params);

  // ignore: public_member_api_docs
  MethodTypeReturn stopStreaming(MethodTypeParams params) =>
      _api.request('video.stopStreaming', params);
}
