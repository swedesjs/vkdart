import 'package:vkdart/vkontakte.dart';

/// Methods for working with the VK Testers testing platform.
///
/// See https://dev.vk.com/ru/method/bugtracker
class Bugtracker {
  // ignore: public_member_api_docs
  Bugtracker(this._api);

  final Api _api;

  /// Adds employees to the company's access groups.
  Future<ApiResponse<T>> addCompanyGroupsMembers<T>(
    Map<String, Object> params,
  ) =>
      _api.request<T>('bugtracker.addCompanyGroupsMembers', params);

  /// Adds employees to the company.
  Future<ApiResponse<T>> addCompanyMembers<T>(Map<String, Object> params) =>
      _api.request<T>('bugtracker.addCompanyMembers', params);

  /// Changes the status of the report.
  Future<ApiResponse<T>> changeBugreportStatus<T>(Map<String, Object> params) =>
      _api.request<T>('bugtracker.changeBugreportStatus', params);

  /// Leaves a comment on the report.
  Future<ApiResponse<T>> createComment<T>(Map<String, Object> params) =>
      _api.request<T>('bugtracker.createComment', params);

  /// Get information about the report.
  Future<ApiResponse<T>> getBugreportById<T>(Map<String, Object> params) =>
      _api.request<T>('bugtracker.getBugreportById', params);

  /// Returns a list of employees from the company's access group.
  Future<ApiResponse<T>> getCompanyGroupMembers<T>(
    Map<String, Object> params,
  ) =>
      _api.request<T>('bugtracker.getCompanyGroupMembers', params);

  /// Returns a list of company employees.
  Future<ApiResponse<T>> getCompanyMembers<T>(Map<String, Object> params) =>
      _api.request<T>('bugtracker.getCompanyMembers', params);

  /// Receives a one-time download link for the assembly attached to the specified version of the application in the product.
  Future<ApiResponse<T>> getDownloadVersionUrl<T>(Map<String, Object> params) =>
      _api.request<T>('bugtracker.getDownloadVersionUrl', params);

  /// Gets a link to download the application build to the product.
  Future<ApiResponse<T>> getProductBuildUploadServer<T>(
    Map<String, Object> params,
  ) =>
      _api.request<T>('bugtracker.getProductBuildUploadServer', params);

  /// Excludes an employee from the company's access group.
  Future<ApiResponse<T>> removeCompanyGroupMember<T>(
    Map<String, Object> params,
  ) =>
      _api.request<T>('bugtracker.removeCompanyGroupMember', params);

  /// Removes an employee from a company and from all access groups in that company.
  Future<ApiResponse<T>> removeCompanyMember<T>(Map<String, Object> params) =>
      _api.request<T>('bugtracker.removeCompanyMember', params);

  /// The method creates a version or saves changes to the product version.
  Future<ApiResponse<T>> saveProductVersion<T>(Map<String, Object> params) =>
      _api.request<T>('bugtracker.saveProductVersion', params);

  /// Changes the employee's access level in the company.
  Future<ApiResponse<T>> setCompanyMemberRole<T>(Map<String, Object> params) =>
      _api.request<T>('bugtracker.setCompanyMemberRole', params);

  /// Disables or enables the reception of reports in the product.
  Future<ApiResponse<T>> setProductIsOver<T>(Map<String, Object> params) =>
      _api.request<T>('bugtracker.setProductIsOver', params);
}
