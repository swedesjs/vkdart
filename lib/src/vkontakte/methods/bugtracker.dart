part of '../../methods.dart';

/// Методы для работы с платформой тестирования VK Testers.
class Bugtracker {
  /// Конструктор.
  Bugtracker(this._api);

  final Api _api;

  /// Добавляет сотрудников в группы доступа компании.
  Future<ApiResponse<T>> addCompanyGroupsMembers<T>(MethodTypeParams params) =>
      _api.request<T>('bugtracker.addCompanyGroupsMembers', params);

  /// Добавляет сотрудников в компанию.
  Future<ApiResponse<T>> addCompanyMembers<T>(MethodTypeParams params) =>
      _api.request<T>('bugtracker.addCompanyMembers', params);

  /// Изменяет статус отчёта.
  Future<ApiResponse<T>> changeBugreportStatus<T>(MethodTypeParams params) =>
      _api.request<T>('bugtracker.changeBugreportStatus', params);

  /// Оставляет комментарий к отчёту.
  Future<ApiResponse<T>> createComment<T>(MethodTypeParams params) =>
      _api.request<T>('bugtracker.createComment', params);

  /// Получить информацию об отчёте.
  Future<ApiResponse<T>> getBugreportById<T>(MethodTypeParams params) =>
      _api.request<T>('bugtracker.getBugreportById', params);

  /// Возвращает список сотрудников из группы доступа компании.
  Future<ApiResponse<T>> getCompanyGroupMembers<T>(MethodTypeParams params) =>
      _api.request<T>('bugtracker.getCompanyGroupMembers', params);

  /// Возвращает список сотрудников компании.
  Future<ApiResponse<T>> getCompanyMembers<T>(MethodTypeParams params) =>
      _api.request<T>('bugtracker.getCompanyMembers', params);

  /// Получает одноразовую ссылку для скачивания сборки, прикреплённой к указанной версии приложения в продукте.
  Future<ApiResponse<T>> getDownloadVersionUrl<T>(MethodTypeParams params) =>
      _api.request<T>('bugtracker.getDownloadVersionUrl', params);

  /// Получает ссылку для загрузки сборки приложения в продукт.
  Future<ApiResponse<T>> getProductBuildUploadServer<T>(
          MethodTypeParams params) =>
      _api.request<T>('bugtracker.getProductBuildUploadServer', params);

  /// Исключает сотрудника из группы доступа компании.
  Future<ApiResponse<T>> removeCompanyGroupMember<T>(MethodTypeParams params) =>
      _api.request<T>('bugtracker.removeCompanyGroupMember', params);

  /// Удаляет сотрудника из компании и из всех групп доступа в этой компании.
  Future<ApiResponse<T>> removeCompanyMember<T>(MethodTypeParams params) =>
      _api.request<T>('bugtracker.removeCompanyMember', params);

  /// Метод создаёт версию или сохраняет изменения версии продукта.
  Future<ApiResponse<T>> saveProductVersion<T>(MethodTypeParams params) =>
      _api.request<T>('bugtracker.saveProductVersion', params);

  /// Изменяет уровень доступа сотрудника в компании.
  Future<ApiResponse<T>> setCompanyMemberRole<T>(MethodTypeParams params) =>
      _api.request<T>('bugtracker.setCompanyMemberRole', params);

  /// Отключает или включает приём отчётов в продукте.
  Future<ApiResponse<T>> setProductIsOver<T>(MethodTypeParams params) =>
      _api.request<T>('bugtracker.setProductIsOver', params);
}
