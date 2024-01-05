import 'package:vkdart/src/api.dart';

/// Методы для работы с закладками.
class Fave {
  /// Конструктор.
  Fave(this._api);
  final Api _api;

  /// Добавляет статью в закладки.
  Future<Map<String, dynamic>> addArticle(Map<String, Object> params) =>
      _api.request('fave.addArticle', params);

  /// Добавляет ссылку в закладки.
  Future<Map<String, dynamic>> addLink(Map<String, Object> params) =>
      _api.request('fave.addLink', params);

  /// Добавляет сообщество или пользователя в закладки.
  Future<Map<String, dynamic>> addPage(Map<String, Object> params) =>
      _api.request('fave.addPage', params);

  /// Добавляет запись со стены пользователя или сообщества в закладки.
  Future<Map<String, dynamic>> addPost(Map<String, Object> params) =>
      _api.request('fave.addPost', params);

  /// Добавляет товар в закладки.
  Future<Map<String, dynamic>> addProduct(Map<String, Object> params) =>
      _api.request('fave.addProduct', params);

  /// Создаёт метку закладок.
  Future<Map<String, dynamic>> addTag(Map<String, Object> params) =>
      _api.request('fave.addTag', params);

  /// Добавляет видеозапись в закладки.
  Future<Map<String, dynamic>> addVideo(Map<String, Object> params) =>
      _api.request('fave.addVideo', params);

  /// Редактирует метку.
  Future<Map<String, dynamic>> editTag(Map<String, Object> params) =>
      _api.request('fave.editTag', params);

  /// Возвращает объекты, добавленные в закладки пользователя.
  Future<Map<String, dynamic>> get(Map<String, Object> params) =>
      _api.request('fave.get', params);

  /// Возвращает страницы пользователей и сообществ, добавленных в закладки.
  Future<Map<String, dynamic>> getPages(Map<String, Object> params) =>
      _api.request('fave.getPages', params);

  /// Возвращает список меток в закладках.
  Future<Map<String, dynamic>> getTags(Map<String, Object> params) =>
      _api.request('fave.getTags', params);

  /// Отмечает закладки как просмотренные.
  Future<Map<String, dynamic>> markSeen(Map<String, Object> params) =>
      _api.request('fave.markSeen', params);

  /// Удаляет статью из закладок.
  Future<Map<String, dynamic>> removeArticle(Map<String, Object> params) =>
      _api.request('fave.removeArticle', params);

  /// Removes link from the user's faves.
  Future<Map<String, dynamic>> removeLink(Map<String, Object> params) =>
      _api.request('fave.removeLink', params);

  /// Удаляет из закладок сообщество или страницу пользователя.
  Future<Map<String, dynamic>> removePage(Map<String, Object> params) =>
      _api.request('fave.removePage', params);

  /// Удаляет из закладок запись на стене пользователя или сообщества.
  Future<Map<String, dynamic>> removePost(Map<String, Object> params) =>
      _api.request('fave.removePost', params);

  /// Удаляет товар из закладок.
  Future<Map<String, dynamic>> removeProduct(Map<String, Object> params) =>
      _api.request('fave.removeProduct', params);

  /// Удаляет метку закладок.
  Future<Map<String, dynamic>> removeTag(Map<String, Object> params) =>
      _api.request('fave.removeTag', params);

  /// Удаляет видеозапись из списка закладок.
  Future<Map<String, dynamic>> removeVideo(Map<String, Object> params) =>
      _api.request('fave.removeVideo', params);

  /// Меняет порядок меток закладок в списке.
  Future<Map<String, dynamic>> reorderTags(Map<String, Object> params) =>
      _api.request('fave.reorderTags', params);

  /// Устанавливает метку странице пользователя или сообщества.
  Future<Map<String, dynamic>> setPageTags(Map<String, Object> params) =>
      _api.request('fave.setPageTags', params);

  /// Устанавливает метку выбранному объекту в списке закладок.
  Future<Map<String, dynamic>> setTags(Map<String, Object> params) =>
      _api.request('fave.setTags', params);

  /// Устанавливает страницу пользователя или сообщества в топ закладок.
  Future<Map<String, dynamic>> trackPageInteraction(
    Map<String, Object> params,
  ) =>
      _api.request('fave.trackPageInteraction', params);
}
