part of vkdart.methods;

/// Методы для работы с новостной лентой пользователя.
class Newsfeed {
  /// Конструктор.
  Newsfeed(this._api);
  final Api _api;

  /// Prevents news from specified users and communities from appearing
  /// in the current user's newsfeed.
  MethodTypeReturn addBan(MethodTypeParams params) =>
      _api.request('newsfeed.addBan', params);

  /// Allows news from previously banned users and communities
  /// to be shown in the current user's newsfeed.
  MethodTypeReturn deleteBan(MethodTypeParams params) =>
      _api.request('newsfeed.deleteBan', params);

  /// Метод позволяет удалить пользовательский список новостей.
  MethodTypeReturn deleteList(MethodTypeParams params) =>
      _api.request('newsfeed.deleteList', params);

  /// Returns data required to show newsfeed for the current user.
  MethodTypeReturn get(MethodTypeParams params) =>
      _api.request('newsfeed.get', params);

  // ignore: lines_longer_than_80_chars
  /// Returns a list of users and communities banned from the current user's newsfeed.
  MethodTypeReturn getBanned(MethodTypeParams params) =>
      _api.request('newsfeed.getBanned', params);

  /// Returns a list of comments in the current user's newsfeed.
  MethodTypeReturn getComments(MethodTypeParams params) =>
      _api.request('newsfeed.getComments', params);

  /// Returns a list of newsfeeds followed by the current user.
  MethodTypeReturn getLists(MethodTypeParams params) =>
      _api.request('newsfeed.getLists', params);

  // ignore: lines_longer_than_80_chars
  /// Returns a list of posts on user walls in which the current user is mentioned.
  MethodTypeReturn getMentions(MethodTypeParams params) =>
      _api.request('newsfeed.getMentions', params);

  /// , Returns a list of newsfeeds recommended to the current user.
  MethodTypeReturn getRecommended(MethodTypeParams params) =>
      _api.request('newsfeed.getRecommended', params);

  /// Returns communities and users that current user is suggested to follow.
  MethodTypeReturn getSuggestedSources(MethodTypeParams params) =>
      _api.request('newsfeed.getSuggestedSources', params);

  /// Hides an item from the newsfeed.
  MethodTypeReturn ignoreItem(MethodTypeParams params) =>
      _api.request('newsfeed.ignoreItem', params);

  /// Creates and edits user newsfeed lists
  MethodTypeReturn saveList(MethodTypeParams params) =>
      _api.request('newsfeed.saveList', params);

  /// Returns search results by statuses.
  MethodTypeReturn search(MethodTypeParams params) =>
      _api.request('newsfeed.search', params);

  /// Returns a hidden item to the newsfeed.
  MethodTypeReturn unignoreItem(MethodTypeParams params) =>
      _api.request('newsfeed.unignoreItem', params);

  /// Unsubscribes the current user from specified newsfeeds.
  MethodTypeReturn unsubscribe(MethodTypeParams params) =>
      _api.request('newsfeed.unsubscribe', params);
}
