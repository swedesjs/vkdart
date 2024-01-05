part of vkdart.methods;

/// Методы для работы с записями на стене.
class Wall {
  /// Конструктор.
  Wall(this._api);
  final Api _api;

  /// Добавить лайк на запись.
  MethodTypeReturn addLike(MethodTypeParams params) =>
      _api.request('wall.addLike', params);

  // ignore: public_member_api_docs
  MethodTypeReturn checkCopyrightLink(MethodTypeParams params) =>
      _api.request('wall.checkCopyrightLink', params);

  /// Закрыть комментарии к посту.
  MethodTypeReturn closeComments(MethodTypeParams params) =>
      _api.request('wall.closeComments', params);

  /// Adds a comment to a post on a user wall or community wall.
  MethodTypeReturn createComment(MethodTypeParams params) =>
      _api.request('wall.createComment', params);

  /// Deletes a post from a user wall or community wall.
  MethodTypeReturn delete(MethodTypeParams params) =>
      _api.request('wall.delete', params);

  /// Deletes a comment on a post on a user wall or community wall.
  MethodTypeReturn deleteComment(MethodTypeParams params) =>
      _api.request('wall.deleteComment', params);

  /// Edits a post on a user wall or community wall.
  MethodTypeReturn edit(MethodTypeParams params) =>
      _api.request('wall.edit', params);

  /// Allows to edit hidden post.
  MethodTypeReturn editAdsStealth(MethodTypeParams params) =>
      _api.request('wall.editAdsStealth', params);

  /// Edits a comment on a user wall or community wall.
  MethodTypeReturn editComment(MethodTypeParams params) =>
      _api.request('wall.editComment', params);

  /// Returns a list of posts on a user wall or community wall.
  MethodTypeReturn get(MethodTypeParams params) =>
      _api.request('wall.get', params);

  /// Returns a list of posts from user or community walls by their IDs.
  MethodTypeReturn getById(MethodTypeParams params) =>
      _api.request('wall.getById', params);

  /// Returns a comment on a post on a user wall or community wall.
  MethodTypeReturn getComment(MethodTypeParams params) =>
      _api.request('wall.getComment', params);

  /// Returns a list of comments on a post on a user wall or community wall.
  MethodTypeReturn getComments(MethodTypeParams params) =>
      _api.request('wall.getComments', params);

  // ignore: lines_longer_than_80_chars
  /// Returns information about reposts of a post on user wall or community wall.
  MethodTypeReturn getReposts(MethodTypeParams params) =>
      _api.request('wall.getReposts', params);

  /// Открыть комментарии к посту.
  MethodTypeReturn openComments(MethodTypeParams params) =>
      _api.request('wall.openComments', params);

  /// Принимает на вход ссылки и возвращает дополнительную информацию,
  // ignore: lines_longer_than_80_chars
  /// которая может быть использована для создания сниппетов при публикации ссылки на стене пользователя и других ресурсах.
  MethodTypeReturn parseAttachedLink(MethodTypeParams params) =>
      _api.request('wall.parseAttachedLink', params);

  /// Pins the post on wall.
  MethodTypeReturn pin(MethodTypeParams params) =>
      _api.request('wall.pin', params);

  /// Adds a new post on a user wall or community wall. Can also be used to
  /// publish suggested or scheduled posts.
  MethodTypeReturn post(MethodTypeParams params) =>
      _api.request('wall.post', params);

  // ignore: lines_longer_than_80_chars
  /// Allows to create hidden post which will not be shown on the community's wall
  /// and can be used for creating an ad with type "Community post".
  MethodTypeReturn postAdsStealth(MethodTypeParams params) =>
      _api.request('wall.postAdsStealth', params);

  // ignore: lines_longer_than_80_chars
  /// Reports (submits a complaint about) a comment on a post on a user wall or community wall.
  MethodTypeReturn reportComment(MethodTypeParams params) =>
      _api.request('wall.reportComment', params);

  // ignore: lines_longer_than_80_chars
  /// Reports (submits a complaint about) a post on a user wall or community wall.
  MethodTypeReturn reportPost(MethodTypeParams params) =>
      _api.request('wall.reportPost', params);

  /// Reposts (copies) an object to a user wall or community wall.
  MethodTypeReturn repost(MethodTypeParams params) =>
      _api.request('wall.repost', params);

  /// Restores a post deleted from a user wall or community wall.
  MethodTypeReturn restore(MethodTypeParams params) =>
      _api.request('wall.restore', params);

  /// Restores a comment deleted from a user wall or community wall.
  MethodTypeReturn restoreComment(MethodTypeParams params) =>
      _api.request('wall.restoreComment', params);

  /// Allows to search posts on user or community walls.
  MethodTypeReturn search(MethodTypeParams params) =>
      _api.request('wall.search', params);

  /// Unpins the post on wall.
  MethodTypeReturn unpin(MethodTypeParams params) =>
      _api.request('wall.unpin', params);
}
