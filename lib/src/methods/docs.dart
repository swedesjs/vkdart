part of vkdart.methods;

/// Методы для работы с документами.
class Docs {
  /// Конструктор.
  Docs(this._api);
  final Api _api;

  /// Copies a document to a user's or community's document list.
  MethodTypeReturn add(MethodTypeParams params) =>
      _api.request('docs.add', params);

  /// Deletes a user or community document.
  MethodTypeReturn delete(MethodTypeParams params) =>
      _api.request('docs.delete', params);

  /// Edits a document.
  MethodTypeReturn edit(MethodTypeParams params) =>
      _api.request('docs.edit', params);

  /// Returns detailed information about user or community documents.
  MethodTypeReturn get(MethodTypeParams params) =>
      _api.request('docs.get', params);

  /// Returns information about documents by their IDs.
  MethodTypeReturn getById(MethodTypeParams params) =>
      _api.request('docs.getById', params);

  /// Returns the server address for document upload.
  MethodTypeReturn getMessagesUploadServer(MethodTypeParams params) =>
      _api.request('docs.getMessagesUploadServer', params);

  /// Returns documents types available for current user.
  MethodTypeReturn getTypes(MethodTypeParams params) =>
      _api.request('docs.getTypes', params);

  /// Returns the server address for document upload.
  MethodTypeReturn getUploadServer(MethodTypeParams params) =>
      _api.request('docs.getUploadServer', params);

  // ignore: lines_longer_than_80_chars
  /// Returns the server address for document upload onto a user's or community's wall.
  MethodTypeReturn getWallUploadServer(MethodTypeParams params) =>
      _api.request('docs.getWallUploadServer', params);

  /// Saves a document after [uploading it to a server](vk.com/dev/upload_files_2).
  MethodTypeReturn save(MethodTypeParams params) =>
      _api.request('docs.save', params);

  /// Returns a list of documents matching the search criteria.
  MethodTypeReturn search(MethodTypeParams params) =>
      _api.request('docs.search', params);
}
