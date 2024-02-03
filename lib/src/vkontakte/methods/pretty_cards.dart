import 'package:vkdart/vkontakte.dart';

/// A carousel is a set of cards that are attached to a record.
///
/// See https://dev.vk.com/ru/method/prettyCards
class PrettyCards {
  // ignore: public_member_api_docs
  PrettyCards(this._api);
  final Api _api;

  /// The method creates a carousel card.
  Future<ApiResponse<T>> create<T>(Map<String, Object> params) =>
      _api.request<T>('prettyCards.create', params);

  /// Deletes the card.
  Future<ApiResponse<T>> delete<T>(Map<String, Object> params) =>
      _api.request<T>('prettyCards.delete', params);

  /// Edits the carousel card.
  Future<ApiResponse<T>> edit<T>(Map<String, Object> params) =>
      _api.request<T>('prettyCards.edit', params);

  /// Returns unused owner's cards.
  Future<ApiResponse<T>> get<T>(Map<String, Object> params) =>
      _api.request<T>('prettyCards.get', params);

  /// Returns information about the card.
  Future<ApiResponse<T>> getById<T>(Map<String, Object> params) =>
      _api.request<T>('prettyCards.getById', params);

  /// Returns the URL for uploading a photo for the card.
  Future<ApiResponse<T>> getUploadURL<T>(Map<String, Object> params) =>
      _api.request<T>('prettyCards.getUploadURL', params);
}
