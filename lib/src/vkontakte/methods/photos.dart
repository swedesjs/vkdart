import 'package:vkdart/vkontakte.dart';

/// Methods for working with photos.
///
/// See https://dev.vk.com/ru/method/photos
class Photos {
  // ignore: public_member_api_docs
  Photos(this._api);
  final Api _api;

  /// Confirms a tag on a photo.
  Future<Object> confirmTag(Map<String, dynamic> params) =>
      _api.request('photos.confirmTag', params);

  /// Allows to copy a photo to the "Saved photos" album
  Future<Object> copy(Map<String, dynamic> params) =>
      _api.request('photos.copy', params);

  /// Creates an empty photo album.
  Future<Object> createAlbum(Map<String, dynamic> params) =>
      _api.request('photos.createAlbum', params);

  /// Adds a new comment on the photo.
  Future<Object> createComment(Map<String, dynamic> params) =>
      _api.request('photos.createComment', params);

  /// Deletes a photo.
  Future<Object> delete(Map<String, dynamic> params) =>
      _api.request('photos.delete', params);

  /// Deletes a photo album belonging to the current user.
  Future<Object> deleteAlbum(Map<String, dynamic> params) =>
      _api.request('photos.deleteAlbum', params);

  /// Deletes a comment on the photo.
  Future<Object> deleteComment(Map<String, dynamic> params) =>
      _api.request('photos.deleteComment', params);

  /// Edits the caption of a photo.
  Future<Object> edit(Map<String, dynamic> params) =>
      _api.request('photos.edit', params);

  /// Edits information about a photo album.
  Future<Object> editAlbum(Map<String, dynamic> params) =>
      _api.request('photos.editAlbum', params);

  /// Edits a comment on a photo.
  Future<Object> editComment(Map<String, dynamic> params) =>
      _api.request('photos.editComment', params);

  /// Returns a list of a user's or community's photos.
  Future<Object> get(Map<String, dynamic> params) =>
      _api.request('photos.get', params);

  /// Returns a list of a user's or community's photo albums.
  Future<Object> getAlbums(Map<String, dynamic> params) =>
      _api.request('photos.getAlbums', params);

  /// Returns the number of photo albums belonging to a user or community.
  Future<Object> getAlbumsCount(Map<String, dynamic> params) =>
      _api.request('photos.getAlbumsCount', params);

  /// Returns a list of photos belonging to a user or community,
  /// in reverse chronological order.
  Future<Object> getAll(Map<String, dynamic> params) =>
      _api.request('photos.getAll', params);

  /// Returns a list of comments on a specific photo album or all albums of the
  /// user sorted in reverse chronological order.
  Future<Object> getAllComments(Map<String, dynamic> params) =>
      _api.request('photos.getAllComments', params);

  /// Returns information about photos by their IDs.
  Future<Object> getById(Map<String, dynamic> params) =>
      _api.request('photos.getById', params);

  /// Returns an upload link for chat cover pictures.
  Future<Object> getChatUploadServer(Map<String, dynamic> params) =>
      _api.request('photos.getChatUploadServer', params);

  /// Returns a list of comments on a photo.
  Future<Object> getComments(Map<String, dynamic> params) =>
      _api.request('photos.getComments', params);

  // ignore: public_member_api_docs
  Future<Object> getMailUploadServer(Map<String, dynamic> params) =>
      _api.request('photos.getMailUploadServer', params);

  /// Returns the server address for market album photo upload.
  Future<Object> getMarketAlbumUploadServer(Map<String, dynamic> params) =>
      _api.request('photos.getMarketAlbumUploadServer', params);

  /// Returns the server address for market photo upload.
  Future<Object> getMarketUploadServer(Map<String, dynamic> params) =>
      _api.request('photos.getMarketUploadServer', params);

  /// Returns the server address for photo upload in a private message for a user.
  Future<Object> getMessagesUploadServer(Map<String, dynamic> params) =>
      _api.request('photos.getMessagesUploadServer', params);

  /// Returns a list of photos with tags that have not been viewed.
  Future<Object> getNewTags(Map<String, dynamic> params) =>
      _api.request('photos.getNewTags', params);

  /// Returns the server address for owner cover upload.
  Future<Object> getOwnerCoverPhotoUploadServer(Map<String, dynamic> params) =>
      _api.request('photos.getOwnerCoverPhotoUploadServer', params);

  /// Returns an upload server address for a profile or community photo.
  Future<Object> getOwnerPhotoUploadServer(Map<String, dynamic> params) =>
      _api.request('photos.getOwnerPhotoUploadServer', params);

  /// Returns a list of photos from the user's or community's page.
  Future<Object> getProfile(Map<String, dynamic> params) =>
      _api.request('photos.getProfile', params);

  /// Returns a list of tags on a photo.
  Future<Object> getTags(Map<String, dynamic> params) =>
      _api.request('photos.getTags', params);

  /// Returns the server address for photo upload.
  Future<Object> getUploadServer(Map<String, dynamic> params) =>
      _api.request('photos.getUploadServer', params);

  /// Returns a list of photos in which a user is tagged.
  Future<Object> getUserPhotos(Map<String, dynamic> params) =>
      _api.request('photos.getUserPhotos', params);

  /// Returns the server address for photo upload onto a user's wall.
  Future<Object> getWallUploadServer(Map<String, dynamic> params) =>
      _api.request('photos.getWallUploadServer', params);

  /// Makes a photo into an album cover.
  Future<Object> makeCover(Map<String, dynamic> params) =>
      _api.request('photos.makeCover', params);

  /// Moves a photo from one album to another.
  Future<Object> move(Map<String, dynamic> params) =>
      _api.request('photos.move', params);

  /// Adds a tag on the photo.
  Future<Object> putTag(Map<String, dynamic> params) =>
      _api.request('photos.putTag', params);

  /// Removes a tag from a photo.
  Future<Object> removeTag(Map<String, dynamic> params) =>
      _api.request('photos.removeTag', params);

  /// Reorders the album in the list of user albums.
  Future<Object> reorderAlbums(Map<String, dynamic> params) =>
      _api.request('photos.reorderAlbums', params);

  /// Reorders the photo in the list of photos of the user album.
  Future<Object> reorderPhotos(Map<String, dynamic> params) =>
      _api.request('photos.reorderPhotos', params);

  /// Reports (submits a complaint about) a photo.
  Future<Object> report(Map<String, dynamic> params) =>
      _api.request('photos.report', params);

  /// Reports (submits a complaint about) a comment on a photo.
  Future<Object> reportComment(Map<String, dynamic> params) =>
      _api.request('photos.reportComment', params);

  /// Restores a deleted photo.
  Future<Object> restore(Map<String, dynamic> params) =>
      _api.request('photos.restore', params);

  /// Restores a deleted comment on a photo.
  Future<Object> restoreComment(Map<String, dynamic> params) =>
      _api.request('photos.restoreComment', params);

  /// Saves photos after successful uploading.
  Future<Object> save(Map<String, dynamic> params) =>
      _api.request('photos.save', params);

  /// Saves market album photos after successful uploading.
  Future<Object> saveMarketAlbumPhoto(Map<String, dynamic> params) =>
      _api.request('photos.saveMarketAlbumPhoto', params);

  /// Saves market photos after successful uploading.
  Future<Object> saveMarketPhoto(Map<String, dynamic> params) =>
      _api.request('photos.saveMarketPhoto', params);

  /// Saves a photo after being successfully uploaded. URL obtained with
  /// [Photos.getMessagesUploadServer] method.
  Future<Object> saveMessagesPhoto(Map<String, dynamic> params) =>
      _api.request('photos.saveMessagesPhoto', params);

  /// Saves cover photo after successful uploading.
  Future<Object> saveOwnerCoverPhoto(Map<String, dynamic> params) =>
      _api.request('photos.saveOwnerCoverPhoto', params);

  /// Saves a profile or community photo. Upload URL can be got with the
  /// [Photos.getOwnerPhotoUploadServer] method.
  Future<Object> saveOwnerPhoto(Map<String, dynamic> params) =>
      _api.request('photos.saveOwnerPhoto', params);

  /// Saves a photo to a user's or community's wall after being uploaded.
  Future<Object> saveWallPhoto(Map<String, dynamic> params) =>
      _api.request('photos.saveWallPhoto', params);

  /// Returns a list of photos.
  Future<Object> search(Map<String, dynamic> params) =>
      _api.request('photos.search', params);
}
