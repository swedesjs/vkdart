import 'package:vkdart/vkontakte.dart';

/// A carousel is a set of cards that are attached to a record.
///
/// See https://dev.vk.com/ru/method/prettyCards
class PrettyCards {
  // ignore: public_member_api_docs
  PrettyCards(this._api);
  final Api _api;

  /// The method creates a carousel card.
  Future<Object> create(Map<String, dynamic> params) =>
      _api.request('prettyCards.create', params);

  /// Deletes the card.
  Future<Object> delete(Map<String, dynamic> params) =>
      _api.request('prettyCards.delete', params);

  /// Edits the carousel card.
  Future<Object> edit(Map<String, dynamic> params) =>
      _api.request('prettyCards.edit', params);

  /// Returns unused owner's cards.
  Future<Object> get(Map<String, dynamic> params) =>
      _api.request('prettyCards.get', params);

  /// Returns information about the card.
  Future<Object> getById(Map<String, dynamic> params) =>
      _api.request('prettyCards.getById', params);

  /// Returns the URL for uploading a photo for the card.
  Future<Object> getUploadURL(Map<String, dynamic> params) =>
      _api.request('prettyCards.getUploadURL', params);
}
