import '../api.dart';

class Photos {
  final Api _api;

  Photos(this._api);

  /// Confirms a tag on a photo.
  Future<Map<String, dynamic>> confirmTag(Map<String, Object> params) {
    return _api.request('photos.confirmTag', params);
  }

  /// Allows to copy a photo to the "Saved photos" album
  Future<Map<String, dynamic>> copy(Map<String, Object> params) {
    return _api.request('photos.copy', params);
  }

  /// Creates an empty photo album.
  Future<Map<String, dynamic>> createAlbum(Map<String, Object> params) {
    return _api.request('photos.createAlbum', params);
  }

  /// Adds a new comment on the photo.
  Future<Map<String, dynamic>> createComment(Map<String, Object> params) {
    return _api.request('photos.createComment', params);
  }

  /// Deletes a photo.
  Future<Map<String, dynamic>> delete(Map<String, Object> params) {
    return _api.request('photos.delete', params);
  }

  /// Deletes a photo album belonging to the current user.
  Future<Map<String, dynamic>> deleteAlbum(Map<String, Object> params) {
    return _api.request('photos.deleteAlbum', params);
  }

  /// Deletes a comment on the photo.
  Future<Map<String, dynamic>> deleteComment(Map<String, Object> params) {
    return _api.request('photos.deleteComment', params);
  }

  /// Edits the caption of a photo.
  Future<Map<String, dynamic>> edit(Map<String, Object> params) {
    return _api.request('photos.edit', params);
  }

  /// Edits information about a photo album.
  Future<Map<String, dynamic>> editAlbum(Map<String, Object> params) {
    return _api.request('photos.editAlbum', params);
  }

  /// Edits a comment on a photo.
  Future<Map<String, dynamic>> editComment(Map<String, Object> params) {
    return _api.request('photos.editComment', params);
  }

  /// Returns a list of a user's or community's photos.
  Future<Map<String, dynamic>> get(Map<String, Object> params) {
    return _api.request('photos.get', params);
  }

  /// Returns a list of a user's or community's photo albums.
  Future<Map<String, dynamic>> getAlbums(Map<String, Object> params) {
    return _api.request('photos.getAlbums', params);
  }

  /// Returns the number of photo albums belonging to a user or community.
  Future<Map<String, dynamic>> getAlbumsCount(Map<String, Object> params) {
    return _api.request('photos.getAlbumsCount', params);
  }

  /// Returns a list of photos belonging to a user or community, in reverse chronological order.
  Future<Map<String, dynamic>> getAll(Map<String, Object> params) {
    return _api.request('photos.getAll', params);
  }

  /// Returns a list of comments on a specific photo album or all albums of the user sorted in reverse chronological order.
  Future<Map<String, dynamic>> getAllComments(Map<String, Object> params) {
    return _api.request('photos.getAllComments', params);
  }

  /// Returns information about photos by their IDs.
  Future<Map<String, dynamic>> getById(Map<String, Object> params) {
    return _api.request('photos.getById', params);
  }

  /// Returns an upload link for chat cover pictures.
  Future<Map<String, dynamic>> getChatUploadServer(Map<String, Object> params) {
    return _api.request('photos.getChatUploadServer', params);
  }

  /// Returns a list of comments on a photo.
  Future<Map<String, dynamic>> getComments(Map<String, Object> params) {
    return _api.request('photos.getComments', params);
  }

  /// Returns the server address for market album photo upload.
  Future<Map<String, dynamic>> getMarketAlbumUploadServer(Map<String, Object> params) {
    return _api.request('photos.getMarketAlbumUploadServer', params);
  }

  /// Returns the server address for market photo upload.
  Future<Map<String, dynamic>> getMarketUploadServer(Map<String, Object> params) {
    return _api.request('photos.getMarketUploadServer', params);
  }

  /// Returns the server address for photo upload in a private message for a user.
  Future<Map<String, dynamic>> getMessagesUploadServer(Map<String, Object> params) {
    return _api.request('photos.getMessagesUploadServer', params);
  }

  /// Returns a list of photos with tags that have not been viewed.
  Future<Map<String, dynamic>> getNewTags(Map<String, Object> params) {
    return _api.request('photos.getNewTags', params);
  }

  /// Returns the server address for owner cover upload.
  Future<Map<String, dynamic>> getOwnerCoverPhotoUploadServer(Map<String, Object> params) {
    return _api.request('photos.getOwnerCoverPhotoUploadServer', params);
  }

  /// Returns an upload server address for a profile or community photo.
  Future<Map<String, dynamic>> getOwnerPhotoUploadServer(Map<String, Object> params) {
    return _api.request('photos.getOwnerPhotoUploadServer', params);
  }

  /// Returns a list of tags on a photo.
  Future<Map<String, dynamic>> getTags(Map<String, Object> params) {
    return _api.request('photos.getTags', params);
  }

  /// Returns the server address for photo upload.
  Future<Map<String, dynamic>> getUploadServer(Map<String, Object> params) {
    return _api.request('photos.getUploadServer', params);
  }

  /// Returns a list of photos in which a user is tagged.
  Future<Map<String, dynamic>> getUserPhotos(Map<String, Object> params) {
    return _api.request('photos.getUserPhotos', params);
  }

  /// Returns the server address for photo upload onto a user's wall.
  Future<Map<String, dynamic>> getWallUploadServer(Map<String, Object> params) {
    return _api.request('photos.getWallUploadServer', params);
  }

  /// Makes a photo into an album cover.
  Future<Map<String, dynamic>> makeCover(Map<String, Object> params) {
    return _api.request('photos.makeCover', params);
  }

  /// Moves a photo from one album to another.
  Future<Map<String, dynamic>> move(Map<String, Object> params) {
    return _api.request('photos.move', params);
  }

  /// Adds a tag on the photo.
  Future<Map<String, dynamic>> putTag(Map<String, Object> params) {
    return _api.request('photos.putTag', params);
  }

  /// Removes a tag from a photo.
  Future<Map<String, dynamic>> removeTag(Map<String, Object> params) {
    return _api.request('photos.removeTag', params);
  }

  /// Reorders the album in the list of user albums.
  Future<Map<String, dynamic>> reorderAlbums(Map<String, Object> params) {
    return _api.request('photos.reorderAlbums', params);
  }

  /// Reorders the photo in the list of photos of the user album.
  Future<Map<String, dynamic>> reorderPhotos(Map<String, Object> params) {
    return _api.request('photos.reorderPhotos', params);
  }

  /// Reports (submits a complaint about) a photo.
  Future<Map<String, dynamic>> report(Map<String, Object> params) {
    return _api.request('photos.report', params);
  }

  /// Reports (submits a complaint about) a comment on a photo.
  Future<Map<String, dynamic>> reportComment(Map<String, Object> params) {
    return _api.request('photos.reportComment', params);
  }

  /// Restores a deleted photo.
  Future<Map<String, dynamic>> restore(Map<String, Object> params) {
    return _api.request('photos.restore', params);
  }

  /// Restores a deleted comment on a photo.
  Future<Map<String, dynamic>> restoreComment(Map<String, Object> params) {
    return _api.request('photos.restoreComment', params);
  }

  /// Saves photos after successful uploading.
  Future<Map<String, dynamic>> save(Map<String, Object> params) {
    return _api.request('photos.save', params);
  }

  /// Saves market album photos after successful uploading.
  Future<Map<String, dynamic>> saveMarketAlbumPhoto(Map<String, Object> params) {
    return _api.request('photos.saveMarketAlbumPhoto', params);
  }

  /// Saves market photos after successful uploading.
  Future<Map<String, dynamic>> saveMarketPhoto(Map<String, Object> params) {
    return _api.request('photos.saveMarketPhoto', params);
  }

  /// Saves a photo after being successfully uploaded. URL obtained with [vk.com/dev/photos.getMessagesUploadServer|photos.getMessagesUploadServer] method.
  Future<Map<String, dynamic>> saveMessagesPhoto(Map<String, Object> params) {
    return _api.request('photos.saveMessagesPhoto', params);
  }

  /// Saves cover photo after successful uploading.
  Future<Map<String, dynamic>> saveOwnerCoverPhoto(Map<String, Object> params) {
    return _api.request('photos.saveOwnerCoverPhoto', params);
  }

  /// Saves a profile or community photo. Upload URL can be got with the [vk.com/dev/photos.getOwnerPhotoUploadServer|photos.getOwnerPhotoUploadServer] method.
  Future<Map<String, dynamic>> saveOwnerPhoto(Map<String, Object> params) {
    return _api.request('photos.saveOwnerPhoto', params);
  }

  /// Saves a photo to a user's or community's wall after being uploaded.
  Future<Map<String, dynamic>> saveWallPhoto(Map<String, Object> params) {
    return _api.request('photos.saveWallPhoto', params);
  }

  /// Returns a list of photos.
  Future<Map<String, dynamic>> search(Map<String, Object> params) {
    return _api.request('photos.search', params);
  }
}
