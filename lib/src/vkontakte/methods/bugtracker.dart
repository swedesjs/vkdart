import 'package:vkdart/vkontakte.dart';

/// Methods for working with the VK Testers testing platform.
///
/// See https://dev.vk.com/ru/method/bugtracker
class Bugtracker {
  // ignore: public_member_api_docs
  Bugtracker(this._api);

  final Api _api;

  /// Adds employees to the company's access groups.
  Future<Object> addCompanyGroupsMembers(Map<String, dynamic> params) =>
      _api.request('bugtracker.addCompanyGroupsMembers', params);

  /// Adds employees to the company.
  Future<Object> addCompanyMembers(Map<String, dynamic> params) =>
      _api.request('bugtracker.addCompanyMembers', params);

  /// Changes the status of the report.
  Future<Object> changeBugreportStatus(Map<String, dynamic> params) =>
      _api.request('bugtracker.changeBugreportStatus', params);

  /// Leaves a comment on the report.
  Future<Object> createComment(Map<String, dynamic> params) =>
      _api.request('bugtracker.createComment', params);

  /// Get information about the report.
  Future<Object> getBugreportById(Map<String, dynamic> params) =>
      _api.request('bugtracker.getBugreportById', params);

  /// Returns a list of employees from the company's access group.
  Future<Object> getCompanyGroupMembers(Map<String, dynamic> params) =>
      _api.request('bugtracker.getCompanyGroupMembers', params);

  /// Returns a list of company employees.
  Future<Object> getCompanyMembers(Map<String, dynamic> params) =>
      _api.request('bugtracker.getCompanyMembers', params);

  /// Receives a one-time download link for the assembly attached to the specified version of the application in the product.
  Future<Object> getDownloadVersionUrl(Map<String, dynamic> params) =>
      _api.request('bugtracker.getDownloadVersionUrl', params);

  /// Gets a link to download the application build to the product.
  Future<Object> getProductBuildUploadServer(Map<String, dynamic> params) =>
      _api.request('bugtracker.getProductBuildUploadServer', params);

  /// Excludes an employee from the company's access group.
  Future<Object> removeCompanyGroupMember(Map<String, dynamic> params) =>
      _api.request('bugtracker.removeCompanyGroupMember', params);

  /// Removes an employee from a company and from all access groups in that company.
  Future<Object> removeCompanyMember(Map<String, dynamic> params) =>
      _api.request('bugtracker.removeCompanyMember', params);

  /// The method creates a version or saves changes to the product version.
  Future<Object> saveProductVersion(Map<String, dynamic> params) =>
      _api.request('bugtracker.saveProductVersion', params);

  /// Changes the employee's access level in the company.
  Future<Object> setCompanyMemberRole(Map<String, dynamic> params) =>
      _api.request('bugtracker.setCompanyMemberRole', params);

  /// Disables or enables the reception of reports in the product.
  Future<Object> setProductIsOver(Map<String, dynamic> params) =>
      _api.request('bugtracker.setProductIsOver', params);
}
