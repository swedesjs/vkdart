part of '../../methods.dart';

/// Методы для работы с фотографиями.
class Photos {
  /// Конструктор.
  Photos(this._api);
  final Api _api;

  /// Confirms a tag on a photo.
  Future<ApiResponse<T>> confirmTag<T>(MethodTypeParams params) =>
      _api.request<T>('photos.confirmTag', params);

  /// Allows to copy a photo to the "Saved photos" album
  Future<ApiResponse<T>> copy<T>(MethodTypeParams params) =>
      _api.request<T>('photos.copy', params);

  /// Creates an empty photo album.
  Future<ApiResponse<T>> createAlbum<T>(MethodTypeParams params) =>
      _api.request<T>('photos.createAlbum', params);

  /// Adds a new comment on the photo.
  Future<ApiResponse<T>> createComment<T>(MethodTypeParams params) =>
      _api.request<T>('photos.createComment', params);

  /// Deletes a photo.
  Future<ApiResponse<T>> delete<T>(MethodTypeParams params) =>
      _api.request<T>('photos.delete', params);

  /// Deletes a photo album belonging to the current user.
  Future<ApiResponse<T>> deleteAlbum<T>(MethodTypeParams params) =>
      _api.request<T>('photos.deleteAlbum', params);

  /// Deletes a comment on the photo.
  Future<ApiResponse<T>> deleteComment<T>(MethodTypeParams params) =>
      _api.request<T>('photos.deleteComment', params);

  /// Edits the caption of a photo.
  Future<ApiResponse<T>> edit<T>(MethodTypeParams params) =>
      _api.request<T>('photos.edit', params);

  /// Edits information about a photo album.
  Future<ApiResponse<T>> editAlbum<T>(MethodTypeParams params) =>
      _api.request<T>('photos.editAlbum', params);

  /// Edits a comment on a photo.
  Future<ApiResponse<T>> editComment<T>(MethodTypeParams params) =>
      _api.request<T>('photos.editComment', params);

  /// Returns a list of a user's or community's photos.
  Future<ApiResponse<T>> get<T>(MethodTypeParams params) =>
      _api.request<T>('photos.get', params);

  /// Returns a list of a user's or community's photo albums.
  Future<ApiResponse<T>> getAlbums<T>(MethodTypeParams params) =>
      _api.request<T>('photos.getAlbums', params);

  /// Returns the number of photo albums belonging to a user or community.
  Future<ApiResponse<T>> getAlbumsCount<T>(MethodTypeParams params) =>
      _api.request<T>('photos.getAlbumsCount', params);

  /// Returns a list of photos belonging to a user or community,
  /// in reverse chronological order.
  Future<ApiResponse<T>> getAll<T>(MethodTypeParams params) =>
      _api.request<T>('photos.getAll', params);

  /// Returns a list of comments on a specific photo album or all albums of the
  /// user sorted in reverse chronological order.
  Future<ApiResponse<T>> getAllComments<T>(MethodTypeParams params) =>
      _api.request<T>('photos.getAllComments', params);

  /// Returns information about photos by their IDs.
  Future<ApiResponse<T>> getById<T>(MethodTypeParams params) =>
      _api.request<T>('photos.getById', params);

  /// Returns an upload link for chat cover pictures.
  Future<ApiResponse<T>> getChatUploadServer<T>(MethodTypeParams params) =>
      _api.request<T>('photos.getChatUploadServer', params);

  /// Returns a list of comments on a photo.
  Future<ApiResponse<T>> getComments<T>(MethodTypeParams params) =>
      _api.request<T>('photos.getComments', params);

  // ignore: public_member_api_docs
  Future<ApiResponse<T>> getMailUploadServer<T>(MethodTypeParams params) =>
      _api.request<T>('photos.getMailUploadServer', params);

  /// Returns the server address for market album photo upload.
  Future<ApiResponse<T>> getMarketAlbumUploadServer<T>(
          MethodTypeParams params) =>
      _api.request<T>('photos.getMarketAlbumUploadServer', params);

  /// Returns the server address for market photo upload.
  Future<ApiResponse<T>> getMarketUploadServer<T>(MethodTypeParams params) =>
      _api.request<T>('photos.getMarketUploadServer', params);

  /// Returns the server address for photo upload in a private message for a user.
  Future<ApiResponse<T>> getMessagesUploadServer<T>(MethodTypeParams params) =>
      _api.request<T>('photos.getMessagesUploadServer', params);

  /// Returns a list of photos with tags that have not been viewed.
  Future<ApiResponse<T>> getNewTags<T>(MethodTypeParams params) =>
      _api.request<T>('photos.getNewTags', params);

  /// Returns the server address for owner cover upload.
  Future<ApiResponse<T>> getOwnerCoverPhotoUploadServer<T>(
          MethodTypeParams params) =>
      _api.request<T>('photos.getOwnerCoverPhotoUploadServer', params);

  /// Returns an upload server address for a profile or community photo.
  Future<ApiResponse<T>> getOwnerPhotoUploadServer<T>(
          MethodTypeParams params) =>
      _api.request<T>('photos.getOwnerPhotoUploadServer', params);

  /// Возвращает список фотографий со страницы пользователя или сообщества.
  Future<ApiResponse<T>> getProfile<T>(MethodTypeParams params) =>
      _api.request<T>('photos.getProfile', params);

  /// Returns a list of tags on a photo.
  Future<ApiResponse<T>> getTags<T>(MethodTypeParams params) =>
      _api.request<T>('photos.getTags', params);

  /// Returns the server address for photo upload.
  Future<ApiResponse<T>> getUploadServer<T>(MethodTypeParams params) =>
      _api.request<T>('photos.getUploadServer', params);

  /// Returns a list of photos in which a user is tagged.
  Future<ApiResponse<T>> getUserPhotos<T>(MethodTypeParams params) =>
      _api.request<T>('photos.getUserPhotos', params);

  /// Returns the server address for photo upload onto a user's wall.
  Future<ApiResponse<T>> getWallUploadServer<T>(MethodTypeParams params) =>
      _api.request<T>('photos.getWallUploadServer', params);

  /// Makes a photo into an album cover.
  Future<ApiResponse<T>> makeCover<T>(MethodTypeParams params) =>
      _api.request<T>('photos.makeCover', params);

  /// Moves a photo from one album to another.
  Future<ApiResponse<T>> move<T>(MethodTypeParams params) =>
      _api.request<T>('photos.move', params);

  /// Adds a tag on the photo.
  Future<ApiResponse<T>> putTag<T>(MethodTypeParams params) =>
      _api.request<T>('photos.putTag', params);

  /// Removes a tag from a photo.
  Future<ApiResponse<T>> removeTag<T>(MethodTypeParams params) =>
      _api.request<T>('photos.removeTag', params);

  /// Reorders the album in the list of user albums.
  Future<ApiResponse<T>> reorderAlbums<T>(MethodTypeParams params) =>
      _api.request<T>('photos.reorderAlbums', params);

  /// Reorders the photo in the list of photos of the user album.
  Future<ApiResponse<T>> reorderPhotos<T>(MethodTypeParams params) =>
      _api.request<T>('photos.reorderPhotos', params);

  /// Reports (submits a complaint about) a photo.
  Future<ApiResponse<T>> report<T>(MethodTypeParams params) =>
      _api.request<T>('photos.report', params);

  /// Reports (submits a complaint about) a comment on a photo.
  Future<ApiResponse<T>> reportComment<T>(MethodTypeParams params) =>
      _api.request<T>('photos.reportComment', params);

  /// Restores a deleted photo.
  Future<ApiResponse<T>> restore<T>(MethodTypeParams params) =>
      _api.request<T>('photos.restore', params);

  /// Restores a deleted comment on a photo.
  Future<ApiResponse<T>> restoreComment<T>(MethodTypeParams params) =>
      _api.request<T>('photos.restoreComment', params);

  /// Saves photos after successful uploading.
  Future<ApiResponse<T>> save<T>(MethodTypeParams params) =>
      _api.request<T>('photos.save', params);

  /// Saves market album photos after successful uploading.
  Future<ApiResponse<T>> saveMarketAlbumPhoto<T>(MethodTypeParams params) =>
      _api.request<T>('photos.saveMarketAlbumPhoto', params);

  /// Saves market photos after successful uploading.
  Future<ApiResponse<T>> saveMarketPhoto<T>(MethodTypeParams params) =>
      _api.request<T>('photos.saveMarketPhoto', params);

  /// Saves a photo after being successfully uploaded. URL obtained with
  /// [Photos.getMessagesUploadServer] method.
  Future<ApiResponse<T>> saveMessagesPhoto<T>(MethodTypeParams params) =>
      _api.request<T>('photos.saveMessagesPhoto', params);

  /// Saves cover photo after successful uploading.
  Future<ApiResponse<T>> saveOwnerCoverPhoto<T>(MethodTypeParams params) =>
      _api.request<T>('photos.saveOwnerCoverPhoto', params);

  /// Saves a profile or community photo. Upload URL can be got with the
  /// [Photos.getOwnerPhotoUploadServer] method.
  Future<ApiResponse<T>> saveOwnerPhoto<T>(MethodTypeParams params) =>
      _api.request<T>('photos.saveOwnerPhoto', params);

  /// Saves a photo to a user's or community's wall after being uploaded.
  Future<ApiResponse<T>> saveWallPhoto<T>(MethodTypeParams params) =>
      _api.request<T>('photos.saveWallPhoto', params);

  /// Returns a list of photos.
  Future<ApiResponse<T>> search<T>(MethodTypeParams params) =>
      _api.request<T>('photos.search', params);
}
