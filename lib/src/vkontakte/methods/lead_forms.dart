import 'package:vkdart/vkontakte.dart';

/// Methods for working with application collection forms.
///
/// See https://dev.vk.com/ru/method/leadForms
class LeadForms {
  // ignore: public_member_api_docs
  LeadForms(this._api);
  final Api _api;

  /// Creates a request collection form.
  Future<ApiResponse<T>> create<T>(Map<String, Object> params) =>
      _api.request<T>('leadForms.create', params);

  /// Deletes the request collection form.
  Future<ApiResponse<T>> delete<T>(Map<String, Object> params) =>
      _api.request<T>('leadForms.delete', params);

  /// Returns information about the application collection form.
  Future<ApiResponse<T>> get<T>(Map<String, Object> params) =>
      _api.request<T>('leadForms.get', params);

  /// Returns the form requests.
  Future<ApiResponse<T>> getLeads<T>(Map<String, Object> params) =>
      _api.request<T>('leadForms.getLeads', params);

  /// Returns the URL for uploading the cover for the form.
  Future<ApiResponse<T>> getUploadURL<T>(Map<String, Object> params) =>
      _api.request<T>('leadForms.getUploadURL', params);

  /// Returns a list of community forms.
  Future<ApiResponse<T>> list<T>(Map<String, Object> params) =>
      _api.request<T>('leadForms.list', params);

  /// Updates the application collection form.
  Future<ApiResponse<T>> update<T>(Map<String, Object> params) =>
      _api.request<T>('leadForms.update', params);
}
