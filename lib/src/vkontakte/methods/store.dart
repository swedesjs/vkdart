import 'package:vkdart/vkontakte.dart';

/// Methods for working with stickers.
///
/// See https://dev.vk.com/ru/method/store
class Store {
  // ignore: public_member_api_docs
  Store(this._api);
  final Api _api;

  /// Adds given sticker IDs to the list of user's favorite stickers
  Future<ApiResponse<T>> addStickersToFavorite<T>(Map<String, Object> params) =>
      _api.request<T>('store.addStickersToFavorite', params);

  /// Returns a list of favorite stickers.
  Future<ApiResponse<T>> getFavoriteStickers<T>(Map<String, Object> params) =>
      _api.request<T>('store.getFavoriteStickers', params);

  /// Returns a list of products.
  Future<ApiResponse<T>> getProducts<T>(Map<String, Object> params) =>
      _api.request<T>('store.getProducts', params);

  /// Returns a list of keywords for stickers.
  Future<ApiResponse<T>> getStickersKeywords<T>(Map<String, Object> params) =>
      _api.request<T>('store.getStickersKeywords', params);

  /// Removes given sticker IDs from the list of user's favorite stickers
  Future<ApiResponse<T>> removeStickersFromFavorite<T>(
    Map<String, Object> params,
  ) =>
      _api.request<T>('store.removeStickersFromFavorite', params);
}
