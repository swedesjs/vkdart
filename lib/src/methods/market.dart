part of vkdart.methods;

/// Методы market позволяют работать с товарами в сообществах.
class Market {
  /// Конструктор.
  Market(this._api);
  final Api _api;

  /// Ads a new item to the market.
  MethodTypeReturn add(MethodTypeParams params) =>
      _api.request('market.add', params);

  /// Creates new collection of items
  MethodTypeReturn addAlbum(MethodTypeParams params) =>
      _api.request('market.addAlbum', params);

  // ignore: lines_longer_than_80_chars
  /// Добавляет новое свойство, которое может быть задано для товаров сообщества (например, «цвет», «размер» и т.д.).
  MethodTypeReturn addProperty(MethodTypeParams params) =>
      _api.request('market.addProperty', params);

  /// Добавляет вариант свойства. Всего у свойства может быть 50 вариантов.
  MethodTypeReturn addPropertyVariant(MethodTypeParams params) =>
      _api.request('market.addPropertyVariant', params);

  /// Adds an item to one or multiple collections.
  MethodTypeReturn addToAlbum(MethodTypeParams params) =>
      _api.request('market.addToAlbum', params);

  /// Creates a new comment for an item.
  MethodTypeReturn createComment(MethodTypeParams params) =>
      _api.request('market.createComment', params);

  /// Deletes an item.
  MethodTypeReturn delete(MethodTypeParams params) =>
      _api.request('market.delete', params);

  /// Deletes a collection of items.
  MethodTypeReturn deleteAlbum(MethodTypeParams params) =>
      _api.request('market.deleteAlbum', params);

  /// Deletes an item's comment
  MethodTypeReturn deleteComment(MethodTypeParams params) =>
      _api.request('market.deleteComment', params);

  /// Удаляет свойство товара.
  MethodTypeReturn deleteProperty(MethodTypeParams params) =>
      _api.request('market.deleteProperty', params);

  /// Удаляет вариант свойства.
  MethodTypeReturn deletePropertyVariant(MethodTypeParams params) =>
      _api.request('market.deletePropertyVariant', params);

  /// Edits an item.
  MethodTypeReturn edit(MethodTypeParams params) =>
      _api.request('market.edit', params);

  /// Edits a collection of items
  MethodTypeReturn editAlbum(MethodTypeParams params) =>
      _api.request('market.editAlbum', params);

  /// Chages item comment's text
  MethodTypeReturn editComment(MethodTypeParams params) =>
      _api.request('market.editComment', params);

  /// Edit order
  MethodTypeReturn editOrder(MethodTypeParams params) =>
      _api.request('market.editOrder', params);

  /// Редактирует свойство товара.
  MethodTypeReturn editProperty(MethodTypeParams params) =>
      _api.request('market.editProperty', params);

  /// Редактирует вариант свойства.
  MethodTypeReturn editPropertyVariant(MethodTypeParams params) =>
      _api.request('market.editPropertyVariant', params);

  // ignore: public_member_api_docs
  MethodTypeReturn filterCategories(MethodTypeParams params) =>
      _api.request('market.filterCategories', params);

  /// Returns items list for a community.
  MethodTypeReturn get(MethodTypeParams params) =>
      _api.request('market.get', params);

  /// Returns items album's data
  MethodTypeReturn getAlbumById(MethodTypeParams params) =>
      _api.request('market.getAlbumById', params);

  /// Returns community's market collections list.
  MethodTypeReturn getAlbums(MethodTypeParams params) =>
      _api.request('market.getAlbums', params);

  /// Returns information about market items by their ids.
  MethodTypeReturn getById(MethodTypeParams params) =>
      _api.request('market.getById', params);

  /// Returns a list of market categories.
  MethodTypeReturn getCategories(MethodTypeParams params) =>
      _api.request('market.getCategories', params);

  /// Returns comments list for an item.
  MethodTypeReturn getComments(MethodTypeParams params) =>
      _api.request('market.getComments', params);

  /// Get market orders
  MethodTypeReturn getGroupOrders(MethodTypeParams params) =>
      _api.request('market.getGroupOrders', params);

  /// Get order
  MethodTypeReturn getOrderById(MethodTypeParams params) =>
      _api.request('market.getOrderById', params);

  /// Get market items in the order
  MethodTypeReturn getOrderItems(MethodTypeParams params) =>
      _api.request('market.getOrderItems', params);

  /// Возвращает заказы.
  MethodTypeReturn getOrders(MethodTypeParams params) =>
      _api.request('market.getOrders', params);

  /// Метод для получения ссылки на сервер загрузки изображений
  MethodTypeReturn getProductPhotoUploadServer(MethodTypeParams params) =>
      _api.request('market.getProductPhotoUploadServer', params);

  /// Возвращает список свойств для указанного сообщества.
  MethodTypeReturn getProperties(MethodTypeParams params) =>
      _api.request('market.getProperties', params);

  /// Объединяет товары в группу товаров.
  MethodTypeReturn groupItems(MethodTypeParams params) =>
      _api.request('market.groupItems', params);

  /// Removes an item from one or multiple collections.
  MethodTypeReturn removeFromAlbum(MethodTypeParams params) =>
      _api.request('market.removeFromAlbum', params);

  /// Reorders the collections list.
  MethodTypeReturn reorderAlbums(MethodTypeParams params) =>
      _api.request('market.reorderAlbums', params);

  /// Changes item place in a collection.
  MethodTypeReturn reorderItems(MethodTypeParams params) =>
      _api.request('market.reorderItems', params);

  /// Sends a complaint to the item.
  MethodTypeReturn report(MethodTypeParams params) =>
      _api.request('market.report', params);

  /// Sends a complaint to the item's comment.
  MethodTypeReturn reportComment(MethodTypeParams params) =>
      _api.request('market.reportComment', params);

  /// Restores recently deleted item
  MethodTypeReturn restore(MethodTypeParams params) =>
      _api.request('market.restore', params);

  /// Restores a recently deleted comment
  MethodTypeReturn restoreComment(MethodTypeParams params) =>
      _api.request('market.restoreComment', params);

  /// Метод для сохранения изображений
  MethodTypeReturn saveProductPhoto(MethodTypeParams params) =>
      _api.request('market.saveProductPhoto', params);

  /// Searches market items in a community's catalog
  MethodTypeReturn search(MethodTypeParams params) =>
      _api.request('market.search', params);

  // ignore: public_member_api_docs
  MethodTypeReturn searchItems(MethodTypeParams params) =>
      _api.request('market.searchItems', params);

  // ignore: public_member_api_docs
  MethodTypeReturn searchItemsBasic(MethodTypeParams params) =>
      _api.request('market.searchItemsBasic', params);

  /// Разделяет группу товаров на несколько товаров.
  MethodTypeReturn ungroupItems(MethodTypeParams params) =>
      _api.request('market.ungroupItems', params);
}
