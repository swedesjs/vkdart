import '../api.dart';

class Store {
  final Api _api;

  Store(this._api);

  /// Adds given sticker IDs to the list of user's favorite stickers
  Future<Map<String, dynamic>> addStickersToFavorite(Map<String, Object> params) {
    return _api.request('store.addStickersToFavorite', params);
  }

  Future<Map<String, dynamic>> getFavoriteStickers(Map<String, Object> params) {
    return _api.request('store.getFavoriteStickers', params);
  }

  Future<Map<String, dynamic>> getProducts(Map<String, Object> params) {
    return _api.request('store.getProducts', params);
  }

  Future<Map<String, dynamic>> getStickersKeywords(Map<String, Object> params) {
    return _api.request('store.getStickersKeywords', params);
  }

  /// Removes given sticker IDs from the list of user's favorite stickers
  Future<Map<String, dynamic>> removeStickersFromFavorite(Map<String, Object> params) {
    return _api.request('store.removeStickersFromFavorite', params);
  }
}
