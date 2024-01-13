part of '../api.dart';

/// Методы для работы с формами сбора заявок.
class LeadForms {
  /// Конструктор.
  LeadForms(this._api);
  final Api _api;

  /// Создаёт форму сбора заявок.
  Future<ApiResponse<T>> create<T>(Map<String, Object> params) =>
      _api.request<T>('leadForms.create', params);

  /// Удаляет форму сбора заявок.
  Future<ApiResponse<T>> delete<T>(Map<String, Object> params) =>
      _api.request<T>('leadForms.delete', params);

  /// Возвращает информацию о форме сбора заявок.
  Future<ApiResponse<T>> get<T>(Map<String, Object> params) =>
      _api.request<T>('leadForms.get', params);

  /// Возвращает заявки формы.
  Future<ApiResponse<T>> getLeads<T>(Map<String, Object> params) =>
      _api.request<T>('leadForms.getLeads', params);

  /// Возвращает URL для загрузки обложки для формы.
  Future<ApiResponse<T>> getUploadURL<T>(Map<String, Object> params) =>
      _api.request<T>('leadForms.getUploadURL', params);

  /// Возвращает список форм сообщества.
  Future<ApiResponse<T>> list<T>(Map<String, Object> params) =>
      _api.request<T>('leadForms.list', params);

  /// Обновляет форму сбора заявок.
  Future<ApiResponse<T>> update<T>(Map<String, Object> params) =>
      _api.request<T>('leadForms.update', params);
}
