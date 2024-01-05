import 'package:vkdart/src/api.dart';
import 'package:vkdart/src/types/methods.dart';

/// Методы для работы со стикерами.
class Store {
  /// Конструктор.
  Store(this._api);
  final Api _api;

  /// Adds given sticker IDs to the list of user's favorite stickers
  MethodTypeReturn addStickersToFavorite(MethodTypeParams params) =>
      _api.request('store.addStickersToFavorite', params);

  /// Возвращает список избранных стикеров.
  MethodTypeReturn getFavoriteStickers(MethodTypeParams params) =>
      _api.request('store.getFavoriteStickers', params);

  /// Возвращает список продуктов.
  MethodTypeReturn getProducts(MethodTypeParams params) =>
      _api.request('store.getProducts', params);

  /// Возвращает список ключевых слов для стикеров.
  MethodTypeReturn getStickersKeywords(MethodTypeParams params) =>
      _api.request('store.getStickersKeywords', params);

  /// Removes given sticker IDs from the list of user's favorite stickers
  MethodTypeReturn removeStickersFromFavorite(MethodTypeParams params) =>
      _api.request('store.removeStickersFromFavorite', params);
}
