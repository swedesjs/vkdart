import 'package:vkdart/vkontakte.dart';

/// The methods of this section provide access to the VKontakte database of educational institutions.
///
/// See https://dev.vk.com/ru/method/database
class Database {
  // ignore: public_member_api_docs
  Database(this._api);
  final Api _api;

  /// Returns list of chairs on a specified faculty.
  Future<ApiResponse<T>> getChairs<T>(Map<String, Object> params) =>
      _api.request<T>('database.getChairs', params);

  /// Returns a list of cities.
  Future<ApiResponse<T>> getCities<T>(Map<String, Object> params) =>
      _api.request<T>('database.getCities', params);

  /// Returns information about cities by their IDs.
  Future<ApiResponse<T>> getCitiesById<T>(Map<String, Object> params) =>
      _api.request<T>('database.getCitiesById', params);

  /// Returns a list of countries.
  Future<ApiResponse<T>> getCountries<T>(Map<String, Object> params) =>
      _api.request<T>('database.getCountries', params);

  /// Returns information about countries by their IDs.
  Future<ApiResponse<T>> getCountriesById<T>(Map<String, Object> params) =>
      _api.request<T>('database.getCountriesById', params);

  /// Returns a list of faculties (i.e., university departments).
  Future<ApiResponse<T>> getFaculties<T>(Map<String, Object> params) =>
      _api.request<T>('database.getFaculties', params);

  /// Get metro stations by city
  Future<ApiResponse<T>> getMetroStations<T>(Map<String, Object> params) =>
      _api.request<T>('database.getMetroStations', params);

  /// Get metro station by his id
  Future<ApiResponse<T>> getMetroStationsById<T>(Map<String, Object> params) =>
      _api.request<T>('database.getMetroStationsById', params);

  /// Returns a list of regions.
  Future<ApiResponse<T>> getRegions<T>(Map<String, Object> params) =>
      _api.request<T>('database.getRegions', params);

  /// Returns a list of school classes specified for the country.
  Future<ApiResponse<T>> getSchoolClasses<T>(Map<String, Object> params) =>
      _api.request<T>('database.getSchoolClasses', params);

  /// Returns a list of schools.
  Future<ApiResponse<T>> getSchools<T>(Map<String, Object> params) =>
      _api.request<T>('database.getSchools', params);

  /// Returns a list of higher education institutions.
  Future<ApiResponse<T>> getUniversities<T>(Map<String, Object> params) =>
      _api.request<T>('database.getUniversities', params);
}
