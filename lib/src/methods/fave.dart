import '../api.dart';

class Fave {
  final Api _api;

  Fave(this._api);

  Future<Map<String, dynamic>> addArticle(Map<String, Object> params) {
    return _api.request('fave.addArticle', params);
  }

  /// Adds a link to user faves.
  Future<Map<String, dynamic>> addLink(Map<String, Object> params) {
    return _api.request('fave.addLink', params);
  }

  Future<Map<String, dynamic>> addPage(Map<String, Object> params) {
    return _api.request('fave.addPage', params);
  }

  Future<Map<String, dynamic>> addPost(Map<String, Object> params) {
    return _api.request('fave.addPost', params);
  }

  Future<Map<String, dynamic>> addProduct(Map<String, Object> params) {
    return _api.request('fave.addProduct', params);
  }

  Future<Map<String, dynamic>> addTag(Map<String, Object> params) {
    return _api.request('fave.addTag', params);
  }

  Future<Map<String, dynamic>> addVideo(Map<String, Object> params) {
    return _api.request('fave.addVideo', params);
  }

  Future<Map<String, dynamic>> editTag(Map<String, Object> params) {
    return _api.request('fave.editTag', params);
  }

  Future<Map<String, dynamic>> get(Map<String, Object> params) {
    return _api.request('fave.get', params);
  }

  Future<Map<String, dynamic>> getPages(Map<String, Object> params) {
    return _api.request('fave.getPages', params);
  }

  Future<Map<String, dynamic>> getTags(Map<String, Object> params) {
    return _api.request('fave.getTags', params);
  }

  Future<Map<String, dynamic>> markSeen(Map<String, Object> params) {
    return _api.request('fave.markSeen', params);
  }

  Future<Map<String, dynamic>> removeArticle(Map<String, Object> params) {
    return _api.request('fave.removeArticle', params);
  }

  /// Removes link from the user's faves.
  Future<Map<String, dynamic>> removeLink(Map<String, Object> params) {
    return _api.request('fave.removeLink', params);
  }

  Future<Map<String, dynamic>> removePage(Map<String, Object> params) {
    return _api.request('fave.removePage', params);
  }

  Future<Map<String, dynamic>> removePost(Map<String, Object> params) {
    return _api.request('fave.removePost', params);
  }

  Future<Map<String, dynamic>> removeProduct(Map<String, Object> params) {
    return _api.request('fave.removeProduct', params);
  }

  Future<Map<String, dynamic>> removeTag(Map<String, Object> params) {
    return _api.request('fave.removeTag', params);
  }

  Future<Map<String, dynamic>> removeVideo(Map<String, Object> params) {
    return _api.request('fave.removeVideo', params);
  }

  Future<Map<String, dynamic>> reorderTags(Map<String, Object> params) {
    return _api.request('fave.reorderTags', params);
  }

  Future<Map<String, dynamic>> setPageTags(Map<String, Object> params) {
    return _api.request('fave.setPageTags', params);
  }

  Future<Map<String, dynamic>> setTags(Map<String, Object> params) {
    return _api.request('fave.setTags', params);
  }

  Future<Map<String, dynamic>> trackPageInteraction(Map<String, Object> params) {
    return _api.request('fave.trackPageInteraction', params);
  }
}
