import '../api.dart';

class Docs {
  final Api _api;

  Docs(this._api);

  /// Copies a document to a user's or community's document list.
  Future<Map<String, dynamic>> add(Map<String, Object> params) {
    return _api.request('docs.add', params);
  }

  /// Deletes a user or community document.
  Future<Map<String, dynamic>> delete(Map<String, Object> params) {
    return _api.request('docs.delete', params);
  }

  /// Edits a document.
  Future<Map<String, dynamic>> edit(Map<String, Object> params) {
    return _api.request('docs.edit', params);
  }

  /// Returns detailed information about user or community documents.
  Future<Map<String, dynamic>> get(Map<String, Object> params) {
    return _api.request('docs.get', params);
  }

  /// Returns information about documents by their IDs.
  Future<Map<String, dynamic>> getById(Map<String, Object> params) {
    return _api.request('docs.getById', params);
  }

  /// Returns the server address for document upload.
  Future<Map<String, dynamic>> getMessagesUploadServer(Map<String, Object> params) {
    return _api.request('docs.getMessagesUploadServer', params);
  }

  /// Returns documents types available for current user.
  Future<Map<String, dynamic>> getTypes(Map<String, Object> params) {
    return _api.request('docs.getTypes', params);
  }

  /// Returns the server address for document upload.
  Future<Map<String, dynamic>> getUploadServer(Map<String, Object> params) {
    return _api.request('docs.getUploadServer', params);
  }

  /// Returns the server address for document upload onto a user's or community's wall.
  Future<Map<String, dynamic>> getWallUploadServer(Map<String, Object> params) {
    return _api.request('docs.getWallUploadServer', params);
  }

  /// Saves a document after [vk.com/dev/upload_files_2|uploading it to a server].
  Future<Map<String, dynamic>> save(Map<String, Object> params) {
    return _api.request('docs.save', params);
  }

  /// Returns a list of documents matching the search criteria.
  Future<Map<String, dynamic>> search(Map<String, Object> params) {
    return _api.request('docs.search', params);
  }
}
