import '../api.dart';

class Adsweb {
  final Api _api;

  Adsweb(this._api);

  Future<Map<String, dynamic>> getAdCategories(Map<String, Object> params) {
    return _api.request('adsweb.getAdCategories', params);
  }

  Future<Map<String, dynamic>> getAdUnitCode(Map<String, Object> params) {
    return _api.request('adsweb.getAdUnitCode', params);
  }

  Future<Map<String, dynamic>> getAdUnits(Map<String, Object> params) {
    return _api.request('adsweb.getAdUnits', params);
  }

  Future<Map<String, dynamic>> getFraudHistory(Map<String, Object> params) {
    return _api.request('adsweb.getFraudHistory', params);
  }

  Future<Map<String, dynamic>> getSites(Map<String, Object> params) {
    return _api.request('adsweb.getSites', params);
  }

  Future<Map<String, dynamic>> getStatistics(Map<String, Object> params) {
    return _api.request('adsweb.getStatistics', params);
  }
}
