part of vkdart.methods;

/// Методы для работы с платформой тестирования VK Testers.
class Bugtracker {
  /// Конструктор.
  Bugtracker(this._api);

  final Api _api;

  /// Добавляет сотрудников в группы доступа компании.
  MethodTypeReturn addCompanyGroupsMembers(MethodTypeParams params) =>
      _api.request('bugtracker.addCompanyGroupsMembers', params);

  /// Добавляет сотрудников в компанию.
  MethodTypeReturn addCompanyMembers(MethodTypeParams params) =>
      _api.request('bugtracker.addCompanyMembers', params);

  /// Изменяет статус отчёта.
  MethodTypeReturn changeBugreportStatus(MethodTypeParams params) =>
      _api.request('bugtracker.changeBugreportStatus', params);

  /// Оставляет комментарий к отчёту.
  MethodTypeReturn createComment(MethodTypeParams params) =>
      _api.request('bugtracker.createComment', params);

  /// Получить информацию об отчёте.
  MethodTypeReturn getBugreportById(MethodTypeParams params) =>
      _api.request('bugtracker.getBugreportById', params);

  /// Возвращает список сотрудников из группы доступа компании.
  MethodTypeReturn getCompanyGroupMembers(MethodTypeParams params) =>
      _api.request('bugtracker.getCompanyGroupMembers', params);

  /// Возвращает список сотрудников компании.
  MethodTypeReturn getCompanyMembers(MethodTypeParams params) =>
      _api.request('bugtracker.getCompanyMembers', params);

  // ignore: lines_longer_than_80_chars
  /// Получает одноразовую ссылку для скачивания сборки, прикреплённой к указанной версии приложения в продукте.
  MethodTypeReturn getDownloadVersionUrl(MethodTypeParams params) =>
      _api.request('bugtracker.getDownloadVersionUrl', params);

  /// Получает ссылку для загрузки сборки приложения в продукт.
  MethodTypeReturn getProductBuildUploadServer(MethodTypeParams params) =>
      _api.request('bugtracker.getProductBuildUploadServer', params);

  /// Исключает сотрудника из группы доступа компании.
  MethodTypeReturn removeCompanyGroupMember(MethodTypeParams params) =>
      _api.request('bugtracker.removeCompanyGroupMember', params);

  /// Удаляет сотрудника из компании и из всех групп доступа в этой компании.
  MethodTypeReturn removeCompanyMember(MethodTypeParams params) =>
      _api.request('bugtracker.removeCompanyMember', params);

  /// Метод создаёт версию или сохраняет изменения версии продукта.
  MethodTypeReturn saveProductVersion(MethodTypeParams params) =>
      _api.request('bugtracker.saveProductVersion', params);

  /// Изменяет уровень доступа сотрудника в компании.
  MethodTypeReturn setCompanyMemberRole(MethodTypeParams params) =>
      _api.request('bugtracker.setCompanyMemberRole', params);

  /// Отключает или включает приём отчётов в продукте.
  MethodTypeReturn setProductIsOver(MethodTypeParams params) =>
      _api.request('bugtracker.setProductIsOver', params);
}
