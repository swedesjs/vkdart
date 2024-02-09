import 'package:vkdart/vkontakte.dart';

/// Methods for working with the user's news feed.
///
/// See https://dev.vk.com/ru/method/newsfeed
class Newsfeed {
  // ignore: public_member_api_docs
  Newsfeed(this._api);
  final Api _api;

  /// Prevents news from specified users and communities from appearing
  /// in the current user's newsfeed.
  Future<Object> addBan(Map<String, dynamic> params) =>
      _api.request('newsfeed.addBan', params);

  /// Allows news from previously banned users and communities
  /// to be shown in the current user's newsfeed.
  Future<Object> deleteBan(Map<String, dynamic> params) =>
      _api.request('newsfeed.deleteBan', params);

  /// The method allows you to delete a custom news list.
  Future<Object> deleteList(Map<String, dynamic> params) =>
      _api.request('newsfeed.deleteList', params);

  /// Returns data required to show newsfeed for the current user.
  Future<Object> get(Map<String, dynamic> params) =>
      _api.request('newsfeed.get', params);

  /// Returns a list of users and communities banned from the current user's newsfeed.
  Future<Object> getBanned(Map<String, dynamic> params) =>
      _api.request('newsfeed.getBanned', params);

  /// Returns a list of comments in the current user's newsfeed.
  Future<Object> getComments(Map<String, dynamic> params) =>
      _api.request('newsfeed.getComments', params);

  /// Returns a list of newsfeeds followed by the current user.
  Future<Object> getLists(Map<String, dynamic> params) =>
      _api.request('newsfeed.getLists', params);

  /// Returns a list of posts on user walls in which the current user is mentioned.
  Future<Object> getMentions(Map<String, dynamic> params) =>
      _api.request('newsfeed.getMentions', params);

  /// , Returns a list of newsfeeds recommended to the current user.
  Future<Object> getRecommended(Map<String, dynamic> params) =>
      _api.request('newsfeed.getRecommended', params);

  /// Returns communities and users that current user is suggested to follow.
  Future<Object> getSuggestedSources(Map<String, dynamic> params) =>
      _api.request('newsfeed.getSuggestedSources', params);

  /// Hides an item from the newsfeed.
  Future<Object> ignoreItem(Map<String, dynamic> params) =>
      _api.request('newsfeed.ignoreItem', params);

  /// Creates and edits user newsfeed lists
  Future<Object> saveList(Map<String, dynamic> params) =>
      _api.request('newsfeed.saveList', params);

  /// Returns search results by statuses.
  Future<Object> search(Map<String, dynamic> params) =>
      _api.request('newsfeed.search', params);

  /// Returns a hidden item to the newsfeed.
  Future<Object> unignoreItem(Map<String, dynamic> params) =>
      _api.request('newsfeed.unignoreItem', params);

  /// Unsubscribes the current user from specified newsfeeds.
  Future<Object> unsubscribe(Map<String, dynamic> params) =>
      _api.request('newsfeed.unsubscribe', params);
}
