import 'package:vkdart/vkontakte.dart';

/// Methods for working with documents.
///
/// See https://dev.vk.com/ru/method/docs
class Docs {
  // ignore: public_member_api_docs
  Docs(this._api);
  final Api _api;

  /// Copies a document to a user's or community's document list.
  Future<Object> add(Map<String, dynamic> params) =>
      _api.request('docs.add', params);

  /// Deletes a user or community document.
  Future<Object> delete(Map<String, dynamic> params) =>
      _api.request('docs.delete', params);

  /// Edits a document.
  Future<Object> edit(Map<String, dynamic> params) =>
      _api.request('docs.edit', params);

  /// Returns detailed information about user or community documents.
  Future<Object> get(Map<String, dynamic> params) =>
      _api.request('docs.get', params);

  /// Returns information about documents by their IDs.
  Future<Object> getById(Map<String, dynamic> params) =>
      _api.request('docs.getById', params);

  /// Returns the server address for document upload.
  Future<Object> getMessagesUploadServer(Map<String, dynamic> params) =>
      _api.request('docs.getMessagesUploadServer', params);

  /// Returns documents types available for current user.
  Future<Object> getTypes(Map<String, dynamic> params) =>
      _api.request('docs.getTypes', params);

  /// Returns the server address for document upload.
  Future<Object> getUploadServer(Map<String, dynamic> params) =>
      _api.request('docs.getUploadServer', params);

  /// Returns the server address for document upload onto a user's or community's wall.
  Future<Object> getWallUploadServer(Map<String, dynamic> params) =>
      _api.request('docs.getWallUploadServer', params);

  /// Saves a document after [uploading it to a server](vk.com/dev/upload_files_2).
  Future<Object> save(Map<String, dynamic> params) =>
      _api.request('docs.save', params);

  /// Returns a list of documents matching the search criteria.
  Future<Object> search(Map<String, dynamic> params) =>
      _api.request('docs.search', params);
}
