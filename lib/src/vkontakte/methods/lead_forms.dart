import 'package:vkdart/vkontakte.dart';

/// Methods for working with application collection forms.
///
/// See https://dev.vk.com/ru/method/leadForms
class LeadForms {
  // ignore: public_member_api_docs
  LeadForms(this._api);
  final Api _api;

  /// Creates a request collection form.
  Future<Object> create(Map<String, dynamic> params) =>
      _api.request('leadForms.create', params);

  /// Deletes the request collection form.
  Future<Object> delete(Map<String, dynamic> params) =>
      _api.request('leadForms.delete', params);

  /// Returns information about the application collection form.
  Future<Object> get(Map<String, dynamic> params) =>
      _api.request('leadForms.get', params);

  /// Returns the form requests.
  Future<Object> getLeads(Map<String, dynamic> params) =>
      _api.request('leadForms.getLeads', params);

  /// Returns the URL for uploading the cover for the form.
  Future<Object> getUploadURL(Map<String, dynamic> params) =>
      _api.request('leadForms.getUploadURL', params);

  /// Returns a list of community forms.
  Future<Object> list(Map<String, dynamic> params) =>
      _api.request('leadForms.list', params);

  /// Updates the application collection form.
  Future<Object> update(Map<String, dynamic> params) =>
      _api.request('leadForms.update', params);
}
