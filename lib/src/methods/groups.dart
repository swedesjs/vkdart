part of vkdart.methods;

/// Методы для работы с сообществами.
class Groups {
  /// Конструктор.
  Groups(this._api);
  final Api _api;

  // ignore: lines_longer_than_80_chars
  /// Позволяет добавить адрес в сообщество. Список адресов может быть получен методом [getAddresses].
  ///
  // ignore: lines_longer_than_80_chars
  /// - Для того, чтобы воспользоваться этим методом, вы должны быть администратором сообщества.
  MethodTypeReturn addAddress(MethodTypeParams params) =>
      _api.request('groups.addAddress', params);

  /// Добавляет сервер для [Callback API](https://dev.vk.com/ru/api/callback/getting-started) в сообщество.
  MethodTypeReturn addCallbackServer(MethodTypeParams params) =>
      _api.request('groups.addCallbackServer', params);

  /// Allows to add a link to the community.
  MethodTypeReturn addLink(MethodTypeParams params) =>
      _api.request('groups.addLink', params);

  /// Allows to approve join request to the community.
  MethodTypeReturn approveRequest(MethodTypeParams params) =>
      _api.request('groups.approveRequest', params);

  /// Добавляет пользователя или группу в черный список сообщества.
  MethodTypeReturn ban(MethodTypeParams params) =>
      _api.request('groups.ban', params);

  /// Creates a new community.
  MethodTypeReturn create(MethodTypeParams params) =>
      _api.request('groups.create', params);

  /// Удаляет адрес сообщества.
  MethodTypeReturn deleteAddress(MethodTypeParams params) =>
      _api.request('groups.deleteAddress', params);

  /// Удаляет сервер для [Callback API](https://dev.vk.com/ru/api/callback/getting-started) из сообщества.
  MethodTypeReturn deleteCallbackServer(MethodTypeParams params) =>
      _api.request('groups.deleteCallbackServer', params);

  /// Allows to delete a link from the community.
  MethodTypeReturn deleteLink(MethodTypeParams params) =>
      _api.request('groups.deleteLink', params);

  /// Выключает статус «онлайн» в сообществе.
  MethodTypeReturn disableOnline(MethodTypeParams params) =>
      _api.request('groups.disableOnline', params);

  /// Edits a community.
  MethodTypeReturn edit(MethodTypeParams params) =>
      _api.request('groups.edit', params);

  /// Метод редактирует адрес в сообществе. Чтобы получить список адресов,
  /// вызовите метод [getAddresses].
  MethodTypeReturn editAddress(MethodTypeParams params) =>
      _api.request('groups.editAddress', params);

  /// Редактирует данные сервера для [Callback API](https://dev.vk.com/ru/api/callback/getting-started) в сообществе.
  MethodTypeReturn editCallbackServer(MethodTypeParams params) =>
      _api.request('groups.editCallbackServer', params);

  /// Allows to edit a link in the community.
  MethodTypeReturn editLink(MethodTypeParams params) =>
      _api.request('groups.editLink', params);

  /// Allows to add, remove or edit the community manager.
  MethodTypeReturn editManager(MethodTypeParams params) =>
      _api.request('groups.editManager', params);

  /// Позволяет редактировать информацию о месте группы.
  MethodTypeReturn editPlace(MethodTypeParams params) =>
      _api.request('groups.editPlace', params);

  /// Включает статус «онлайн» в сообществе.
  MethodTypeReturn enableOnline(MethodTypeParams params) =>
      _api.request('groups.enableOnline', params);

  /// Returns a list of the communities to which a user belongs.
  MethodTypeReturn get(MethodTypeParams params) =>
      _api.request('groups.get', params);

  /// Returns a list of community addresses.
  MethodTypeReturn getAddresses(MethodTypeParams params) =>
      _api.request('groups.getAddresses', params);

  /// Returns a list of users on a community blacklist.
  MethodTypeReturn getBanned(MethodTypeParams params) =>
      _api.request('groups.getBanned', params);

  /// Returns information about communities by their IDs.
  MethodTypeReturn getById(MethodTypeParams params) =>
      _api.request('groups.getById', params);

  /// Returns Callback API confirmation code for the community.
  MethodTypeReturn getCallbackConfirmationCode(MethodTypeParams params) =>
      _api.request('groups.getCallbackConfirmationCode', params);

  // ignore: lines_longer_than_80_chars
  /// Позволяет получить информацию о настройках сервера для получения уведомлений Callback API в сообществе.
  MethodTypeReturn getCallbackServerSettings(MethodTypeParams params) =>
      _api.request('groups.getCallbackServerSettings', params);

  /// Получает информацию о серверах для [Callback API](https://dev.vk.com/ru/api/callback/getting-started) в сообществе.
  MethodTypeReturn getCallbackServers(MethodTypeParams params) =>
      _api.request('groups.getCallbackServers', params);

  /// Returns [vk.com/dev/callback_api|Callback API] notifications settings.
  MethodTypeReturn getCallbackSettings(MethodTypeParams params) =>
      _api.request('groups.getCallbackSettings', params);

  /// Returns communities list for a catalog category.
  MethodTypeReturn getCatalog(MethodTypeParams params) =>
      _api.request('groups.getCatalog', params);

  /// Returns categories list for communities catalog
  MethodTypeReturn getCatalogInfo(MethodTypeParams params) =>
      _api.request('groups.getCatalogInfo', params);

  /// Returns invited users list of a community
  MethodTypeReturn getInvitedUsers(MethodTypeParams params) =>
      _api.request('groups.getInvitedUsers', params);

  /// Returns a list of invitations to join communities and events.
  MethodTypeReturn getInvites(MethodTypeParams params) =>
      _api.request('groups.getInvites', params);

  /// Returns the data needed to query a Long Poll server for events
  MethodTypeReturn getLongPollServer(MethodTypeParams params) =>
      _api.request('groups.getLongPollServer', params);

  /// Returns Long Poll notification settings
  MethodTypeReturn getLongPollSettings(MethodTypeParams params) =>
      _api.request('groups.getLongPollSettings', params);

  /// Returns a list of community members.
  MethodTypeReturn getMembers(MethodTypeParams params) =>
      _api.request('groups.getMembers', params);

  /// Получает информацию о статусе «онлайн» в сообществе.
  MethodTypeReturn getOnlineStatus(MethodTypeParams params) =>
      _api.request('groups.getOnlineStatus', params);

  /// Returns a list of requests to the community.
  MethodTypeReturn getRequests(MethodTypeParams params) =>
      _api.request('groups.getRequests', params);

  /// Returns community settings.
  MethodTypeReturn getSettings(MethodTypeParams params) =>
      _api.request('groups.getSettings', params);

  /// List of group's tags
  MethodTypeReturn getTagList(MethodTypeParams params) =>
      _api.request('groups.getTagList', params);

  /// Возвращает настройки прав для ключа доступа сообщества.
  MethodTypeReturn getTokenPermissions(MethodTypeParams params) =>
      _api.request('groups.getTokenPermissions', params);

  /// Allows to invite friends to the community.
  MethodTypeReturn invite(MethodTypeParams params) =>
      _api.request('groups.invite', params);

  /// Returns information specifying whether a user is a member of a community.
  MethodTypeReturn isMember(MethodTypeParams params) =>
      _api.request('groups.isMember', params);

  /// With this method you can join the group or public page,
  /// and also confirm your participation in an event.
  MethodTypeReturn join(MethodTypeParams params) =>
      _api.request('groups.join', params);

  /// With this method you can leave a group, public page, or event.
  MethodTypeReturn leave(MethodTypeParams params) =>
      _api.request('groups.leave', params);

  /// Removes a user from the community.
  MethodTypeReturn removeUser(MethodTypeParams params) =>
      _api.request('groups.removeUser', params);

  /// Allows to reorder links in the community.
  MethodTypeReturn reorderLink(MethodTypeParams params) =>
      _api.request('groups.reorderLink', params);

  /// Returns a list of communities matching the search criteria.
  MethodTypeReturn search(MethodTypeParams params) =>
      _api.request('groups.search', params);

  /// Allow to set notifications settings for group.
  MethodTypeReturn setCallbackSettings(MethodTypeParams params) =>
      _api.request('groups.setCallbackSettings', params);

  /// Sets Long Poll notification settings
  MethodTypeReturn setLongPollSettings(MethodTypeParams params) =>
      _api.request('groups.setLongPollSettings', params);

  /// Устанавливает настройки сообщества
  MethodTypeReturn setSettings(MethodTypeParams params) =>
      _api.request('groups.setSettings', params);

  /// In order to save note about group participant
  MethodTypeReturn setUserNote(MethodTypeParams params) =>
      _api.request('groups.setUserNote', params);

  /// Add new group's tag
  MethodTypeReturn tagAdd(MethodTypeParams params) =>
      _api.request('groups.tagAdd', params);

  /// Bind or unbind group's tag to user
  MethodTypeReturn tagBind(MethodTypeParams params) =>
      _api.request('groups.tagBind', params);

  /// Delete group's tag
  MethodTypeReturn tagDelete(MethodTypeParams params) =>
      _api.request('groups.tagDelete', params);

  /// Update group's tag
  MethodTypeReturn tagUpdate(MethodTypeParams params) =>
      _api.request('groups.tagUpdate', params);

  /// Переключает функционал раздела «Товаров» в выбранной группе.
  MethodTypeReturn toggleMarket(MethodTypeParams params) =>
      _api.request('groups.toggleMarket', params);

  /// Убирает пользователя или группу из черного списка сообщества.
  MethodTypeReturn unban(MethodTypeParams params) =>
      _api.request('groups.unban', params);
}
