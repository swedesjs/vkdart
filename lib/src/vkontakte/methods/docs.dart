import 'package:vkdart/vkontakte.dart';

/// Методы для работы с документами.
class Docs {
  /// Конструктор.
  Docs(this._api);
  final Api _api;

  /// Copies a document to a user's or community's document list.
  Future<ApiResponse<T>> add<T>(Map<String, Object> params) =>
      _api.request<T>('docs.add', params);

  /// Deletes a user or community document.
  Future<ApiResponse<T>> delete<T>(Map<String, Object> params) =>
      _api.request<T>('docs.delete', params);

  /// Edits a document.
  Future<ApiResponse<T>> edit<T>(Map<String, Object> params) =>
      _api.request<T>('docs.edit', params);

  /// Returns detailed information about user or community documents.
  Future<ApiResponse<T>> get<T>(Map<String, Object> params) =>
      _api.request<T>('docs.get', params);

  /// Returns information about documents by their IDs.
  Future<ApiResponse<T>> getById<T>(Map<String, Object> params) =>
      _api.request<T>('docs.getById', params);

  /// Returns the server address for document upload.
  Future<ApiResponse<T>> getMessagesUploadServer<T>(
    Map<String, Object> params,
  ) =>
      _api.request<T>('docs.getMessagesUploadServer', params);

  /// Returns documents types available for current user.
  Future<ApiResponse<T>> getTypes<T>(Map<String, Object> params) =>
      _api.request<T>('docs.getTypes', params);

  /// Returns the server address for document upload.
  Future<ApiResponse<T>> getUploadServer<T>(Map<String, Object> params) =>
      _api.request<T>('docs.getUploadServer', params);

  /// Returns the server address for document upload onto a user's or community's wall.
  Future<ApiResponse<T>> getWallUploadServer<T>(Map<String, Object> params) =>
      _api.request<T>('docs.getWallUploadServer', params);

  /// Saves a document after [uploading it to a server](vk.com/dev/upload_files_2).
  Future<ApiResponse<T>> save<T>(Map<String, Object> params) =>
      _api.request<T>('docs.save', params);

  /// Returns a list of documents matching the search criteria.
  Future<ApiResponse<T>> search<T>(Map<String, Object> params) =>
      _api.request<T>('docs.search', params);
}
