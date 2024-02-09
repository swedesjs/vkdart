import 'package:vkdart/vkontakte.dart';

/// Methods for working with personal messages.
///
/// See https://dev.vk.com/ru/method/messages
class Messages {
  // ignore: public_member_api_docs
  Messages(this._api);
  final Api _api;

  /// Adds a new user to a chat.
  Future<Object> addChatUser(Map<String, dynamic> params) =>
      _api.request('messages.addChatUser', params);

  /// Allows sending messages from community to the current user.
  Future<Object> allowMessagesFromGroup(Map<String, dynamic> params) =>
      _api.request('messages.allowMessagesFromGroup', params);

  /// Creates a chat with several participants.
  Future<Object> createChat(Map<String, dynamic> params) =>
      _api.request('messages.createChat', params);

  /// Deletes one or more messages.
  Future<Object> delete(Map<String, dynamic> params) =>
      _api.request('messages.delete', params);

  /// Deletes a chat's cover picture.
  Future<Object> deleteChatPhoto(Map<String, dynamic> params) =>
      _api.request('messages.deleteChatPhoto', params);

  /// Deletes all private messages in a conversation.
  Future<Object> deleteConversation(Map<String, dynamic> params) =>
      _api.request('messages.deleteConversation', params);

  /// Deleting a previously set reaction.
  Future<Object> deleteReaction(Map<String, dynamic> params) =>
      _api.request('messages.deleteReaction', params);

  /// Denies sending message from community to the current user.
  Future<Object> denyMessagesFromGroup(Map<String, dynamic> params) =>
      _api.request('messages.denyMessagesFromGroup', params);

  /// Edits the message.
  Future<Object> edit(Map<String, dynamic> params) =>
      _api.request('messages.edit', params);

  /// Edits the title of a chat.
  Future<Object> editChat(Map<String, dynamic> params) =>
      _api.request('messages.editChat', params);

  /// The method is used to force the end of the call.
  Future<Object> forceCallFinish(Map<String, dynamic> params) =>
      _api.request('messages.forceCallFinish', params);

  /// Returns a list of incoming private messages from the current user or community.
  Future<Object> get(Map<String, dynamic> params) =>
      _api.request('messages.get', params);

  /// Returns messages by their IDs within the conversation.
  Future<Object> getByConversationMessageId(Map<String, dynamic> params) =>
      _api.request('messages.getByConversationMessageId', params);

  /// Returns messages by their IDs.
  Future<Object> getById(Map<String, dynamic> params) =>
      _api.request('messages.getById', params);

  /// Returns information about the conversation.
  Future<Object> getChat(Map<String, dynamic> params) =>
      _api.request('messages.getChat', params);

  /// Receives data for a preview of the chat with an invitation by link.
  Future<Object> getChatPreview(Map<String, dynamic> params) =>
      _api.request('messages.getChatPreview', params);

  /// Allows you to get a list of users of a multidirectory by its `id`.
  Future<Object> getChatUsers(Map<String, dynamic> params) =>
      _api.request('messages.getChatUsers', params);

  /// Returns a list of IDs of users participating in a chat.
  Future<Object> getConversationMembers(Map<String, dynamic> params) =>
      _api.request('messages.getConversationMembers', params);

  /// Returns a list of the current user's conversations.
  Future<Object> getConversations(Map<String, dynamic> params) =>
      _api.request('messages.getConversations', params);

  /// Returns conversations by their IDs
  Future<Object> getConversationsById(Map<String, dynamic> params) =>
      _api.request('messages.getConversationsById', params);

  /// Returns a list of dialogs of the current user or community.
  /// Actual: [getConversations].
  Future<Object> getDialogs(Map<String, dynamic> params) =>
      _api.request('messages.getDialogs', params);

  /// Returns message history for the specified user or group chat.
  Future<Object> getHistory(Map<String, dynamic> params) =>
      _api.request('messages.getHistory', params);

  /// Returns media files from the dialog or group chat.
  Future<Object> getHistoryAttachments(Map<String, dynamic> params) =>
      _api.request('messages.getHistoryAttachments', params);

  /// Returns a list of user's important messages.
  Future<Object> getImportantMessages(Map<String, dynamic> params) =>
      _api.request('messages.getImportantMessages', params);

  /// The method returns users who have subscribed to certain intents.
  Future<Object> getIntentUsers(Map<String, dynamic> params) =>
      _api.request('messages.getIntentUsers', params);

  /// Receives a link to invite the user to a conversation.
  Future<Object> getInviteLink(Map<String, dynamic> params) =>
      _api.request('messages.getInviteLink', params);

  /// Returns a user's current status and date of last activity.
  Future<Object> getLastActivity(Map<String, dynamic> params) =>
      _api.request('messages.getLastActivity', params);

  /// Returns updates in user's private messages.
  Future<Object> getLongPollHistory(Map<String, dynamic> params) =>
      _api.request('messages.getLongPollHistory', params);

  /// Returns data required for connection to a Long Poll server.
  Future<Object> getLongPollServer(Map<String, dynamic> params) =>
      _api.request('messages.getLongPollServer', params);

  /// Get up-to-date counters of reactions to messages
  Future<Object> getMessagesReactions(Map<String, dynamic> params) =>
      _api.request('messages.getMessagesReactions', params);

  /// Get a list of users and communities who have responded to a message
  Future<Object> getReactedPeers(Map<String, dynamic> params) =>
      _api.request('messages.getReactedPeers', params);

  /// Getting reaction assets
  Future<Object> getReactionsAssets(Map<String, dynamic> params) =>
      _api.request('messages.getReactionsAssets', params);

  /// Returns information whether sending messages from the community to current user is allowed.
  Future<Object> isMessagesFromGroupAllowed(Map<String, dynamic> params) =>
      _api.request('messages.isMessagesFromGroupAllowed', params);

  /// Allows you to join the chat via an invitation link.
  Future<Object> joinChatByInviteLink(Map<String, dynamic> params) =>
      _api.request('messages.joinChatByInviteLink', params);

  /// Marks and unmarks conversations as unanswered.
  Future<Object> markAsAnsweredConversation(Map<String, dynamic> params) =>
      _api.request('messages.markAsAnsweredConversation', params);

  /// Marks and unmarks messages as important (starred).
  Future<Object> markAsImportant(Map<String, dynamic> params) =>
      _api.request('messages.markAsImportant', params);

  /// Marks and unmarks conversations as important.
  Future<Object> markAsImportantConversation(Map<String, dynamic> params) =>
      _api.request('messages.markAsImportantConversation', params);

  /// Marks messages as read.
  Future<Object> markAsRead(Map<String, dynamic> params) =>
      _api.request('messages.markAsRead', params);

  /// Pin a message.
  Future<Object> pin(Map<String, dynamic> params) =>
      _api.request('messages.pin', params);

  /// Allows the current user to leave a chat or, if the current user started the chat,
  /// allows the user to remove another user from the chat.
  Future<Object> removeChatUser(Map<String, dynamic> params) =>
      _api.request('messages.removeChatUser', params);

  /// Restores a deleted message.
  Future<Object> restore(Map<String, dynamic> params) =>
      _api.request('messages.restore', params);

  /// Returns a list of the current user's private messages that match search criteria.
  Future<Object> search(Map<String, dynamic> params) =>
      _api.request('messages.search', params);

  /// Returns a list of the current user's conversations that match search criteria.
  Future<Object> searchConversations(Map<String, dynamic> params) =>
      _api.request('messages.searchConversations', params);

  /// Returns a list of found dialogs of the current user by the entered search string.
  Future<Object> searchDialogs(Map<String, dynamic> params) =>
      _api.request('messages.searchDialogs', params);

  /// Sends a message.
  Future<Object> send(Map<String, dynamic> params) =>
      _api.request('messages.send', params);

  /// Sends an event with an action that will occur when the callback button is clicked.
  Future<Object> sendMessageEventAnswer(Map<String, dynamic> params) =>
      _api.request('messages.sendMessageEventAnswer', params);

  /// The method of setting the response to the message
  Future<Object> sendReaction(Map<String, dynamic> params) =>
      _api.request('messages.sendReaction', params);

  /// Changes the status of a user as typing in a conversation.
  Future<Object> setActivity(Map<String, dynamic> params) =>
      _api.request('messages.setActivity', params);

  /// Sets a previously-uploaded picture as the cover picture of a chat.
  Future<Object> setChatPhoto(Map<String, dynamic> params) =>
      _api.request('messages.setChatPhoto', params);

  /// Starting a new call on behalf of the user or from the community
  Future<Object> startCall(Map<String, dynamic> params) =>
      _api.request('messages.startCall', params);

  /// Unpin the message.
  Future<Object> unpin(Map<String, dynamic> params) =>
      _api.request('messages.unpin', params);
}
