import '../api.dart';

class PrettyCards {
  final Api _api;

  PrettyCards(this._api);

  Future<Map<String, dynamic>> create(Map<String, Object> params) {
    return _api.request('prettyCards.create', params);
  }

  Future<Map<String, dynamic>> delete(Map<String, Object> params) {
    return _api.request('prettyCards.delete', params);
  }

  Future<Map<String, dynamic>> edit(Map<String, Object> params) {
    return _api.request('prettyCards.edit', params);
  }

  Future<Map<String, dynamic>> get(Map<String, Object> params) {
    return _api.request('prettyCards.get', params);
  }

  Future<Map<String, dynamic>> getById(Map<String, Object> params) {
    return _api.request('prettyCards.getById', params);
  }

  Future<Map<String, dynamic>> getUploadURL(Map<String, Object> params) {
    return _api.request('prettyCards.getUploadURL', params);
  }
}
