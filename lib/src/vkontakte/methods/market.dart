part of '../api.dart';

/// Методы market позволяют работать с товарами в сообществах.
class Market {
  /// Конструктор.
  Market(this._api);
  final Api _api;

  /// Ads a new item to the market.
  Future<ApiResponse<T>> add<T>(Map<String, Object> params) =>
      _api.request<T>('market.add', params);

  /// Creates new collection of items
  Future<ApiResponse<T>> addAlbum<T>(Map<String, Object> params) =>
      _api.request<T>('market.addAlbum', params);

  /// Добавляет новое свойство, которое может быть задано для товаров сообщества (например, «цвет», «размер» и т.д.).
  Future<ApiResponse<T>> addProperty<T>(Map<String, Object> params) =>
      _api.request<T>('market.addProperty', params);

  /// Добавляет вариант свойства. Всего у свойства может быть 50 вариантов.
  Future<ApiResponse<T>> addPropertyVariant<T>(Map<String, Object> params) =>
      _api.request<T>('market.addPropertyVariant', params);

  /// Adds an item to one or multiple collections.
  Future<ApiResponse<T>> addToAlbum<T>(Map<String, Object> params) =>
      _api.request<T>('market.addToAlbum', params);

  /// Creates a new comment for an item.
  Future<ApiResponse<T>> createComment<T>(Map<String, Object> params) =>
      _api.request<T>('market.createComment', params);

  /// Deletes an item.
  Future<ApiResponse<T>> delete<T>(Map<String, Object> params) =>
      _api.request<T>('market.delete', params);

  /// Deletes a collection of items.
  Future<ApiResponse<T>> deleteAlbum<T>(Map<String, Object> params) =>
      _api.request<T>('market.deleteAlbum', params);

  /// Deletes an item's comment
  Future<ApiResponse<T>> deleteComment<T>(Map<String, Object> params) =>
      _api.request<T>('market.deleteComment', params);

  /// Удаляет свойство товара.
  Future<ApiResponse<T>> deleteProperty<T>(Map<String, Object> params) =>
      _api.request<T>('market.deleteProperty', params);

  /// Удаляет вариант свойства.
  Future<ApiResponse<T>> deletePropertyVariant<T>(Map<String, Object> params) =>
      _api.request<T>('market.deletePropertyVariant', params);

  /// Edits an item.
  Future<ApiResponse<T>> edit<T>(Map<String, Object> params) =>
      _api.request<T>('market.edit', params);

  /// Edits a collection of items
  Future<ApiResponse<T>> editAlbum<T>(Map<String, Object> params) =>
      _api.request<T>('market.editAlbum', params);

  /// Chages item comment's text
  Future<ApiResponse<T>> editComment<T>(Map<String, Object> params) =>
      _api.request<T>('market.editComment', params);

  /// Edit order
  Future<ApiResponse<T>> editOrder<T>(Map<String, Object> params) =>
      _api.request<T>('market.editOrder', params);

  /// Редактирует свойство товара.
  Future<ApiResponse<T>> editProperty<T>(Map<String, Object> params) =>
      _api.request<T>('market.editProperty', params);

  /// Редактирует вариант свойства.
  Future<ApiResponse<T>> editPropertyVariant<T>(Map<String, Object> params) =>
      _api.request<T>('market.editPropertyVariant', params);

  // ignore: public_member_api_docs
  Future<ApiResponse<T>> filterCategories<T>(Map<String, Object> params) =>
      _api.request<T>('market.filterCategories', params);

  /// Returns items list for a community.
  Future<ApiResponse<T>> get<T>(Map<String, Object> params) =>
      _api.request<T>('market.get', params);

  /// Returns items album's data
  Future<ApiResponse<T>> getAlbumById<T>(Map<String, Object> params) =>
      _api.request<T>('market.getAlbumById', params);

  /// Returns community's market collections list.
  Future<ApiResponse<T>> getAlbums<T>(Map<String, Object> params) =>
      _api.request<T>('market.getAlbums', params);

  /// Returns information about market items by their ids.
  Future<ApiResponse<T>> getById<T>(Map<String, Object> params) =>
      _api.request<T>('market.getById', params);

  /// Returns a list of market categories.
  Future<ApiResponse<T>> getCategories<T>(Map<String, Object> params) =>
      _api.request<T>('market.getCategories', params);

  /// Returns comments list for an item.
  Future<ApiResponse<T>> getComments<T>(Map<String, Object> params) =>
      _api.request<T>('market.getComments', params);

  /// Get market orders
  Future<ApiResponse<T>> getGroupOrders<T>(Map<String, Object> params) =>
      _api.request<T>('market.getGroupOrders', params);

  /// Get order
  Future<ApiResponse<T>> getOrderById<T>(Map<String, Object> params) =>
      _api.request<T>('market.getOrderById', params);

  /// Get market items in the order
  Future<ApiResponse<T>> getOrderItems<T>(Map<String, Object> params) =>
      _api.request<T>('market.getOrderItems', params);

  /// Возвращает заказы.
  Future<ApiResponse<T>> getOrders<T>(Map<String, Object> params) =>
      _api.request<T>('market.getOrders', params);

  /// Метод для получения ссылки на сервер загрузки изображений
  Future<ApiResponse<T>> getProductPhotoUploadServer<T>(
    Map<String, Object> params,
  ) =>
      _api.request<T>('market.getProductPhotoUploadServer', params);

  /// Возвращает список свойств для указанного сообщества.
  Future<ApiResponse<T>> getProperties<T>(Map<String, Object> params) =>
      _api.request<T>('market.getProperties', params);

  /// Объединяет товары в группу товаров.
  Future<ApiResponse<T>> groupItems<T>(Map<String, Object> params) =>
      _api.request<T>('market.groupItems', params);

  /// Removes an item from one or multiple collections.
  Future<ApiResponse<T>> removeFromAlbum<T>(Map<String, Object> params) =>
      _api.request<T>('market.removeFromAlbum', params);

  /// Reorders the collections list.
  Future<ApiResponse<T>> reorderAlbums<T>(Map<String, Object> params) =>
      _api.request<T>('market.reorderAlbums', params);

  /// Changes item place in a collection.
  Future<ApiResponse<T>> reorderItems<T>(Map<String, Object> params) =>
      _api.request<T>('market.reorderItems', params);

  /// Sends a complaint to the item.
  Future<ApiResponse<T>> report<T>(Map<String, Object> params) =>
      _api.request<T>('market.report', params);

  /// Sends a complaint to the item's comment.
  Future<ApiResponse<T>> reportComment<T>(Map<String, Object> params) =>
      _api.request<T>('market.reportComment', params);

  /// Restores recently deleted item
  Future<ApiResponse<T>> restore<T>(Map<String, Object> params) =>
      _api.request<T>('market.restore', params);

  /// Restores a recently deleted comment
  Future<ApiResponse<T>> restoreComment<T>(Map<String, Object> params) =>
      _api.request<T>('market.restoreComment', params);

  /// Метод для сохранения изображений
  Future<ApiResponse<T>> saveProductPhoto<T>(Map<String, Object> params) =>
      _api.request<T>('market.saveProductPhoto', params);

  /// Searches market items in a community's catalog
  Future<ApiResponse<T>> search<T>(Map<String, Object> params) =>
      _api.request<T>('market.search', params);

  // ignore: public_member_api_docs
  Future<ApiResponse<T>> searchItems<T>(Map<String, Object> params) =>
      _api.request<T>('market.searchItems', params);

  // ignore: public_member_api_docs
  Future<ApiResponse<T>> searchItemsBasic<T>(Map<String, Object> params) =>
      _api.request<T>('market.searchItemsBasic', params);

  /// Разделяет группу товаров на несколько товаров.
  Future<ApiResponse<T>> ungroupItems<T>(Map<String, Object> params) =>
      _api.request<T>('market.ungroupItems', params);
}
