part of '../../methods.dart';

/// Методы для работы с сообществами.
class Groups {
  /// Конструктор.
  Groups(this._api);
  final Api _api;

  /// Позволяет добавить адрес в сообщество. Список адресов может быть получен методом [getAddresses].
  ///

  /// - Для того, чтобы воспользоваться этим методом, вы должны быть администратором сообщества.
  Future<ApiResponse<T>> addAddress<T>(MethodTypeParams params) =>
      _api.request<T>('groups.addAddress', params);

  /// Добавляет сервер для [Callback API](https://dev.vk.com/ru/api/callback/getting-started) в сообщество.
  Future<ApiResponse<T>> addCallbackServer<T>(MethodTypeParams params) =>
      _api.request<T>('groups.addCallbackServer', params);

  /// Allows to add a link to the community.
  Future<ApiResponse<T>> addLink<T>(MethodTypeParams params) =>
      _api.request<T>('groups.addLink', params);

  /// Allows to approve join request to the community.
  Future<ApiResponse<T>> approveRequest<T>(MethodTypeParams params) =>
      _api.request<T>('groups.approveRequest', params);

  /// Добавляет пользователя или группу в черный список сообщества.
  Future<ApiResponse<T>> ban<T>(MethodTypeParams params) =>
      _api.request<T>('groups.ban', params);

  /// Creates a new community.
  Future<ApiResponse<T>> create<T>(MethodTypeParams params) =>
      _api.request<T>('groups.create', params);

  /// Удаляет адрес сообщества.
  Future<ApiResponse<T>> deleteAddress<T>(MethodTypeParams params) =>
      _api.request<T>('groups.deleteAddress', params);

  /// Удаляет сервер для [Callback API](https://dev.vk.com/ru/api/callback/getting-started) из сообщества.
  Future<ApiResponse<T>> deleteCallbackServer<T>(MethodTypeParams params) =>
      _api.request<T>('groups.deleteCallbackServer', params);

  /// Allows to delete a link from the community.
  Future<ApiResponse<T>> deleteLink<T>(MethodTypeParams params) =>
      _api.request<T>('groups.deleteLink', params);

  /// Выключает статус «онлайн» в сообществе.
  Future<ApiResponse<T>> disableOnline<T>(MethodTypeParams params) =>
      _api.request<T>('groups.disableOnline', params);

  /// Edits a community.
  Future<ApiResponse<T>> edit<T>(MethodTypeParams params) =>
      _api.request<T>('groups.edit', params);

  /// Метод редактирует адрес в сообществе. Чтобы получить список адресов,
  /// вызовите метод [getAddresses].
  Future<ApiResponse<T>> editAddress<T>(MethodTypeParams params) =>
      _api.request<T>('groups.editAddress', params);

  /// Редактирует данные сервера для [Callback API](https://dev.vk.com/ru/api/callback/getting-started) в сообществе.
  Future<ApiResponse<T>> editCallbackServer<T>(MethodTypeParams params) =>
      _api.request<T>('groups.editCallbackServer', params);

  /// Allows to edit a link in the community.
  Future<ApiResponse<T>> editLink<T>(MethodTypeParams params) =>
      _api.request<T>('groups.editLink', params);

  /// Allows to add, remove or edit the community manager.
  Future<ApiResponse<T>> editManager<T>(MethodTypeParams params) =>
      _api.request<T>('groups.editManager', params);

  /// Позволяет редактировать информацию о месте группы.
  Future<ApiResponse<T>> editPlace<T>(MethodTypeParams params) =>
      _api.request<T>('groups.editPlace', params);

  /// Включает статус «онлайн» в сообществе.
  Future<ApiResponse<T>> enableOnline<T>(MethodTypeParams params) =>
      _api.request<T>('groups.enableOnline', params);

  /// Returns a list of the communities to which a user belongs.
  Future<ApiResponse<T>> get<T>(MethodTypeParams params) =>
      _api.request<T>('groups.get', params);

  /// Returns a list of community addresses.
  Future<ApiResponse<T>> getAddresses<T>(MethodTypeParams params) =>
      _api.request<T>('groups.getAddresses', params);

  /// Returns a list of users on a community blacklist.
  Future<ApiResponse<T>> getBanned<T>(MethodTypeParams params) =>
      _api.request<T>('groups.getBanned', params);

  /// Returns information about communities by their IDs.
  Future<ApiResponse<T>> getById<T>(MethodTypeParams params) =>
      _api.request<T>('groups.getById', params);

  /// Returns Callback API confirmation code for the community.
  Future<ApiResponse<T>> getCallbackConfirmationCode<T>(
          MethodTypeParams params) =>
      _api.request<T>('groups.getCallbackConfirmationCode', params);

  /// Позволяет получить информацию о настройках сервера для получения уведомлений Callback API в сообществе.
  Future<ApiResponse<T>> getCallbackServerSettings<T>(
          MethodTypeParams params) =>
      _api.request<T>('groups.getCallbackServerSettings', params);

  /// Получает информацию о серверах для [Callback API](https://dev.vk.com/ru/api/callback/getting-started) в сообществе.
  Future<ApiResponse<T>> getCallbackServers<T>(MethodTypeParams params) =>
      _api.request<T>('groups.getCallbackServers', params);

  /// Returns [Callback API](vk.com/dev/callback_api) notifications settings.
  Future<ApiResponse<T>> getCallbackSettings<T>(MethodTypeParams params) =>
      _api.request<T>('groups.getCallbackSettings', params);

  /// Returns communities list for a catalog category.
  Future<ApiResponse<T>> getCatalog<T>(MethodTypeParams params) =>
      _api.request<T>('groups.getCatalog', params);

  /// Returns categories list for communities catalog
  Future<ApiResponse<T>> getCatalogInfo<T>(MethodTypeParams params) =>
      _api.request<T>('groups.getCatalogInfo', params);

  /// Returns invited users list of a community
  Future<ApiResponse<T>> getInvitedUsers<T>(MethodTypeParams params) =>
      _api.request<T>('groups.getInvitedUsers', params);

  /// Returns a list of invitations to join communities and events.
  Future<ApiResponse<T>> getInvites<T>(MethodTypeParams params) =>
      _api.request<T>('groups.getInvites', params);

  /// Returns the data needed to query a Long Poll server for events
  Future<ApiResponse<T>> getLongPollServer<T>(MethodTypeParams params) =>
      _api.request<T>('groups.getLongPollServer', params);

  /// Returns Long Poll notification settings
  Future<ApiResponse<T>> getLongPollSettings<T>(MethodTypeParams params) =>
      _api.request<T>('groups.getLongPollSettings', params);

  /// Returns a list of community members.
  Future<ApiResponse<T>> getMembers<T>(MethodTypeParams params) =>
      _api.request<T>('groups.getMembers', params);

  /// Получает информацию о статусе «онлайн» в сообществе.
  Future<ApiResponse<T>> getOnlineStatus<T>(MethodTypeParams params) =>
      _api.request<T>('groups.getOnlineStatus', params);

  /// Returns a list of requests to the community.
  Future<ApiResponse<T>> getRequests<T>(MethodTypeParams params) =>
      _api.request<T>('groups.getRequests', params);

  /// Returns community settings.
  Future<ApiResponse<T>> getSettings<T>(MethodTypeParams params) =>
      _api.request<T>('groups.getSettings', params);

  /// List of group's tags
  Future<ApiResponse<T>> getTagList<T>(MethodTypeParams params) =>
      _api.request<T>('groups.getTagList', params);

  /// Возвращает настройки прав для ключа доступа сообщества.
  Future<ApiResponse<T>> getTokenPermissions<T>(MethodTypeParams params) =>
      _api.request<T>('groups.getTokenPermissions', params);

  /// Allows to invite friends to the community.
  Future<ApiResponse<T>> invite<T>(MethodTypeParams params) =>
      _api.request<T>('groups.invite', params);

  /// Returns information specifying whether a user is a member of a community.
  Future<ApiResponse<T>> isMember<T>(MethodTypeParams params) =>
      _api.request<T>('groups.isMember', params);

  /// With this method you can join the group or public page,
  /// and also confirm your participation in an event.
  Future<ApiResponse<T>> join<T>(MethodTypeParams params) =>
      _api.request<T>('groups.join', params);

  /// With this method you can leave a group, public page, or event.
  Future<ApiResponse<T>> leave<T>(MethodTypeParams params) =>
      _api.request<T>('groups.leave', params);

  /// Removes a user from the community.
  Future<ApiResponse<T>> removeUser<T>(MethodTypeParams params) =>
      _api.request<T>('groups.removeUser', params);

  /// Allows to reorder links in the community.
  Future<ApiResponse<T>> reorderLink<T>(MethodTypeParams params) =>
      _api.request<T>('groups.reorderLink', params);

  /// Returns a list of communities matching the search criteria.
  Future<ApiResponse<T>> search<T>(MethodTypeParams params) =>
      _api.request<T>('groups.search', params);

  /// Allow to set notifications settings for group.
  Future<ApiResponse<T>> setCallbackSettings<T>(MethodTypeParams params) =>
      _api.request<T>('groups.setCallbackSettings', params);

  /// Sets Long Poll notification settings
  Future<ApiResponse<T>> setLongPollSettings<T>(MethodTypeParams params) =>
      _api.request<T>('groups.setLongPollSettings', params);

  /// Устанавливает настройки сообщества
  Future<ApiResponse<T>> setSettings<T>(MethodTypeParams params) =>
      _api.request<T>('groups.setSettings', params);

  /// In order to save note about group participant
  Future<ApiResponse<T>> setUserNote<T>(MethodTypeParams params) =>
      _api.request<T>('groups.setUserNote', params);

  /// Add new group's tag
  Future<ApiResponse<T>> tagAdd<T>(MethodTypeParams params) =>
      _api.request<T>('groups.tagAdd', params);

  /// Bind or unbind group's tag to user
  Future<ApiResponse<T>> tagBind<T>(MethodTypeParams params) =>
      _api.request<T>('groups.tagBind', params);

  /// Delete group's tag
  Future<ApiResponse<T>> tagDelete<T>(MethodTypeParams params) =>
      _api.request<T>('groups.tagDelete', params);

  /// Update group's tag
  Future<ApiResponse<T>> tagUpdate<T>(MethodTypeParams params) =>
      _api.request<T>('groups.tagUpdate', params);

  /// Переключает функционал раздела «Товаров» в выбранной группе.
  Future<ApiResponse<T>> toggleMarket<T>(MethodTypeParams params) =>
      _api.request<T>('groups.toggleMarket', params);

  /// Убирает пользователя или группу из черного списка сообщества.
  Future<ApiResponse<T>> unban<T>(MethodTypeParams params) =>
      _api.request<T>('groups.unban', params);
}
