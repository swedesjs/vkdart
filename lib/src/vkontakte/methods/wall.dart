part of '../../methods.dart';

/// Методы для работы с записями на стене.
class Wall {
  /// Конструктор.
  Wall(this._api);
  final Api _api;

  /// Добавить лайк на запись.
  Future<ApiResponse<T>> addLike<T>(MethodTypeParams params) =>
      _api.request<T>('wall.addLike', params);

  // ignore: public_member_api_docs
  Future<ApiResponse<T>> checkCopyrightLink<T>(MethodTypeParams params) =>
      _api.request<T>('wall.checkCopyrightLink', params);

  /// Закрыть комментарии к посту.
  Future<ApiResponse<T>> closeComments<T>(MethodTypeParams params) =>
      _api.request<T>('wall.closeComments', params);

  /// Adds a comment to a post on a user wall or community wall.
  Future<ApiResponse<T>> createComment<T>(MethodTypeParams params) =>
      _api.request<T>('wall.createComment', params);

  /// Deletes a post from a user wall or community wall.
  Future<ApiResponse<T>> delete<T>(MethodTypeParams params) =>
      _api.request<T>('wall.delete', params);

  /// Deletes a comment on a post on a user wall or community wall.
  Future<ApiResponse<T>> deleteComment<T>(MethodTypeParams params) =>
      _api.request<T>('wall.deleteComment', params);

  /// Edits a post on a user wall or community wall.
  Future<ApiResponse<T>> edit<T>(MethodTypeParams params) =>
      _api.request<T>('wall.edit', params);

  /// Allows to edit hidden post.
  Future<ApiResponse<T>> editAdsStealth<T>(MethodTypeParams params) =>
      _api.request<T>('wall.editAdsStealth', params);

  /// Edits a comment on a user wall or community wall.
  Future<ApiResponse<T>> editComment<T>(MethodTypeParams params) =>
      _api.request<T>('wall.editComment', params);

  /// Returns a list of posts on a user wall or community wall.
  Future<ApiResponse<T>> get<T>(MethodTypeParams params) =>
      _api.request<T>('wall.get', params);

  /// Returns a list of posts from user or community walls by their IDs.
  Future<ApiResponse<T>> getById<T>(MethodTypeParams params) =>
      _api.request<T>('wall.getById', params);

  /// Returns a comment on a post on a user wall or community wall.
  Future<ApiResponse<T>> getComment<T>(MethodTypeParams params) =>
      _api.request<T>('wall.getComment', params);

  /// Returns a list of comments on a post on a user wall or community wall.
  Future<ApiResponse<T>> getComments<T>(MethodTypeParams params) =>
      _api.request<T>('wall.getComments', params);

  /// Returns information about reposts of a post on user wall or community wall.
  Future<ApiResponse<T>> getReposts<T>(MethodTypeParams params) =>
      _api.request<T>('wall.getReposts', params);

  /// Открыть комментарии к посту.
  Future<ApiResponse<T>> openComments<T>(MethodTypeParams params) =>
      _api.request<T>('wall.openComments', params);

  /// Принимает на вход ссылки и возвращает дополнительную информацию,

  /// которая может быть использована для создания сниппетов при публикации ссылки на стене пользователя и других ресурсах.
  Future<ApiResponse<T>> parseAttachedLink<T>(MethodTypeParams params) =>
      _api.request<T>('wall.parseAttachedLink', params);

  /// Pins the post on wall.
  Future<ApiResponse<T>> pin<T>(MethodTypeParams params) =>
      _api.request<T>('wall.pin', params);

  /// Adds a new post on a user wall or community wall. Can also be used to
  /// publish suggested or scheduled posts.
  Future<ApiResponse<T>> post<T>(MethodTypeParams params) =>
      _api.request<T>('wall.post', params);

  /// Allows to create hidden post which will not be shown on the community's wall
  /// and can be used for creating an ad with type "Community post".
  Future<ApiResponse<T>> postAdsStealth<T>(MethodTypeParams params) =>
      _api.request<T>('wall.postAdsStealth', params);

  /// Reports (submits a complaint about) a comment on a post on a user wall or community wall.
  Future<ApiResponse<T>> reportComment<T>(MethodTypeParams params) =>
      _api.request<T>('wall.reportComment', params);

  /// Reports (submits a complaint about) a post on a user wall or community wall.
  Future<ApiResponse<T>> reportPost<T>(MethodTypeParams params) =>
      _api.request<T>('wall.reportPost', params);

  /// Reposts (copies) an object to a user wall or community wall.
  Future<ApiResponse<T>> repost<T>(MethodTypeParams params) =>
      _api.request<T>('wall.repost', params);

  /// Restores a post deleted from a user wall or community wall.
  Future<ApiResponse<T>> restore<T>(MethodTypeParams params) =>
      _api.request<T>('wall.restore', params);

  /// Restores a comment deleted from a user wall or community wall.
  Future<ApiResponse<T>> restoreComment<T>(MethodTypeParams params) =>
      _api.request<T>('wall.restoreComment', params);

  /// Allows to search posts on user or community walls.
  Future<ApiResponse<T>> search<T>(MethodTypeParams params) =>
      _api.request<T>('wall.search', params);

  /// Unpins the post on wall.
  Future<ApiResponse<T>> unpin<T>(MethodTypeParams params) =>
      _api.request<T>('wall.unpin', params);
}
