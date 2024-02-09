import 'package:vkdart/vkontakte.dart';

/// Methods for working with stickers.
///
/// See https://dev.vk.com/ru/method/store
class Store {
  // ignore: public_member_api_docs
  Store(this._api);
  final Api _api;

  /// Adds given sticker IDs to the list of user's favorite stickers
  Future<Object> addStickersToFavorite(Map<String, dynamic> params) =>
      _api.request('store.addStickersToFavorite', params);

  /// Returns a list of favorite stickers.
  Future<Object> getFavoriteStickers(Map<String, dynamic> params) =>
      _api.request('store.getFavoriteStickers', params);

  /// Returns a list of products.
  Future<Object> getProducts(Map<String, dynamic> params) =>
      _api.request('store.getProducts', params);

  /// Returns a list of keywords for stickers.
  Future<Object> getStickersKeywords(Map<String, dynamic> params) =>
      _api.request('store.getStickersKeywords', params);

  /// Removes given sticker IDs from the list of user's favorite stickers
  Future<Object> removeStickersFromFavorite(Map<String, dynamic> params) =>
      _api.request('store.removeStickersFromFavorite', params);
}
