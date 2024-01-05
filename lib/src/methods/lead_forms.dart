import 'package:vkdart/src/api.dart';

/// Методы для работы с формами сбора заявок.
class LeadForms {
  /// Конструктор.
  LeadForms(this._api);
  final Api _api;

  /// Создаёт форму сбора заявок.
  Future<Map<String, dynamic>> create(Map<String, Object> params) =>
      _api.request('leadForms.create', params);

  /// Удаляет форму сбора заявок.
  Future<Map<String, dynamic>> delete(Map<String, Object> params) =>
      _api.request('leadForms.delete', params);

  /// Возвращает информацию о форме сбора заявок.
  Future<Map<String, dynamic>> get(Map<String, Object> params) =>
      _api.request('leadForms.get', params);

  /// Возвращает заявки формы.
  Future<Map<String, dynamic>> getLeads(Map<String, Object> params) =>
      _api.request('leadForms.getLeads', params);

  /// Возвращает URL для загрузки обложки для формы.
  Future<Map<String, dynamic>> getUploadURL(Map<String, Object> params) =>
      _api.request('leadForms.getUploadURL', params);

  /// Возвращает список форм сообщества.
  Future<Map<String, dynamic>> list(Map<String, Object> params) =>
      _api.request('leadForms.list', params);

  /// Обновляет форму сбора заявок.
  Future<Map<String, dynamic>> update(Map<String, Object> params) =>
      _api.request('leadForms.update', params);
}
