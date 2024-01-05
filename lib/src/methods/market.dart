import 'package:vkdart/src/api.dart';

/// Методы market позволяют работать с товарами в сообществах.
class Market {
  /// Конструктор.
  Market(this._api);
  final Api _api;

  /// Ads a new item to the market.
  Future<Map<String, dynamic>> add(Map<String, Object> params) =>
      _api.request('market.add', params);

  /// Creates new collection of items
  Future<Map<String, dynamic>> addAlbum(Map<String, Object> params) =>
      _api.request('market.addAlbum', params);

  // ignore: lines_longer_than_80_chars
  /// Добавляет новое свойство, которое может быть задано для товаров сообщества (например, «цвет», «размер» и т.д.).
  Future<Map<String, dynamic>> addProperty(Map<String, Object> params) =>
      _api.request('market.addProperty', params);

  /// Добавляет вариант свойства. Всего у свойства может быть 50 вариантов.
  Future<Map<String, dynamic>> addPropertyVariant(Map<String, Object> params) =>
      _api.request('market.addPropertyVariant', params);

  /// Adds an item to one or multiple collections.
  Future<Map<String, dynamic>> addToAlbum(Map<String, Object> params) =>
      _api.request('market.addToAlbum', params);

  /// Creates a new comment for an item.
  Future<Map<String, dynamic>> createComment(Map<String, Object> params) =>
      _api.request('market.createComment', params);

  /// Deletes an item.
  Future<Map<String, dynamic>> delete(Map<String, Object> params) =>
      _api.request('market.delete', params);

  /// Deletes a collection of items.
  Future<Map<String, dynamic>> deleteAlbum(Map<String, Object> params) =>
      _api.request('market.deleteAlbum', params);

  /// Deletes an item's comment
  Future<Map<String, dynamic>> deleteComment(Map<String, Object> params) =>
      _api.request('market.deleteComment', params);

  /// Удаляет свойство товара.
  Future<Map<String, dynamic>> deleteProperty(Map<String, Object> params) =>
      _api.request('market.deleteProperty', params);

  /// Удаляет вариант свойства.
  Future<Map<String, dynamic>> deletePropertyVariant(
    Map<String, Object> params,
  ) =>
      _api.request('market.deletePropertyVariant', params);

  /// Edits an item.
  Future<Map<String, dynamic>> edit(Map<String, Object> params) =>
      _api.request('market.edit', params);

  /// Edits a collection of items
  Future<Map<String, dynamic>> editAlbum(Map<String, Object> params) =>
      _api.request('market.editAlbum', params);

  /// Chages item comment's text
  Future<Map<String, dynamic>> editComment(Map<String, Object> params) =>
      _api.request('market.editComment', params);

  /// Edit order
  Future<Map<String, dynamic>> editOrder(Map<String, Object> params) =>
      _api.request('market.editOrder', params);

  /// Редактирует свойство товара.
  Future<Map<String, dynamic>> editProperty(Map<String, Object> params) =>
      _api.request('market.editProperty', params);

  /// Редактирует вариант свойства.
  Future<Map<String, dynamic>> editPropertyVariant(
    Map<String, Object> params,
  ) =>
      _api.request('market.editPropertyVariant', params);

  // ignore: public_member_api_docs
  Future<Map<String, dynamic>> filterCategories(
    Map<String, Object> params,
  ) =>
      _api.request('market.filterCategories', params);

  /// Returns items list for a community.
  Future<Map<String, dynamic>> get(Map<String, Object> params) =>
      _api.request('market.get', params);

  /// Returns items album's data
  Future<Map<String, dynamic>> getAlbumById(Map<String, Object> params) =>
      _api.request('market.getAlbumById', params);

  /// Returns community's market collections list.
  Future<Map<String, dynamic>> getAlbums(Map<String, Object> params) =>
      _api.request('market.getAlbums', params);

  /// Returns information about market items by their ids.
  Future<Map<String, dynamic>> getById(Map<String, Object> params) =>
      _api.request('market.getById', params);

  /// Returns a list of market categories.
  Future<Map<String, dynamic>> getCategories(Map<String, Object> params) =>
      _api.request('market.getCategories', params);

  /// Returns comments list for an item.
  Future<Map<String, dynamic>> getComments(Map<String, Object> params) =>
      _api.request('market.getComments', params);

  /// Get market orders
  Future<Map<String, dynamic>> getGroupOrders(Map<String, Object> params) =>
      _api.request('market.getGroupOrders', params);

  /// Get order
  Future<Map<String, dynamic>> getOrderById(Map<String, Object> params) =>
      _api.request('market.getOrderById', params);

  /// Get market items in the order
  Future<Map<String, dynamic>> getOrderItems(Map<String, Object> params) =>
      _api.request('market.getOrderItems', params);

  /// Возвращает заказы.
  Future<Map<String, dynamic>> getOrders(Map<String, Object> params) =>
      _api.request('market.getOrders', params);

  /// Метод для получения ссылки на сервер загрузки изображений
  Future<Map<String, dynamic>> getProductPhotoUploadServer(
    Map<String, Object> params,
  ) =>
      _api.request('market.getProductPhotoUploadServer', params);

  /// Возвращает список свойств для указанного сообщества.
  Future<Map<String, dynamic>> getProperties(Map<String, Object> params) =>
      _api.request('market.getProperties', params);

  /// Объединяет товары в группу товаров.
  Future<Map<String, dynamic>> groupItems(Map<String, Object> params) =>
      _api.request('market.groupItems', params);

  /// Removes an item from one or multiple collections.
  Future<Map<String, dynamic>> removeFromAlbum(Map<String, Object> params) =>
      _api.request('market.removeFromAlbum', params);

  /// Reorders the collections list.
  Future<Map<String, dynamic>> reorderAlbums(Map<String, Object> params) =>
      _api.request('market.reorderAlbums', params);

  /// Changes item place in a collection.
  Future<Map<String, dynamic>> reorderItems(Map<String, Object> params) =>
      _api.request('market.reorderItems', params);

  /// Sends a complaint to the item.
  Future<Map<String, dynamic>> report(Map<String, Object> params) =>
      _api.request('market.report', params);

  /// Sends a complaint to the item's comment.
  Future<Map<String, dynamic>> reportComment(Map<String, Object> params) =>
      _api.request('market.reportComment', params);

  /// Restores recently deleted item
  Future<Map<String, dynamic>> restore(Map<String, Object> params) =>
      _api.request('market.restore', params);

  /// Restores a recently deleted comment
  Future<Map<String, dynamic>> restoreComment(Map<String, Object> params) =>
      _api.request('market.restoreComment', params);

  /// Метод для сохранения изображений
  Future<Map<String, dynamic>> saveProductPhoto(Map<String, Object> params) =>
      _api.request('market.saveProductPhoto', params);

  /// Searches market items in a community's catalog
  Future<Map<String, dynamic>> search(Map<String, Object> params) =>
      _api.request('market.search', params);

  // ignore: public_member_api_docs
  Future<Map<String, dynamic>> searchItems(Map<String, Object> params) =>
      _api.request('market.searchItems', params);

  // ignore: public_member_api_docs
  Future<Map<String, dynamic>> searchItemsBasic(Map<String, Object> params) =>
      _api.request('market.searchItemsBasic', params);

  /// Разделяет группу товаров на несколько товаров.
  Future<Map<String, dynamic>> ungroupItems(Map<String, Object> params) =>
      _api.request('market.ungroupItems', params);
}
