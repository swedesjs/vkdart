import 'package:vkdart/src/api.dart';

/// Методы для работы со стикерами.
class Store {
  /// Конструктор.
  Store(this._api);
  final Api _api;

  /// Adds given sticker IDs to the list of user's favorite stickers
  Future<Map<String, dynamic>> addStickersToFavorite(
    Map<String, Object> params,
  ) =>
      _api.request('store.addStickersToFavorite', params);

  /// Возвращает список избранных стикеров.
  Future<Map<String, dynamic>> getFavoriteStickers(
    Map<String, Object> params,
  ) =>
      _api.request('store.getFavoriteStickers', params);

  /// Возвращает список продуктов.
  Future<Map<String, dynamic>> getProducts(Map<String, Object> params) =>
      _api.request('store.getProducts', params);

  /// Возвращает список ключевых слов для стикеров.
  Future<Map<String, dynamic>> getStickersKeywords(
    Map<String, Object> params,
  ) =>
      _api.request('store.getStickersKeywords', params);

  /// Removes given sticker IDs from the list of user's favorite stickers
  Future<Map<String, dynamic>> removeStickersFromFavorite(
    Map<String, Object> params,
  ) =>
      _api.request('store.removeStickersFromFavorite', params);
}
