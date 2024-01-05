import 'package:vkdart/src/api.dart';
import 'package:vkdart/src/types/methods.dart';

/// Методы для работы с формами сбора заявок.
class LeadForms {
  /// Конструктор.
  LeadForms(this._api);
  final Api _api;

  /// Создаёт форму сбора заявок.
  MethodTypeReturn create(MethodTypeParams params) =>
      _api.request('leadForms.create', params);

  /// Удаляет форму сбора заявок.
  MethodTypeReturn delete(MethodTypeParams params) =>
      _api.request('leadForms.delete', params);

  /// Возвращает информацию о форме сбора заявок.
  MethodTypeReturn get(MethodTypeParams params) =>
      _api.request('leadForms.get', params);

  /// Возвращает заявки формы.
  MethodTypeReturn getLeads(MethodTypeParams params) =>
      _api.request('leadForms.getLeads', params);

  /// Возвращает URL для загрузки обложки для формы.
  MethodTypeReturn getUploadURL(MethodTypeParams params) =>
      _api.request('leadForms.getUploadURL', params);

  /// Возвращает список форм сообщества.
  MethodTypeReturn list(MethodTypeParams params) =>
      _api.request('leadForms.list', params);

  /// Обновляет форму сбора заявок.
  MethodTypeReturn update(MethodTypeParams params) =>
      _api.request('leadForms.update', params);
}
