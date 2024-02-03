import 'package:vkdart/vkontakte.dart';

/// Методы для работы со стикерами.
class Store {
  /// Конструктор.
  Store(this._api);
  final Api _api;

  /// Adds given sticker IDs to the list of user's favorite stickers
  Future<ApiResponse<T>> addStickersToFavorite<T>(Map<String, Object> params) =>
      _api.request<T>('store.addStickersToFavorite', params);

  /// Возвращает список избранных стикеров.
  Future<ApiResponse<T>> getFavoriteStickers<T>(Map<String, Object> params) =>
      _api.request<T>('store.getFavoriteStickers', params);

  /// Возвращает список продуктов.
  Future<ApiResponse<T>> getProducts<T>(Map<String, Object> params) =>
      _api.request<T>('store.getProducts', params);

  /// Возвращает список ключевых слов для стикеров.
  Future<ApiResponse<T>> getStickersKeywords<T>(Map<String, Object> params) =>
      _api.request<T>('store.getStickersKeywords', params);

  /// Removes given sticker IDs from the list of user's favorite stickers
  Future<ApiResponse<T>> removeStickersFromFavorite<T>(
    Map<String, Object> params,
  ) =>
      _api.request<T>('store.removeStickersFromFavorite', params);
}
