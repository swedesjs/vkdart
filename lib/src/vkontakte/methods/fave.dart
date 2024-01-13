part of '../api.dart';

/// Методы для работы с закладками.
class Fave {
  /// Конструктор.
  Fave(this._api);
  final Api _api;

  /// Добавляет статью в закладки.
  Future<ApiResponse<T>> addArticle<T>(Map<String, Object> params) =>
      _api.request<T>('fave.addArticle', params);

  /// Добавляет ссылку в закладки.
  Future<ApiResponse<T>> addLink<T>(Map<String, Object> params) =>
      _api.request<T>('fave.addLink', params);

  /// Добавляет сообщество или пользователя в закладки.
  Future<ApiResponse<T>> addPage<T>(Map<String, Object> params) =>
      _api.request<T>('fave.addPage', params);

  /// Добавляет запись со стены пользователя или сообщества в закладки.
  Future<ApiResponse<T>> addPost<T>(Map<String, Object> params) =>
      _api.request<T>('fave.addPost', params);

  /// Добавляет товар в закладки.
  Future<ApiResponse<T>> addProduct<T>(Map<String, Object> params) =>
      _api.request<T>('fave.addProduct', params);

  /// Создаёт метку закладок.
  Future<ApiResponse<T>> addTag<T>(Map<String, Object> params) =>
      _api.request<T>('fave.addTag', params);

  /// Добавляет видеозапись в закладки.
  Future<ApiResponse<T>> addVideo<T>(Map<String, Object> params) =>
      _api.request<T>('fave.addVideo', params);

  /// Редактирует метку.
  Future<ApiResponse<T>> editTag<T>(Map<String, Object> params) =>
      _api.request<T>('fave.editTag', params);

  /// Возвращает объекты, добавленные в закладки пользователя.
  Future<ApiResponse<T>> get<T>(Map<String, Object> params) =>
      _api.request<T>('fave.get', params);

  /// Возвращает страницы пользователей и сообществ, добавленных в закладки.
  Future<ApiResponse<T>> getPages<T>(Map<String, Object> params) =>
      _api.request<T>('fave.getPages', params);

  /// Возвращает список меток в закладках.
  Future<ApiResponse<T>> getTags<T>(Map<String, Object> params) =>
      _api.request<T>('fave.getTags', params);

  /// Отмечает закладки как просмотренные.
  Future<ApiResponse<T>> markSeen<T>(Map<String, Object> params) =>
      _api.request<T>('fave.markSeen', params);

  /// Удаляет статью из закладок.
  Future<ApiResponse<T>> removeArticle<T>(Map<String, Object> params) =>
      _api.request<T>('fave.removeArticle', params);

  /// Removes link from the user's faves.
  Future<ApiResponse<T>> removeLink<T>(Map<String, Object> params) =>
      _api.request<T>('fave.removeLink', params);

  /// Удаляет из закладок сообщество или страницу пользователя.
  Future<ApiResponse<T>> removePage<T>(Map<String, Object> params) =>
      _api.request<T>('fave.removePage', params);

  /// Удаляет из закладок запись на стене пользователя или сообщества.
  Future<ApiResponse<T>> removePost<T>(Map<String, Object> params) =>
      _api.request<T>('fave.removePost', params);

  /// Удаляет товар из закладок.
  Future<ApiResponse<T>> removeProduct<T>(Map<String, Object> params) =>
      _api.request<T>('fave.removeProduct', params);

  /// Удаляет метку закладок.
  Future<ApiResponse<T>> removeTag<T>(Map<String, Object> params) =>
      _api.request<T>('fave.removeTag', params);

  /// Удаляет видеозапись из списка закладок.
  Future<ApiResponse<T>> removeVideo<T>(Map<String, Object> params) =>
      _api.request<T>('fave.removeVideo', params);

  /// Меняет порядок меток закладок в списке.
  Future<ApiResponse<T>> reorderTags<T>(Map<String, Object> params) =>
      _api.request<T>('fave.reorderTags', params);

  /// Устанавливает метку странице пользователя или сообщества.
  Future<ApiResponse<T>> setPageTags<T>(Map<String, Object> params) =>
      _api.request<T>('fave.setPageTags', params);

  /// Устанавливает метку выбранному объекту в списке закладок.
  Future<ApiResponse<T>> setTags<T>(Map<String, Object> params) =>
      _api.request<T>('fave.setTags', params);

  /// Устанавливает страницу пользователя или сообщества в топ закладок.
  Future<ApiResponse<T>> trackPageInteraction<T>(Map<String, Object> params) =>
      _api.request<T>('fave.trackPageInteraction', params);
}
