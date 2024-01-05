import 'package:vkdart/src/api.dart';
import 'package:vkdart/src/types/methods.dart';

/// Методы для работы с закладками.
class Fave {
  /// Конструктор.
  Fave(this._api);
  final Api _api;

  /// Добавляет статью в закладки.
  MethodTypeReturn addArticle(MethodTypeParams params) =>
      _api.request('fave.addArticle', params);

  /// Добавляет ссылку в закладки.
  MethodTypeReturn addLink(MethodTypeParams params) =>
      _api.request('fave.addLink', params);

  /// Добавляет сообщество или пользователя в закладки.
  MethodTypeReturn addPage(MethodTypeParams params) =>
      _api.request('fave.addPage', params);

  /// Добавляет запись со стены пользователя или сообщества в закладки.
  MethodTypeReturn addPost(MethodTypeParams params) =>
      _api.request('fave.addPost', params);

  /// Добавляет товар в закладки.
  MethodTypeReturn addProduct(MethodTypeParams params) =>
      _api.request('fave.addProduct', params);

  /// Создаёт метку закладок.
  MethodTypeReturn addTag(MethodTypeParams params) =>
      _api.request('fave.addTag', params);

  /// Добавляет видеозапись в закладки.
  MethodTypeReturn addVideo(MethodTypeParams params) =>
      _api.request('fave.addVideo', params);

  /// Редактирует метку.
  MethodTypeReturn editTag(MethodTypeParams params) =>
      _api.request('fave.editTag', params);

  /// Возвращает объекты, добавленные в закладки пользователя.
  MethodTypeReturn get(MethodTypeParams params) =>
      _api.request('fave.get', params);

  /// Возвращает страницы пользователей и сообществ, добавленных в закладки.
  MethodTypeReturn getPages(MethodTypeParams params) =>
      _api.request('fave.getPages', params);

  /// Возвращает список меток в закладках.
  MethodTypeReturn getTags(MethodTypeParams params) =>
      _api.request('fave.getTags', params);

  /// Отмечает закладки как просмотренные.
  MethodTypeReturn markSeen(MethodTypeParams params) =>
      _api.request('fave.markSeen', params);

  /// Удаляет статью из закладок.
  MethodTypeReturn removeArticle(MethodTypeParams params) =>
      _api.request('fave.removeArticle', params);

  /// Removes link from the user's faves.
  MethodTypeReturn removeLink(MethodTypeParams params) =>
      _api.request('fave.removeLink', params);

  /// Удаляет из закладок сообщество или страницу пользователя.
  MethodTypeReturn removePage(MethodTypeParams params) =>
      _api.request('fave.removePage', params);

  /// Удаляет из закладок запись на стене пользователя или сообщества.
  MethodTypeReturn removePost(MethodTypeParams params) =>
      _api.request('fave.removePost', params);

  /// Удаляет товар из закладок.
  MethodTypeReturn removeProduct(MethodTypeParams params) =>
      _api.request('fave.removeProduct', params);

  /// Удаляет метку закладок.
  MethodTypeReturn removeTag(MethodTypeParams params) =>
      _api.request('fave.removeTag', params);

  /// Удаляет видеозапись из списка закладок.
  MethodTypeReturn removeVideo(MethodTypeParams params) =>
      _api.request('fave.removeVideo', params);

  /// Меняет порядок меток закладок в списке.
  MethodTypeReturn reorderTags(MethodTypeParams params) =>
      _api.request('fave.reorderTags', params);

  /// Устанавливает метку странице пользователя или сообщества.
  MethodTypeReturn setPageTags(MethodTypeParams params) =>
      _api.request('fave.setPageTags', params);

  /// Устанавливает метку выбранному объекту в списке закладок.
  MethodTypeReturn setTags(MethodTypeParams params) =>
      _api.request('fave.setTags', params);

  /// Устанавливает страницу пользователя или сообщества в топ закладок.
  MethodTypeReturn trackPageInteraction(MethodTypeParams params) =>
      _api.request('fave.trackPageInteraction', params);
}
