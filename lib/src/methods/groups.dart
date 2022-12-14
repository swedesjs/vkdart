import '../api.dart';

class Groups {
  final Api _api;

  Groups(this._api);

  Future<Map<String, dynamic>> addAddress(Map<String, Object> params) {
    return _api.request('groups.addAddress', params);
  }

  Future<Map<String, dynamic>> addCallbackServer(Map<String, Object> params) {
    return _api.request('groups.addCallbackServer', params);
  }

  /// Allows to add a link to the community.
  Future<Map<String, dynamic>> addLink(Map<String, Object> params) {
    return _api.request('groups.addLink', params);
  }

  /// Allows to approve join request to the community.
  Future<Map<String, dynamic>> approveRequest(Map<String, Object> params) {
    return _api.request('groups.approveRequest', params);
  }

  Future<Map<String, dynamic>> ban(Map<String, Object> params) {
    return _api.request('groups.ban', params);
  }

  /// Creates a new community.
  Future<Map<String, dynamic>> create(Map<String, Object> params) {
    return _api.request('groups.create', params);
  }

  Future<Map<String, dynamic>> deleteAddress(Map<String, Object> params) {
    return _api.request('groups.deleteAddress', params);
  }

  Future<Map<String, dynamic>> deleteCallbackServer(Map<String, Object> params) {
    return _api.request('groups.deleteCallbackServer', params);
  }

  /// Allows to delete a link from the community.
  Future<Map<String, dynamic>> deleteLink(Map<String, Object> params) {
    return _api.request('groups.deleteLink', params);
  }

  Future<Map<String, dynamic>> disableOnline(Map<String, Object> params) {
    return _api.request('groups.disableOnline', params);
  }

  /// Edits a community.
  Future<Map<String, dynamic>> edit(Map<String, Object> params) {
    return _api.request('groups.edit', params);
  }

  Future<Map<String, dynamic>> editAddress(Map<String, Object> params) {
    return _api.request('groups.editAddress', params);
  }

  Future<Map<String, dynamic>> editCallbackServer(Map<String, Object> params) {
    return _api.request('groups.editCallbackServer', params);
  }

  /// Allows to edit a link in the community.
  Future<Map<String, dynamic>> editLink(Map<String, Object> params) {
    return _api.request('groups.editLink', params);
  }

  /// Allows to add, remove or edit the community manager.
  Future<Map<String, dynamic>> editManager(Map<String, Object> params) {
    return _api.request('groups.editManager', params);
  }

  Future<Map<String, dynamic>> enableOnline(Map<String, Object> params) {
    return _api.request('groups.enableOnline', params);
  }

  /// Returns a list of the communities to which a user belongs.
  Future<Map<String, dynamic>> get(Map<String, Object> params) {
    return _api.request('groups.get', params);
  }

  /// Returns a list of community addresses.
  Future<Map<String, dynamic>> getAddresses(Map<String, Object> params) {
    return _api.request('groups.getAddresses', params);
  }

  /// Returns a list of users on a community blacklist.
  Future<Map<String, dynamic>> getBanned(Map<String, Object> params) {
    return _api.request('groups.getBanned', params);
  }

  /// Returns information about communities by their IDs.
  Future<Map<String, dynamic>> getById(Map<String, Object> params) {
    return _api.request('groups.getById', params);
  }

  /// Returns Callback API confirmation code for the community.
  Future<Map<String, dynamic>> getCallbackConfirmationCode(Map<String, Object> params) {
    return _api.request('groups.getCallbackConfirmationCode', params);
  }

  Future<Map<String, dynamic>> getCallbackServers(Map<String, Object> params) {
    return _api.request('groups.getCallbackServers', params);
  }

  /// Returns [vk.com/dev/callback_api|Callback API] notifications settings.
  Future<Map<String, dynamic>> getCallbackSettings(Map<String, Object> params) {
    return _api.request('groups.getCallbackSettings', params);
  }

  /// Returns communities list for a catalog category.
  Future<Map<String, dynamic>> getCatalog(Map<String, Object> params) {
    return _api.request('groups.getCatalog', params);
  }

  /// Returns categories list for communities catalog
  Future<Map<String, dynamic>> getCatalogInfo(Map<String, Object> params) {
    return _api.request('groups.getCatalogInfo', params);
  }

  /// Returns invited users list of a community
  Future<Map<String, dynamic>> getInvitedUsers(Map<String, Object> params) {
    return _api.request('groups.getInvitedUsers', params);
  }

  /// Returns a list of invitations to join communities and events.
  Future<Map<String, dynamic>> getInvites(Map<String, Object> params) {
    return _api.request('groups.getInvites', params);
  }

  /// Returns the data needed to query a Long Poll server for events
  Future<Map<String, dynamic>> getLongPollServer(Map<String, Object> params) {
    return _api.request('groups.getLongPollServer', params);
  }

  /// Returns Long Poll notification settings
  Future<Map<String, dynamic>> getLongPollSettings(Map<String, Object> params) {
    return _api.request('groups.getLongPollSettings', params);
  }

  /// Returns a list of community members.
  Future<Map<String, dynamic>> getMembers(Map<String, Object> params) {
    return _api.request('groups.getMembers', params);
  }

  /// Returns a list of requests to the community.
  Future<Map<String, dynamic>> getRequests(Map<String, Object> params) {
    return _api.request('groups.getRequests', params);
  }

  /// Returns community settings.
  Future<Map<String, dynamic>> getSettings(Map<String, Object> params) {
    return _api.request('groups.getSettings', params);
  }

  /// List of group's tags
  Future<Map<String, dynamic>> getTagList(Map<String, Object> params) {
    return _api.request('groups.getTagList', params);
  }

  Future<Map<String, dynamic>> getTokenPermissions(Map<String, Object> params) {
    return _api.request('groups.getTokenPermissions', params);
  }

  /// Allows to invite friends to the community.
  Future<Map<String, dynamic>> invite(Map<String, Object> params) {
    return _api.request('groups.invite', params);
  }

  /// Returns information specifying whether a user is a member of a community.
  Future<Map<String, dynamic>> isMember(Map<String, Object> params) {
    return _api.request('groups.isMember', params);
  }

  /// With this method you can join the group or public page, and also confirm your participation in an event.
  Future<Map<String, dynamic>> join(Map<String, Object> params) {
    return _api.request('groups.join', params);
  }

  /// With this method you can leave a group, public page, or event.
  Future<Map<String, dynamic>> leave(Map<String, Object> params) {
    return _api.request('groups.leave', params);
  }

  /// Removes a user from the community.
  Future<Map<String, dynamic>> removeUser(Map<String, Object> params) {
    return _api.request('groups.removeUser', params);
  }

  /// Allows to reorder links in the community.
  Future<Map<String, dynamic>> reorderLink(Map<String, Object> params) {
    return _api.request('groups.reorderLink', params);
  }

  /// Returns a list of communities matching the search criteria.
  Future<Map<String, dynamic>> search(Map<String, Object> params) {
    return _api.request('groups.search', params);
  }

  /// Allow to set notifications settings for group.
  Future<Map<String, dynamic>> setCallbackSettings(Map<String, Object> params) {
    return _api.request('groups.setCallbackSettings', params);
  }

  /// Sets Long Poll notification settings
  Future<Map<String, dynamic>> setLongPollSettings(Map<String, Object> params) {
    return _api.request('groups.setLongPollSettings', params);
  }

  Future<Map<String, dynamic>> setSettings(Map<String, Object> params) {
    return _api.request('groups.setSettings', params);
  }

  /// In order to save note about group participant
  Future<Map<String, dynamic>> setUserNote(Map<String, Object> params) {
    return _api.request('groups.setUserNote', params);
  }

  /// Add new group's tag
  Future<Map<String, dynamic>> tagAdd(Map<String, Object> params) {
    return _api.request('groups.tagAdd', params);
  }

  /// Bind or unbind group's tag to user
  Future<Map<String, dynamic>> tagBind(Map<String, Object> params) {
    return _api.request('groups.tagBind', params);
  }

  /// Delete group's tag
  Future<Map<String, dynamic>> tagDelete(Map<String, Object> params) {
    return _api.request('groups.tagDelete', params);
  }

  /// Update group's tag
  Future<Map<String, dynamic>> tagUpdate(Map<String, Object> params) {
    return _api.request('groups.tagUpdate', params);
  }

  Future<Map<String, dynamic>> toggleMarket(Map<String, Object> params) {
    return _api.request('groups.toggleMarket', params);
  }

  Future<Map<String, dynamic>> unban(Map<String, Object> params) {
    return _api.request('groups.unban', params);
  }
}
