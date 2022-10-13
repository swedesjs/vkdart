import '../api.dart';

class Database {
  final Api _api;

  Database(this._api);

  /// Returns list of chairs on a specified faculty.
  Future<Map<String, dynamic>> getChairs(Map<String, Object> params) {
    return _api.request('database.getChairs', params);
  }

  /// Returns a list of cities.
  Future<Map<String, dynamic>> getCities(Map<String, Object> params) {
    return _api.request('database.getCities', params);
  }

  /// Returns information about cities by their IDs.
  Future<Map<String, dynamic>> getCitiesById(Map<String, Object> params) {
    return _api.request('database.getCitiesById', params);
  }

  /// Returns a list of countries.
  Future<Map<String, dynamic>> getCountries(Map<String, Object> params) {
    return _api.request('database.getCountries', params);
  }

  /// Returns information about countries by their IDs.
  Future<Map<String, dynamic>> getCountriesById(Map<String, Object> params) {
    return _api.request('database.getCountriesById', params);
  }

  /// Returns a list of faculties (i.e., university departments).
  Future<Map<String, dynamic>> getFaculties(Map<String, Object> params) {
    return _api.request('database.getFaculties', params);
  }

  /// Get metro stations by city
  Future<Map<String, dynamic>> getMetroStations(Map<String, Object> params) {
    return _api.request('database.getMetroStations', params);
  }

  /// Get metro station by his id
  Future<Map<String, dynamic>> getMetroStationsById(Map<String, Object> params) {
    return _api.request('database.getMetroStationsById', params);
  }

  /// Returns a list of regions.
  Future<Map<String, dynamic>> getRegions(Map<String, Object> params) {
    return _api.request('database.getRegions', params);
  }

  /// Returns a list of school classes specified for the country.
  Future<Map<String, dynamic>> getSchoolClasses(Map<String, Object> params) {
    return _api.request('database.getSchoolClasses', params);
  }

  /// Returns a list of schools.
  Future<Map<String, dynamic>> getSchools(Map<String, Object> params) {
    return _api.request('database.getSchools', params);
  }

  /// Returns a list of higher education institutions.
  Future<Map<String, dynamic>> getUniversities(Map<String, Object> params) {
    return _api.request('database.getUniversities', params);
  }
}
