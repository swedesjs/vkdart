import 'package:vkdart/vkontakte.dart';

/// Methods for working with bookmarks.
///
/// See https://dev.vk.com/ru/method/fave
class Fave {
  // ignore: public_member_api_docs
  Fave(this._api);
  final Api _api;

  /// Bookmarks the article.
  Future<Object> addArticle(Map<String, dynamic> params) =>
      _api.request('fave.addArticle', params);

  /// Adds a link to bookmarks.
  Future<Object> addLink(Map<String, dynamic> params) =>
      _api.request('fave.addLink', params);

  /// Adds a community or user to bookmarks.
  Future<Object> addPage(Map<String, dynamic> params) =>
      _api.request('fave.addPage', params);

  /// Adds an entry from the user's or community's wall to bookmarks.
  Future<Object> addPost(Map<String, dynamic> params) =>
      _api.request('fave.addPost', params);

  /// Adds the product to the bookmarks.
  Future<Object> addProduct(Map<String, dynamic> params) =>
      _api.request('fave.addProduct', params);

  /// Creates a bookmark label.
  Future<Object> addTag(Map<String, dynamic> params) =>
      _api.request('fave.addTag', params);

  /// Adds a video recording to bookmarks.
  Future<Object> addVideo(Map<String, dynamic> params) =>
      _api.request('fave.addVideo', params);

  /// Edits the label.
  Future<Object> editTag(Map<String, dynamic> params) =>
      _api.request('fave.editTag', params);

  /// Returns objects added to the user's bookmarks.
  Future<Object> get(Map<String, dynamic> params) =>
      _api.request('fave.get', params);

  /// Returns pages of users and communities that have been added to bookmarks.
  Future<Object> getPages(Map<String, dynamic> params) =>
      _api.request('fave.getPages', params);

  /// Returns a list of labels in bookmarks.
  Future<Object> getTags(Map<String, dynamic> params) =>
      _api.request('fave.getTags', params);

  /// Marks bookmarks as viewed.
  Future<Object> markSeen(Map<String, dynamic> params) =>
      _api.request('fave.markSeen', params);

  /// Deletes an article from bookmarks.
  Future<Object> removeArticle(Map<String, dynamic> params) =>
      _api.request('fave.removeArticle', params);

  /// Removes link from the user's faves.
  Future<Object> removeLink(Map<String, dynamic> params) =>
      _api.request('fave.removeLink', params);

  /// Deletes a community or a user's page from bookmarks.
  Future<Object> removePage(Map<String, dynamic> params) =>
      _api.request('fave.removePage', params);

  /// Deletes an entry on the user's or community's wall from bookmarks.
  Future<Object> removePost(Map<String, dynamic> params) =>
      _api.request('fave.removePost', params);

  /// Removes an item from bookmarks.
  Future<Object> removeProduct(Map<String, dynamic> params) =>
      _api.request('fave.removeProduct', params);

  /// Deletes the bookmark label.
  Future<Object> removeTag(Map<String, dynamic> params) =>
      _api.request('fave.removeTag', params);

  /// Deletes the video from the bookmarks list.
  Future<Object> removeVideo(Map<String, dynamic> params) =>
      _api.request('fave.removeVideo', params);

  /// Changes the order of bookmark labels in the list.
  Future<Object> reorderTags(Map<String, dynamic> params) =>
      _api.request('fave.reorderTags', params);

  /// Sets the label for the user's or community's page.
  Future<Object> setPageTags(Map<String, dynamic> params) =>
      _api.request('fave.setPageTags', params);

  /// Sets a label for the selected object in the bookmarks list.
  Future<Object> setTags(Map<String, dynamic> params) =>
      _api.request('fave.setTags', params);

  /// Sets the user's or community's page to the top of bookmarks.
  Future<Object> trackPageInteraction(Map<String, dynamic> params) =>
      _api.request('fave.trackPageInteraction', params);
}
