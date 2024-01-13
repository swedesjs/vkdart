part of '../../methods.dart';

/// Методы этой секции предоставляют доступ к базе данных учебных заведений ВКонтакте.
/// Доступ к данным является бесплатным и не требует авторизации,
/// однако количество запросов с одного IP адреса может быть ограничено,
/// при необходимости делать большое количество запросов рекомендуется
/// выполнять запросы с клиентской стороны, используя [JSONP](https://dev.vk.com/ru/api/api-requests).
class Database {
  /// Конструктор.
  Database(this._api);
  final Api _api;

  /// Returns list of chairs on a specified faculty.
  Future<ApiResponse<T>> getChairs<T>(MethodTypeParams params) =>
      _api.request<T>('database.getChairs', params);

  /// Returns a list of cities.
  Future<ApiResponse<T>> getCities<T>(MethodTypeParams params) =>
      _api.request<T>('database.getCities', params);

  /// Returns information about cities by their IDs.
  Future<ApiResponse<T>> getCitiesById<T>(MethodTypeParams params) =>
      _api.request<T>('database.getCitiesById', params);

  /// Returns a list of countries.
  Future<ApiResponse<T>> getCountries<T>(MethodTypeParams params) =>
      _api.request<T>('database.getCountries', params);

  /// Returns information about countries by their IDs.
  Future<ApiResponse<T>> getCountriesById<T>(MethodTypeParams params) =>
      _api.request<T>('database.getCountriesById', params);

  /// Returns a list of faculties (i.e., university departments).
  Future<ApiResponse<T>> getFaculties<T>(MethodTypeParams params) =>
      _api.request<T>('database.getFaculties', params);

  /// Get metro stations by city
  Future<ApiResponse<T>> getMetroStations<T>(MethodTypeParams params) =>
      _api.request<T>('database.getMetroStations', params);

  /// Get metro station by his id
  Future<ApiResponse<T>> getMetroStationsById<T>(MethodTypeParams params) =>
      _api.request<T>('database.getMetroStationsById', params);

  /// Returns a list of regions.
  Future<ApiResponse<T>> getRegions<T>(MethodTypeParams params) =>
      _api.request<T>('database.getRegions', params);

  /// Returns a list of school classes specified for the country.
  Future<ApiResponse<T>> getSchoolClasses<T>(MethodTypeParams params) =>
      _api.request<T>('database.getSchoolClasses', params);

  /// Returns a list of schools.
  Future<ApiResponse<T>> getSchools<T>(MethodTypeParams params) =>
      _api.request<T>('database.getSchools', params);

  /// Returns a list of higher education institutions.
  Future<ApiResponse<T>> getUniversities<T>(MethodTypeParams params) =>
      _api.request<T>('database.getUniversities', params);
}
