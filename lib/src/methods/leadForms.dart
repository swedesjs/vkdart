import '../api.dart';

class LeadForms {
  final Api _api;

  LeadForms(this._api);

  Future<Map<String, dynamic>> create(Map<String, Object> params) {
    return _api.request('leadForms.create', params);
  }

  Future<Map<String, dynamic>> delete(Map<String, Object> params) {
    return _api.request('leadForms.delete', params);
  }

  Future<Map<String, dynamic>> get(Map<String, Object> params) {
    return _api.request('leadForms.get', params);
  }

  Future<Map<String, dynamic>> getLeads(Map<String, Object> params) {
    return _api.request('leadForms.getLeads', params);
  }

  Future<Map<String, dynamic>> getUploadURL(Map<String, Object> params) {
    return _api.request('leadForms.getUploadURL', params);
  }

  Future<Map<String, dynamic>> list(Map<String, Object> params) {
    return _api.request('leadForms.list', params);
  }

  Future<Map<String, dynamic>> update(Map<String, Object> params) {
    return _api.request('leadForms.update', params);
  }
}
