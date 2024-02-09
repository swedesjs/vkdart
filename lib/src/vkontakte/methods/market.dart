import 'package:vkdart/vkontakte.dart';

/// Market methods allow you to work with products in communities.
///
/// See https://dev.vk.com/ru/method/market
class Market {
  // ignore: public_member_api_docs
  Market(this._api);
  final Api _api;

  /// Ads a new item to the market.
  Future<Object> add(Map<String, dynamic> params) =>
      _api.request('market.add', params);

  /// Creates new collection of items
  Future<Object> addAlbum(Map<String, dynamic> params) =>
      _api.request('market.addAlbum', params);

  /// Adds a new property that can be set for community products (for example, "color", "size", etc.).
  Future<Object> addProperty(Map<String, dynamic> params) =>
      _api.request('market.addProperty', params);

  /// Adds a property option. In total, a property can have 50 options.
  Future<Object> addPropertyVariant(Map<String, dynamic> params) =>
      _api.request('market.addPropertyVariant', params);

  /// Adds an item to one or multiple collections.
  Future<Object> addToAlbum(Map<String, dynamic> params) =>
      _api.request('market.addToAlbum', params);

  /// Creates a new comment for an item.
  Future<Object> createComment(Map<String, dynamic> params) =>
      _api.request('market.createComment', params);

  /// Deletes an item.
  Future<Object> delete(Map<String, dynamic> params) =>
      _api.request('market.delete', params);

  /// Deletes a collection of items.
  Future<Object> deleteAlbum(Map<String, dynamic> params) =>
      _api.request('market.deleteAlbum', params);

  /// Deletes an item's comment
  Future<Object> deleteComment(Map<String, dynamic> params) =>
      _api.request('market.deleteComment', params);

  /// Deletes a product property.
  Future<Object> deleteProperty(Map<String, dynamic> params) =>
      _api.request('market.deleteProperty', params);

  /// Deletes the property option.
  Future<Object> deletePropertyVariant(Map<String, dynamic> params) =>
      _api.request('market.deletePropertyVariant', params);

  /// Edits an item.
  Future<Object> edit(Map<String, dynamic> params) =>
      _api.request('market.edit', params);

  /// Edits a collection of items
  Future<Object> editAlbum(Map<String, dynamic> params) =>
      _api.request('market.editAlbum', params);

  /// Chages item comment's text
  Future<Object> editComment(Map<String, dynamic> params) =>
      _api.request('market.editComment', params);

  /// Edit order
  Future<Object> editOrder(Map<String, dynamic> params) =>
      _api.request('market.editOrder', params);

  /// Edits the product property.
  Future<Object> editProperty(Map<String, dynamic> params) =>
      _api.request('market.editProperty', params);

  /// Edits a property option.
  Future<Object> editPropertyVariant(Map<String, dynamic> params) =>
      _api.request('market.editPropertyVariant', params);

  // ignore: public_member_api_docs
  Future<Object> filterCategories(Map<String, dynamic> params) =>
      _api.request('market.filterCategories', params);

  /// Returns items list for a community.
  Future<Object> get(Map<String, dynamic> params) =>
      _api.request('market.get', params);

  /// Returns items album's data
  Future<Object> getAlbumById(Map<String, dynamic> params) =>
      _api.request('market.getAlbumById', params);

  /// Returns community's market collections list.
  Future<Object> getAlbums(Map<String, dynamic> params) =>
      _api.request('market.getAlbums', params);

  /// Returns information about market items by their ids.
  Future<Object> getById(Map<String, dynamic> params) =>
      _api.request('market.getById', params);

  /// Returns a list of market categories.
  Future<Object> getCategories(Map<String, dynamic> params) =>
      _api.request('market.getCategories', params);

  /// Returns comments list for an item.
  Future<Object> getComments(Map<String, dynamic> params) =>
      _api.request('market.getComments', params);

  /// Get market orders
  Future<Object> getGroupOrders(Map<String, dynamic> params) =>
      _api.request('market.getGroupOrders', params);

  /// Get order
  Future<Object> getOrderById(Map<String, dynamic> params) =>
      _api.request('market.getOrderById', params);

  /// Get market items in the order
  Future<Object> getOrderItems(Map<String, dynamic> params) =>
      _api.request('market.getOrderItems', params);

  /// Returns orders.
  Future<Object> getOrders(Map<String, dynamic> params) =>
      _api.request('market.getOrders', params);

  /// Method for getting a link to the image upload server
  Future<Object> getProductPhotoUploadServer(Map<String, dynamic> params) =>
      _api.request('market.getProductPhotoUploadServer', params);

  /// Returns a list of properties for the specified community.
  Future<Object> getProperties(Map<String, dynamic> params) =>
      _api.request('market.getProperties', params);

  /// Combines products into a group of products.
  Future<Object> groupItems(Map<String, dynamic> params) =>
      _api.request('market.groupItems', params);

  /// Removes an item from one or multiple collections.
  Future<Object> removeFromAlbum(Map<String, dynamic> params) =>
      _api.request('market.removeFromAlbum', params);

  /// Reorders the collections list.
  Future<Object> reorderAlbums(Map<String, dynamic> params) =>
      _api.request('market.reorderAlbums', params);

  /// Changes item place in a collection.
  Future<Object> reorderItems(Map<String, dynamic> params) =>
      _api.request('market.reorderItems', params);

  /// Sends a complaint to the item.
  Future<Object> report(Map<String, dynamic> params) =>
      _api.request('market.report', params);

  /// Sends a complaint to the item's comment.
  Future<Object> reportComment(Map<String, dynamic> params) =>
      _api.request('market.reportComment', params);

  /// Restores recently deleted item
  Future<Object> restore(Map<String, dynamic> params) =>
      _api.request('market.restore', params);

  /// Restores a recently deleted comment
  Future<Object> restoreComment(Map<String, dynamic> params) =>
      _api.request('market.restoreComment', params);

  /// Method for saving images
  Future<Object> saveProductPhoto(Map<String, dynamic> params) =>
      _api.request('market.saveProductPhoto', params);

  /// Searches market items in a community's catalog
  Future<Object> search(Map<String, dynamic> params) =>
      _api.request('market.search', params);

  // ignore: public_member_api_docs
  Future<Object> searchItems(Map<String, dynamic> params) =>
      _api.request('market.searchItems', params);

  // ignore: public_member_api_docs
  Future<Object> searchItemsBasic(Map<String, dynamic> params) =>
      _api.request('market.searchItemsBasic', params);

  /// Divides a product group into several products.
  Future<Object> ungroupItems(Map<String, dynamic> params) =>
      _api.request('market.ungroupItems', params);
}
