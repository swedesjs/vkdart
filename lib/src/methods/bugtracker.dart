import 'package:vkdart/src/api.dart';

/// Методы для работы с платформой тестирования VK Testers.
class Bugtracker {
  /// Конструктор.
  Bugtracker(this._api);

  final Api _api;

  /// Добавляет сотрудников в группы доступа компании.
  Future<Map<String, dynamic>> addCompanyGroupsMembers(
    Map<String, Object> params,
  ) =>
      _api.request('bugtracker.addCompanyGroupsMembers', params);

  /// Добавляет сотрудников в компанию.
  Future<Map<String, dynamic>> addCompanyMembers(Map<String, Object> params) =>
      _api.request('bugtracker.addCompanyMembers', params);

  /// Изменяет статус отчёта.
  Future<Map<String, dynamic>> changeBugreportStatus(
    Map<String, Object> params,
  ) =>
      _api.request('bugtracker.changeBugreportStatus', params);

  /// Оставляет комментарий к отчёту.
  Future<Map<String, dynamic>> createComment(Map<String, Object> params) =>
      _api.request('bugtracker.createComment', params);

  /// Получить информацию об отчёте.
  Future<Map<String, dynamic>> getBugreportById(Map<String, Object> params) =>
      _api.request('bugtracker.getBugreportById', params);

  /// Возвращает список сотрудников из группы доступа компании.
  Future<Map<String, dynamic>> getCompanyGroupMembers(
    Map<String, Object> params,
  ) =>
      _api.request('bugtracker.getCompanyGroupMembers', params);

  /// Возвращает список сотрудников компании.
  Future<Map<String, dynamic>> getCompanyMembers(Map<String, Object> params) =>
      _api.request('bugtracker.getCompanyMembers', params);

  // ignore: lines_longer_than_80_chars
  /// Получает одноразовую ссылку для скачивания сборки, прикреплённой к указанной версии приложения в продукте.
  Future<Map<String, dynamic>> getDownloadVersionUrl(
    Map<String, Object> params,
  ) =>
      _api.request('bugtracker.getDownloadVersionUrl', params);

  /// Получает ссылку для загрузки сборки приложения в продукт.
  Future<Map<String, dynamic>> getProductBuildUploadServer(
    Map<String, Object> params,
  ) =>
      _api.request('bugtracker.getProductBuildUploadServer', params);

  /// Исключает сотрудника из группы доступа компании.
  Future<Map<String, dynamic>> removeCompanyGroupMember(
    Map<String, Object> params,
  ) =>
      _api.request('bugtracker.removeCompanyGroupMember', params);

  /// Удаляет сотрудника из компании и из всех групп доступа в этой компании.
  Future<Map<String, dynamic>> removeCompanyMember(
    Map<String, Object> params,
  ) =>
      _api.request('bugtracker.removeCompanyMember', params);

  /// Метод создаёт версию или сохраняет изменения версии продукта.
  Future<Map<String, dynamic>> saveProductVersion(Map<String, Object> params) =>
      _api.request('bugtracker.saveProductVersion', params);

  /// Изменяет уровень доступа сотрудника в компании.
  Future<Map<String, dynamic>> setCompanyMemberRole(
    Map<String, Object> params,
  ) =>
      _api.request('bugtracker.setCompanyMemberRole', params);

  /// Отключает или включает приём отчётов в продукте.
  Future<Map<String, dynamic>> setProductIsOver(Map<String, Object> params) =>
      _api.request('bugtracker.setProductIsOver', params);
}
