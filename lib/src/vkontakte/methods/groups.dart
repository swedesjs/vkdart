import 'package:vkdart/vkontakte.dart';

/// Methods for working with communities.
///
/// See https://dev.vk.com/ru/method/groups
class Groups {
  // ignore: public_member_api_docs
  Groups(this._api);
  final Api _api;

  /// Allows you to add an address to the community.
  /// The list of addresses can be obtained using the [getAddresses] method.
  Future<Object> addAddress(Map<String, dynamic> params) =>
      _api.request('groups.addAddress', params);

  /// Adds a server for the [Callback API](https://dev.vk.com/ru/api/callback/getting-started) to the community.
  Future<Object> addCallbackServer(Map<String, dynamic> params) =>
      _api.request('groups.addCallbackServer', params);

  /// Allows to add a link to the community.
  Future<Object> addLink(Map<String, dynamic> params) =>
      _api.request('groups.addLink', params);

  /// Allows to approve join request to the community.
  Future<Object> approveRequest(Map<String, dynamic> params) =>
      _api.request('groups.approveRequest', params);

  /// Adds a user or group to the community blacklist.
  Future<Object> ban(Map<String, dynamic> params) =>
      _api.request('groups.ban', params);

  /// Creates a new community.
  Future<Object> create(Map<String, dynamic> params) =>
      _api.request('groups.create', params);

  /// Deletes the address of the community.
  Future<Object> deleteAddress(Map<String, dynamic> params) =>
      _api.request('groups.deleteAddress', params);

  /// Deletes the server for the [Callback API](https://dev.vk.com/ru/api/callback/getting-started) from the community.
  Future<Object> deleteCallbackServer(Map<String, dynamic> params) =>
      _api.request('groups.deleteCallbackServer', params);

  /// Allows to delete a link from the community.
  Future<Object> deleteLink(Map<String, dynamic> params) =>
      _api.request('groups.deleteLink', params);

  /// Disables the "online" status in the community.
  Future<Object> disableOnline(Map<String, dynamic> params) =>
      _api.request('groups.disableOnline', params);

  /// Edits a community.
  Future<Object> edit(Map<String, dynamic> params) =>
      _api.request('groups.edit', params);

  /// The method edits the address in the community.
  /// To get a list of addresses, call the [getAddresses] method.
  Future<Object> editAddress(Map<String, dynamic> params) =>
      _api.request('groups.editAddress', params);

  /// Edits server data for [Callback API](https://dev.vk.com/ru/api/callback/getting-started) in the community.
  Future<Object> editCallbackServer(Map<String, dynamic> params) =>
      _api.request('groups.editCallbackServer', params);

  /// Allows to edit a link in the community.
  Future<Object> editLink(Map<String, dynamic> params) =>
      _api.request('groups.editLink', params);

  /// Allows to add, remove or edit the community manager.
  Future<Object> editManager(Map<String, dynamic> params) =>
      _api.request('groups.editManager', params);

  /// Allows you to edit information about the location of the group.
  Future<Object> editPlace(Map<String, dynamic> params) =>
      _api.request('groups.editPlace', params);

  /// Enables the "online" status in the community.
  Future<Object> enableOnline(Map<String, dynamic> params) =>
      _api.request('groups.enableOnline', params);

  /// Returns a list of the communities to which a user belongs.
  Future<Object> get(Map<String, dynamic> params) =>
      _api.request('groups.get', params);

  /// Returns a list of community addresses.
  Future<Object> getAddresses(Map<String, dynamic> params) =>
      _api.request('groups.getAddresses', params);

  /// Returns a list of users on a community blacklist.
  Future<Object> getBanned(Map<String, dynamic> params) =>
      _api.request('groups.getBanned', params);

  /// Returns information about communities by their IDs.
  Future<Object> getById(Map<String, dynamic> params) =>
      _api.request('groups.getById', params);

  /// Returns Callback API confirmation code for the community.
  Future<Object> getCallbackConfirmationCode(Map<String, dynamic> params) =>
      _api.request('groups.getCallbackConfirmationCode', params);

  /// Allows you to get information about the server settings for receiving Callback API notifications in the community.
  Future<Object> getCallbackServerSettings(Map<String, dynamic> params) =>
      _api.request('groups.getCallbackServerSettings', params);

  /// Retrieves information about servers for the [Callback API](https://dev.vk.com/ru/api/callback/getting-started) in the community.
  Future<Object> getCallbackServers(Map<String, dynamic> params) =>
      _api.request('groups.getCallbackServers', params);

  /// Returns [Callback API](vk.com/dev/callback_api) notifications settings.
  Future<Object> getCallbackSettings(Map<String, dynamic> params) =>
      _api.request('groups.getCallbackSettings', params);

  /// Returns communities list for a catalog category.
  Future<Object> getCatalog(Map<String, dynamic> params) =>
      _api.request('groups.getCatalog', params);

  /// Returns categories list for communities catalog
  Future<Object> getCatalogInfo(Map<String, dynamic> params) =>
      _api.request('groups.getCatalogInfo', params);

  /// Returns invited users list of a community
  Future<Object> getInvitedUsers(Map<String, dynamic> params) =>
      _api.request('groups.getInvitedUsers', params);

  /// Returns a list of invitations to join communities and events.
  Future<Object> getInvites(Map<String, dynamic> params) =>
      _api.request('groups.getInvites', params);

  /// Returns the data needed to query a Long Poll server for events
  Future<Object> getLongPollServer(Map<String, dynamic> params) =>
      _api.request('groups.getLongPollServer', params);

  /// Returns Long Poll notification settings
  Future<Object> getLongPollSettings(Map<String, dynamic> params) =>
      _api.request('groups.getLongPollSettings', params);

  /// Returns a list of community members.
  Future<Object> getMembers(Map<String, dynamic> params) =>
      _api.request('groups.getMembers', params);

  /// Receives information about the "online" status in the community.
  Future<Object> getOnlineStatus(Map<String, dynamic> params) =>
      _api.request('groups.getOnlineStatus', params);

  /// Returns a list of requests to the community.
  Future<Object> getRequests(Map<String, dynamic> params) =>
      _api.request('groups.getRequests', params);

  /// Returns community settings.
  Future<Object> getSettings(Map<String, dynamic> params) =>
      _api.request('groups.getSettings', params);

  /// List of group's tags
  Future<Object> getTagList(Map<String, dynamic> params) =>
      _api.request('groups.getTagList', params);

  /// Returns the rights settings for the community access key.
  Future<Object> getTokenPermissions(Map<String, dynamic> params) =>
      _api.request('groups.getTokenPermissions', params);

  /// Allows to invite friends to the community.
  Future<Object> invite(Map<String, dynamic> params) =>
      _api.request('groups.invite', params);

  /// Returns information specifying whether a user is a member of a community.
  Future<Object> isMember(Map<String, dynamic> params) =>
      _api.request('groups.isMember', params);

  /// With this method you can join the group or public page,
  /// and also confirm your participation in an event.
  Future<Object> join(Map<String, dynamic> params) =>
      _api.request('groups.join', params);

  /// With this method you can leave a group, public page, or event.
  Future<Object> leave(Map<String, dynamic> params) =>
      _api.request('groups.leave', params);

  /// Removes a user from the community.
  Future<Object> removeUser(Map<String, dynamic> params) =>
      _api.request('groups.removeUser', params);

  /// Allows to reorder links in the community.
  Future<Object> reorderLink(Map<String, dynamic> params) =>
      _api.request('groups.reorderLink', params);

  /// Returns a list of communities matching the search criteria.
  Future<Object> search(Map<String, dynamic> params) =>
      _api.request('groups.search', params);

  /// Allow to set notifications settings for group.
  Future<Object> setCallbackSettings(Map<String, dynamic> params) =>
      _api.request('groups.setCallbackSettings', params);

  /// Sets Long Poll notification settings
  Future<Object> setLongPollSettings(Map<String, dynamic> params) =>
      _api.request('groups.setLongPollSettings', params);

  /// Sets the community settings
  Future<Object> setSettings(Map<String, dynamic> params) =>
      _api.request('groups.setSettings', params);

  /// In order to save note about group participant
  Future<Object> setUserNote(Map<String, dynamic> params) =>
      _api.request('groups.setUserNote', params);

  /// Add new group's tag
  Future<Object> tagAdd(Map<String, dynamic> params) =>
      _api.request('groups.tagAdd', params);

  /// Bind or unbind group's tag to user
  Future<Object> tagBind(Map<String, dynamic> params) =>
      _api.request('groups.tagBind', params);

  /// Delete group's tag
  Future<Object> tagDelete(Map<String, dynamic> params) =>
      _api.request('groups.tagDelete', params);

  /// Update group's tag
  Future<Object> tagUpdate(Map<String, dynamic> params) =>
      _api.request('groups.tagUpdate', params);

  /// Switches the functionality of the "Products" section in the selected group.
  Future<Object> toggleMarket(Map<String, dynamic> params) =>
      _api.request('groups.toggleMarket', params);

  /// Removes a user or group from the community blacklist.
  Future<Object> unban(Map<String, dynamic> params) =>
      _api.request('groups.unban', params);
}
