import 'package:vkdart/vkontakte.dart';

/// Methods for working with bookmarks.
///
/// See https://dev.vk.com/ru/method/fave
class Fave {
  // ignore: public_member_api_docs
  Fave(this._api);
  final Api _api;

  /// Bookmarks the article.
  Future<ApiResponse<T>> addArticle<T>(Map<String, Object> params) =>
      _api.request<T>('fave.addArticle', params);

  /// Adds a link to bookmarks.
  Future<ApiResponse<T>> addLink<T>(Map<String, Object> params) =>
      _api.request<T>('fave.addLink', params);

  /// Adds a community or user to bookmarks.
  Future<ApiResponse<T>> addPage<T>(Map<String, Object> params) =>
      _api.request<T>('fave.addPage', params);

  /// Adds an entry from the user's or community's wall to bookmarks.
  Future<ApiResponse<T>> addPost<T>(Map<String, Object> params) =>
      _api.request<T>('fave.addPost', params);

  /// Adds the product to the bookmarks.
  Future<ApiResponse<T>> addProduct<T>(Map<String, Object> params) =>
      _api.request<T>('fave.addProduct', params);

  /// Creates a bookmark label.
  Future<ApiResponse<T>> addTag<T>(Map<String, Object> params) =>
      _api.request<T>('fave.addTag', params);

  /// Adds a video recording to bookmarks.
  Future<ApiResponse<T>> addVideo<T>(Map<String, Object> params) =>
      _api.request<T>('fave.addVideo', params);

  /// Edits the label.
  Future<ApiResponse<T>> editTag<T>(Map<String, Object> params) =>
      _api.request<T>('fave.editTag', params);

  /// Returns objects added to the user's bookmarks.
  Future<ApiResponse<T>> get<T>(Map<String, Object> params) =>
      _api.request<T>('fave.get', params);

  /// Returns pages of users and communities that have been added to bookmarks.
  Future<ApiResponse<T>> getPages<T>(Map<String, Object> params) =>
      _api.request<T>('fave.getPages', params);

  /// Returns a list of labels in bookmarks.
  Future<ApiResponse<T>> getTags<T>(Map<String, Object> params) =>
      _api.request<T>('fave.getTags', params);

  /// Marks bookmarks as viewed.
  Future<ApiResponse<T>> markSeen<T>(Map<String, Object> params) =>
      _api.request<T>('fave.markSeen', params);

  /// Deletes an article from bookmarks.
  Future<ApiResponse<T>> removeArticle<T>(Map<String, Object> params) =>
      _api.request<T>('fave.removeArticle', params);

  /// Removes link from the user's faves.
  Future<ApiResponse<T>> removeLink<T>(Map<String, Object> params) =>
      _api.request<T>('fave.removeLink', params);

  /// Deletes a community or a user's page from bookmarks.
  Future<ApiResponse<T>> removePage<T>(Map<String, Object> params) =>
      _api.request<T>('fave.removePage', params);

  /// Deletes an entry on the user's or community's wall from bookmarks.
  Future<ApiResponse<T>> removePost<T>(Map<String, Object> params) =>
      _api.request<T>('fave.removePost', params);

  /// Removes an item from bookmarks.
  Future<ApiResponse<T>> removeProduct<T>(Map<String, Object> params) =>
      _api.request<T>('fave.removeProduct', params);

  /// Deletes the bookmark label.
  Future<ApiResponse<T>> removeTag<T>(Map<String, Object> params) =>
      _api.request<T>('fave.removeTag', params);

  /// Deletes the video from the bookmarks list.
  Future<ApiResponse<T>> removeVideo<T>(Map<String, Object> params) =>
      _api.request<T>('fave.removeVideo', params);

  /// Changes the order of bookmark labels in the list.
  Future<ApiResponse<T>> reorderTags<T>(Map<String, Object> params) =>
      _api.request<T>('fave.reorderTags', params);

  /// Sets the label for the user's or community's page.
  Future<ApiResponse<T>> setPageTags<T>(Map<String, Object> params) =>
      _api.request<T>('fave.setPageTags', params);

  /// Sets a label for the selected object in the bookmarks list.
  Future<ApiResponse<T>> setTags<T>(Map<String, Object> params) =>
      _api.request<T>('fave.setTags', params);

  /// Sets the user's or community's page to the top of bookmarks.
  Future<ApiResponse<T>> trackPageInteraction<T>(Map<String, Object> params) =>
      _api.request<T>('fave.trackPageInteraction', params);
}
