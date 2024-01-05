part of vkdart.methods;

/// Методы для работы с фотографиями.
class Photos {
  /// Конструктор.
  Photos(this._api);
  final Api _api;

  /// Confirms a tag on a photo.
  MethodTypeReturn confirmTag(MethodTypeParams params) =>
      _api.request('photos.confirmTag', params);

  /// Allows to copy a photo to the "Saved photos" album
  MethodTypeReturn copy(MethodTypeParams params) =>
      _api.request('photos.copy', params);

  /// Creates an empty photo album.
  MethodTypeReturn createAlbum(MethodTypeParams params) =>
      _api.request('photos.createAlbum', params);

  /// Adds a new comment on the photo.
  MethodTypeReturn createComment(MethodTypeParams params) =>
      _api.request('photos.createComment', params);

  /// Deletes a photo.
  MethodTypeReturn delete(MethodTypeParams params) =>
      _api.request('photos.delete', params);

  /// Deletes a photo album belonging to the current user.
  MethodTypeReturn deleteAlbum(MethodTypeParams params) =>
      _api.request('photos.deleteAlbum', params);

  /// Deletes a comment on the photo.
  MethodTypeReturn deleteComment(MethodTypeParams params) =>
      _api.request('photos.deleteComment', params);

  /// Edits the caption of a photo.
  MethodTypeReturn edit(MethodTypeParams params) =>
      _api.request('photos.edit', params);

  /// Edits information about a photo album.
  MethodTypeReturn editAlbum(MethodTypeParams params) =>
      _api.request('photos.editAlbum', params);

  /// Edits a comment on a photo.
  MethodTypeReturn editComment(MethodTypeParams params) =>
      _api.request('photos.editComment', params);

  /// Returns a list of a user's or community's photos.
  MethodTypeReturn get(MethodTypeParams params) =>
      _api.request('photos.get', params);

  /// Returns a list of a user's or community's photo albums.
  MethodTypeReturn getAlbums(MethodTypeParams params) =>
      _api.request('photos.getAlbums', params);

  /// Returns the number of photo albums belonging to a user or community.
  MethodTypeReturn getAlbumsCount(MethodTypeParams params) =>
      _api.request('photos.getAlbumsCount', params);

  /// Returns a list of photos belonging to a user or community,
  /// in reverse chronological order.
  MethodTypeReturn getAll(MethodTypeParams params) =>
      _api.request('photos.getAll', params);

  /// Returns a list of comments on a specific photo album or all albums of the
  /// user sorted in reverse chronological order.
  MethodTypeReturn getAllComments(MethodTypeParams params) =>
      _api.request('photos.getAllComments', params);

  /// Returns information about photos by their IDs.
  MethodTypeReturn getById(MethodTypeParams params) =>
      _api.request('photos.getById', params);

  /// Returns an upload link for chat cover pictures.
  MethodTypeReturn getChatUploadServer(MethodTypeParams params) =>
      _api.request('photos.getChatUploadServer', params);

  /// Returns a list of comments on a photo.
  MethodTypeReturn getComments(MethodTypeParams params) =>
      _api.request('photos.getComments', params);

  // ignore: public_member_api_docs
  MethodTypeReturn getMailUploadServer(MethodTypeParams params) =>
      _api.request('photos.getMailUploadServer', params);

  /// Returns the server address for market album photo upload.
  MethodTypeReturn getMarketAlbumUploadServer(MethodTypeParams params) =>
      _api.request('photos.getMarketAlbumUploadServer', params);

  /// Returns the server address for market photo upload.
  MethodTypeReturn getMarketUploadServer(MethodTypeParams params) =>
      _api.request('photos.getMarketUploadServer', params);

  // ignore: lines_longer_than_80_chars
  /// Returns the server address for photo upload in a private message for a user.
  MethodTypeReturn getMessagesUploadServer(MethodTypeParams params) =>
      _api.request('photos.getMessagesUploadServer', params);

  /// Returns a list of photos with tags that have not been viewed.
  MethodTypeReturn getNewTags(MethodTypeParams params) =>
      _api.request('photos.getNewTags', params);

  /// Returns the server address for owner cover upload.
  MethodTypeReturn getOwnerCoverPhotoUploadServer(MethodTypeParams params) =>
      _api.request('photos.getOwnerCoverPhotoUploadServer', params);

  /// Returns an upload server address for a profile or community photo.
  MethodTypeReturn getOwnerPhotoUploadServer(MethodTypeParams params) =>
      _api.request('photos.getOwnerPhotoUploadServer', params);

  /// Возвращает список фотографий со страницы пользователя или сообщества.
  MethodTypeReturn getProfile(MethodTypeParams params) =>
      _api.request('photos.getProfile', params);

  /// Returns a list of tags on a photo.
  MethodTypeReturn getTags(MethodTypeParams params) =>
      _api.request('photos.getTags', params);

  /// Returns the server address for photo upload.
  MethodTypeReturn getUploadServer(MethodTypeParams params) =>
      _api.request('photos.getUploadServer', params);

  /// Returns a list of photos in which a user is tagged.
  MethodTypeReturn getUserPhotos(MethodTypeParams params) =>
      _api.request('photos.getUserPhotos', params);

  /// Returns the server address for photo upload onto a user's wall.
  MethodTypeReturn getWallUploadServer(MethodTypeParams params) =>
      _api.request('photos.getWallUploadServer', params);

  /// Makes a photo into an album cover.
  MethodTypeReturn makeCover(MethodTypeParams params) =>
      _api.request('photos.makeCover', params);

  /// Moves a photo from one album to another.
  MethodTypeReturn move(MethodTypeParams params) =>
      _api.request('photos.move', params);

  /// Adds a tag on the photo.
  MethodTypeReturn putTag(MethodTypeParams params) =>
      _api.request('photos.putTag', params);

  /// Removes a tag from a photo.
  MethodTypeReturn removeTag(MethodTypeParams params) =>
      _api.request('photos.removeTag', params);

  /// Reorders the album in the list of user albums.
  MethodTypeReturn reorderAlbums(MethodTypeParams params) =>
      _api.request('photos.reorderAlbums', params);

  /// Reorders the photo in the list of photos of the user album.
  MethodTypeReturn reorderPhotos(MethodTypeParams params) =>
      _api.request('photos.reorderPhotos', params);

  /// Reports (submits a complaint about) a photo.
  MethodTypeReturn report(MethodTypeParams params) =>
      _api.request('photos.report', params);

  /// Reports (submits a complaint about) a comment on a photo.
  MethodTypeReturn reportComment(MethodTypeParams params) =>
      _api.request('photos.reportComment', params);

  /// Restores a deleted photo.
  MethodTypeReturn restore(MethodTypeParams params) =>
      _api.request('photos.restore', params);

  /// Restores a deleted comment on a photo.
  MethodTypeReturn restoreComment(MethodTypeParams params) =>
      _api.request('photos.restoreComment', params);

  /// Saves photos after successful uploading.
  MethodTypeReturn save(MethodTypeParams params) =>
      _api.request('photos.save', params);

  /// Saves market album photos after successful uploading.
  MethodTypeReturn saveMarketAlbumPhoto(MethodTypeParams params) =>
      _api.request('photos.saveMarketAlbumPhoto', params);

  /// Saves market photos after successful uploading.
  MethodTypeReturn saveMarketPhoto(MethodTypeParams params) =>
      _api.request('photos.saveMarketPhoto', params);

  /// Saves a photo after being successfully uploaded. URL obtained with [vk.com/dev/photos.getMessagesUploadServer|photos.getMessagesUploadServer] method.
  MethodTypeReturn saveMessagesPhoto(MethodTypeParams params) =>
      _api.request('photos.saveMessagesPhoto', params);

  /// Saves cover photo after successful uploading.
  MethodTypeReturn saveOwnerCoverPhoto(MethodTypeParams params) =>
      _api.request('photos.saveOwnerCoverPhoto', params);

  /// Saves a profile or community photo. Upload URL can be got with the [vk.com/dev/photos.getOwnerPhotoUploadServer|photos.getOwnerPhotoUploadServer] method.
  MethodTypeReturn saveOwnerPhoto(MethodTypeParams params) =>
      _api.request('photos.saveOwnerPhoto', params);

  /// Saves a photo to a user's or community's wall after being uploaded.
  MethodTypeReturn saveWallPhoto(MethodTypeParams params) =>
      _api.request('photos.saveWallPhoto', params);

  /// Returns a list of photos.
  MethodTypeReturn search(MethodTypeParams params) =>
      _api.request('photos.search', params);
}
