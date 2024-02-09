import 'package:vkdart/vkontakte.dart';

/// The methods of this section provide access to the VKontakte database of educational institutions.
///
/// See https://dev.vk.com/ru/method/database
class Database {
  // ignore: public_member_api_docs
  Database(this._api);
  final Api _api;

  /// Returns list of chairs on a specified faculty.
  Future<Object> getChairs(Map<String, dynamic> params) =>
      _api.request('database.getChairs', params);

  /// Returns a list of cities.
  Future<Object> getCities(Map<String, dynamic> params) =>
      _api.request('database.getCities', params);

  /// Returns information about cities by their IDs.
  Future<Object> getCitiesById(Map<String, dynamic> params) =>
      _api.request('database.getCitiesById', params);

  /// Returns a list of countries.
  Future<Object> getCountries(Map<String, dynamic> params) =>
      _api.request('database.getCountries', params);

  /// Returns information about countries by their IDs.
  Future<Object> getCountriesById(Map<String, dynamic> params) =>
      _api.request('database.getCountriesById', params);

  /// Returns a list of faculties (i.e., university departments).
  Future<Object> getFaculties(Map<String, dynamic> params) =>
      _api.request('database.getFaculties', params);

  /// Get metro stations by city
  Future<Object> getMetroStations(Map<String, dynamic> params) =>
      _api.request('database.getMetroStations', params);

  /// Get metro station by his id
  Future<Object> getMetroStationsById(Map<String, dynamic> params) =>
      _api.request('database.getMetroStationsById', params);

  /// Returns a list of regions.
  Future<Object> getRegions(Map<String, dynamic> params) =>
      _api.request('database.getRegions', params);

  /// Returns a list of school classes specified for the country.
  Future<Object> getSchoolClasses(Map<String, dynamic> params) =>
      _api.request('database.getSchoolClasses', params);

  /// Returns a list of schools.
  Future<Object> getSchools(Map<String, dynamic> params) =>
      _api.request('database.getSchools', params);

  /// Returns a list of higher education institutions.
  Future<Object> getUniversities(Map<String, dynamic> params) =>
      _api.request('database.getUniversities', params);
}
