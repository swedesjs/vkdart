part of '../../methods.dart';

// ignore: lines_longer_than_80_chars
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
  MethodTypeReturn getChairs(MethodTypeParams params) =>
      _api.request('database.getChairs', params);

  /// Returns a list of cities.
  MethodTypeReturn getCities(MethodTypeParams params) =>
      _api.request('database.getCities', params);

  /// Returns information about cities by their IDs.
  MethodTypeReturn getCitiesById(MethodTypeParams params) =>
      _api.request('database.getCitiesById', params);

  /// Returns a list of countries.
  MethodTypeReturn getCountries(MethodTypeParams params) =>
      _api.request('database.getCountries', params);

  /// Returns information about countries by their IDs.
  MethodTypeReturn getCountriesById(MethodTypeParams params) =>
      _api.request('database.getCountriesById', params);

  /// Returns a list of faculties (i.e., university departments).
  MethodTypeReturn getFaculties(MethodTypeParams params) =>
      _api.request('database.getFaculties', params);

  /// Get metro stations by city
  MethodTypeReturn getMetroStations(MethodTypeParams params) =>
      _api.request('database.getMetroStations', params);

  /// Get metro station by his id
  MethodTypeReturn getMetroStationsById(MethodTypeParams params) =>
      _api.request('database.getMetroStationsById', params);

  /// Returns a list of regions.
  MethodTypeReturn getRegions(MethodTypeParams params) =>
      _api.request('database.getRegions', params);

  /// Returns a list of school classes specified for the country.
  MethodTypeReturn getSchoolClasses(MethodTypeParams params) =>
      _api.request('database.getSchoolClasses', params);

  /// Returns a list of schools.
  MethodTypeReturn getSchools(MethodTypeParams params) =>
      _api.request('database.getSchools', params);

  /// Returns a list of higher education institutions.
  MethodTypeReturn getUniversities(MethodTypeParams params) =>
      _api.request('database.getUniversities', params);
}
