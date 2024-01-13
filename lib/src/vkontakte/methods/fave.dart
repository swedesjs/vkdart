part of '../../methods.dart';

/// Методы для работы с закладками.
class Fave {
  /// Конструктор.
  Fave(this._api);
  final Api _api;

  /// Добавляет статью в закладки.
  Future<ApiResponse<T>> addArticle<T>(MethodTypeParams params) =>
      _api.request<T>('fave.addArticle', params);

  /// Добавляет ссылку в закладки.
  Future<ApiResponse<T>> addLink<T>(MethodTypeParams params) =>
      _api.request<T>('fave.addLink', params);

  /// Добавляет сообщество или пользователя в закладки.
  Future<ApiResponse<T>> addPage<T>(MethodTypeParams params) =>
      _api.request<T>('fave.addPage', params);

  /// Добавляет запись со стены пользователя или сообщества в закладки.
  Future<ApiResponse<T>> addPost<T>(MethodTypeParams params) =>
      _api.request<T>('fave.addPost', params);

  /// Добавляет товар в закладки.
  Future<ApiResponse<T>> addProduct<T>(MethodTypeParams params) =>
      _api.request<T>('fave.addProduct', params);

  /// Создаёт метку закладок.
  Future<ApiResponse<T>> addTag<T>(MethodTypeParams params) =>
      _api.request<T>('fave.addTag', params);

  /// Добавляет видеозапись в закладки.
  Future<ApiResponse<T>> addVideo<T>(MethodTypeParams params) =>
      _api.request<T>('fave.addVideo', params);

  /// Редактирует метку.
  Future<ApiResponse<T>> editTag<T>(MethodTypeParams params) =>
      _api.request<T>('fave.editTag', params);

  /// Возвращает объекты, добавленные в закладки пользователя.
  Future<ApiResponse<T>> get<T>(MethodTypeParams params) =>
      _api.request<T>('fave.get', params);

  /// Возвращает страницы пользователей и сообществ, добавленных в закладки.
  Future<ApiResponse<T>> getPages<T>(MethodTypeParams params) =>
      _api.request<T>('fave.getPages', params);

  /// Возвращает список меток в закладках.
  Future<ApiResponse<T>> getTags<T>(MethodTypeParams params) =>
      _api.request<T>('fave.getTags', params);

  /// Отмечает закладки как просмотренные.
  Future<ApiResponse<T>> markSeen<T>(MethodTypeParams params) =>
      _api.request<T>('fave.markSeen', params);

  /// Удаляет статью из закладок.
  Future<ApiResponse<T>> removeArticle<T>(MethodTypeParams params) =>
      _api.request<T>('fave.removeArticle', params);

  /// Removes link from the user's faves.
  Future<ApiResponse<T>> removeLink<T>(MethodTypeParams params) =>
      _api.request<T>('fave.removeLink', params);

  /// Удаляет из закладок сообщество или страницу пользователя.
  Future<ApiResponse<T>> removePage<T>(MethodTypeParams params) =>
      _api.request<T>('fave.removePage', params);

  /// Удаляет из закладок запись на стене пользователя или сообщества.
  Future<ApiResponse<T>> removePost<T>(MethodTypeParams params) =>
      _api.request<T>('fave.removePost', params);

  /// Удаляет товар из закладок.
  Future<ApiResponse<T>> removeProduct<T>(MethodTypeParams params) =>
      _api.request<T>('fave.removeProduct', params);

  /// Удаляет метку закладок.
  Future<ApiResponse<T>> removeTag<T>(MethodTypeParams params) =>
      _api.request<T>('fave.removeTag', params);

  /// Удаляет видеозапись из списка закладок.
  Future<ApiResponse<T>> removeVideo<T>(MethodTypeParams params) =>
      _api.request<T>('fave.removeVideo', params);

  /// Меняет порядок меток закладок в списке.
  Future<ApiResponse<T>> reorderTags<T>(MethodTypeParams params) =>
      _api.request<T>('fave.reorderTags', params);

  /// Устанавливает метку странице пользователя или сообщества.
  Future<ApiResponse<T>> setPageTags<T>(MethodTypeParams params) =>
      _api.request<T>('fave.setPageTags', params);

  /// Устанавливает метку выбранному объекту в списке закладок.
  Future<ApiResponse<T>> setTags<T>(MethodTypeParams params) =>
      _api.request<T>('fave.setTags', params);

  /// Устанавливает страницу пользователя или сообщества в топ закладок.
  Future<ApiResponse<T>> trackPageInteraction<T>(MethodTypeParams params) =>
      _api.request<T>('fave.trackPageInteraction', params);
}
