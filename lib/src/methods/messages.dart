import 'package:vkdart/src/api.dart';

/// Методы для работы с личными сообщениями.
class Messages {
  /// Конструктор.
  Messages(this._api);
  final Api _api;

  /// Adds a new user to a chat.
  Future<Map<String, dynamic>> addChatUser(Map<String, Object> params) =>
      _api.request('messages.addChatUser', params);

  /// Allows sending messages from community to the current user.
  Future<Map<String, dynamic>> allowMessagesFromGroup(
    Map<String, Object> params,
  ) =>
      _api.request('messages.allowMessagesFromGroup', params);

  /// Creates a chat with several participants.
  Future<Map<String, dynamic>> createChat(Map<String, Object> params) =>
      _api.request('messages.createChat', params);

  /// Deletes one or more messages.
  Future<Map<String, dynamic>> delete(Map<String, Object> params) =>
      _api.request('messages.delete', params);

  /// Deletes a chat's cover picture.
  Future<Map<String, dynamic>> deleteChatPhoto(Map<String, Object> params) =>
      _api.request('messages.deleteChatPhoto', params);

  /// Deletes all private messages in a conversation.
  Future<Map<String, dynamic>> deleteConversation(Map<String, Object> params) =>
      _api.request('messages.deleteConversation', params);

  /// Удаление ранее поставленной реакции.
  Future<Map<String, dynamic>> deleteReaction(Map<String, Object> params) =>
      _api.request('messages.deleteReaction', params);

  /// Denies sending message from community to the current user.
  Future<Map<String, dynamic>> denyMessagesFromGroup(
    Map<String, Object> params,
  ) =>
      _api.request('messages.denyMessagesFromGroup', params);

  /// Edits the message.
  Future<Map<String, dynamic>> edit(Map<String, Object> params) =>
      _api.request('messages.edit', params);

  /// Edits the title of a chat.
  Future<Map<String, dynamic>> editChat(Map<String, Object> params) =>
      _api.request('messages.editChat', params);

  /// Метод используется для принудительного завершения звонка.
  Future<Map<String, dynamic>> forceCallFinish(Map<String, Object> params) =>
      _api.request('messages.forceCallFinish', params);

  // ignore: lines_longer_than_80_chars
  /// Возвращает список входящих личных сообщений текущего пользователя или сообщества.
  Future<Map<String, dynamic>> get(Map<String, Object> params) =>
      _api.request('messages.get', params);

  /// Returns messages by their IDs within the conversation.
  Future<Map<String, dynamic>> getByConversationMessageId(
    Map<String, Object> params,
  ) =>
      _api.request('messages.getByConversationMessageId', params);

  /// Returns messages by their IDs.
  Future<Map<String, dynamic>> getById(Map<String, Object> params) =>
      _api.request('messages.getById', params);

  /// Возвращает информацию о беседе.
  Future<Map<String, dynamic>> getChat(Map<String, Object> params) =>
      _api.request('messages.getChat', params);

  /// Получает данные для превью чата с приглашением по ссылке.
  Future<Map<String, dynamic>> getChatPreview(Map<String, Object> params) =>
      _api.request('messages.getChatPreview', params);

  /// Позволяет получить список пользователей мультидиалога по его `id`.
  Future<Map<String, dynamic>> getChatUsers(Map<String, Object> params) =>
      _api.request('messages.getChatUsers', params);

  /// Returns a list of IDs of users participating in a chat.
  Future<Map<String, dynamic>> getConversationMembers(
    Map<String, Object> params,
  ) =>
      _api.request('messages.getConversationMembers', params);

  /// Returns a list of the current user's conversations.
  Future<Map<String, dynamic>> getConversations(Map<String, Object> params) =>
      _api.request('messages.getConversations', params);

  /// Returns conversations by their IDs
  Future<Map<String, dynamic>> getConversationsById(
    Map<String, Object> params,
  ) =>
      _api.request('messages.getConversationsById', params);

  /// Возвращает список диалогов текущего пользователя или сообщества.
  /// Актуальный метод: [getConversations].
  Future<Map<String, dynamic>> getDialogs(
    Map<String, Object> params,
  ) =>
      _api.request('messages.getDialogs', params);

  /// Returns message history for the specified user or group chat.
  Future<Map<String, dynamic>> getHistory(Map<String, Object> params) =>
      _api.request('messages.getHistory', params);

  /// Returns media files from the dialog or group chat.
  Future<Map<String, dynamic>> getHistoryAttachments(
    Map<String, Object> params,
  ) =>
      _api.request('messages.getHistoryAttachments', params);

  /// Returns a list of user's important messages.
  Future<Map<String, dynamic>> getImportantMessages(
    Map<String, Object> params,
  ) =>
      _api.request('messages.getImportantMessages', params);

  /// Метод отдает пользователей, которые подписались на определенные интенты.
  Future<Map<String, dynamic>> getIntentUsers(Map<String, Object> params) =>
      _api.request('messages.getIntentUsers', params);

  /// Получает ссылку для приглашения пользователя в беседу.
  Future<Map<String, dynamic>> getInviteLink(Map<String, Object> params) =>
      _api.request('messages.getInviteLink', params);

  /// Returns a user's current status and date of last activity.
  Future<Map<String, dynamic>> getLastActivity(Map<String, Object> params) =>
      _api.request('messages.getLastActivity', params);

  /// Returns updates in user's private messages.
  Future<Map<String, dynamic>> getLongPollHistory(Map<String, Object> params) =>
      _api.request('messages.getLongPollHistory', params);

  /// Returns data required for connection to a Long Poll server.
  Future<Map<String, dynamic>> getLongPollServer(Map<String, Object> params) =>
      _api.request('messages.getLongPollServer', params);

  /// Получить актуальные счётчики реакций на сообщения
  Future<Map<String, dynamic>> getMessagesReactions(
    Map<String, Object> params,
  ) =>
      _api.request('messages.getMessagesReactions', params);

  // ignore: lines_longer_than_80_chars
  /// Получить список пользователей и сообществ, которые поставили реакцию на сообщение
  Future<Map<String, dynamic>> getReactedPeers(Map<String, Object> params) =>
      _api.request('messages.getReactedPeers', params);

  /// Получение ассетов реакций
  Future<Map<String, dynamic>> getReactionsAssets(Map<String, Object> params) =>
      _api.request('messages.getReactionsAssets', params);

  // ignore: lines_longer_than_80_chars
  /// Returns information whether sending messages from the community to current user is allowed.
  Future<Map<String, dynamic>> isMessagesFromGroupAllowed(
    Map<String, Object> params,
  ) =>
      _api.request('messages.isMessagesFromGroupAllowed', params);

  /// Позволяет присоединиться к чату по ссылке-приглашению.
  Future<Map<String, dynamic>> joinChatByInviteLink(
    Map<String, Object> params,
  ) =>
      _api.request('messages.joinChatByInviteLink', params);

  /// Marks and unmarks conversations as unanswered.
  Future<Map<String, dynamic>> markAsAnsweredConversation(
    Map<String, Object> params,
  ) =>
      _api.request('messages.markAsAnsweredConversation', params);

  /// Marks and unmarks messages as important (starred).
  Future<Map<String, dynamic>> markAsImportant(Map<String, Object> params) =>
      _api.request('messages.markAsImportant', params);

  /// Marks and unmarks conversations as important.
  Future<Map<String, dynamic>> markAsImportantConversation(
    Map<String, Object> params,
  ) =>
      _api.request('messages.markAsImportantConversation', params);

  /// Marks messages as read.
  Future<Map<String, dynamic>> markAsRead(Map<String, Object> params) =>
      _api.request('messages.markAsRead', params);

  /// Pin a message.
  Future<Map<String, dynamic>> pin(Map<String, Object> params) =>
      _api.request('messages.pin', params);

  // ignore: lines_longer_than_80_chars
  /// Allows the current user to leave a chat or, if the current user started the chat,
  /// allows the user to remove another user from the chat.
  Future<Map<String, dynamic>> removeChatUser(Map<String, Object> params) =>
      _api.request('messages.removeChatUser', params);

  /// Restores a deleted message.
  Future<Map<String, dynamic>> restore(Map<String, Object> params) =>
      _api.request('messages.restore', params);

  // ignore: lines_longer_than_80_chars
  /// Returns a list of the current user's private messages that match search criteria.
  Future<Map<String, dynamic>> search(Map<String, Object> params) =>
      _api.request('messages.search', params);

  // ignore: lines_longer_than_80_chars
  /// Returns a list of the current user's conversations that match search criteria.
  Future<Map<String, dynamic>> searchConversations(
    Map<String, Object> params,
  ) =>
      _api.request('messages.searchConversations', params);

  // ignore: lines_longer_than_80_chars
  /// Возвращает список найденных диалогов текущего пользователя по введенной строке поиска.
  Future<Map<String, dynamic>> searchDialogs(Map<String, Object> params) =>
      _api.request('messages.searchDialogs', params);

  /// Sends a message.
  Future<Map<String, dynamic>> send(Map<String, Object> params) =>
      _api.request('messages.send', params);
  // ignore: lines_longer_than_80_chars
  /// Отправляет событие с действием, которое произойдет при нажатии на callback-кнопку.
  Future<Map<String, dynamic>> sendMessageEventAnswer(
    Map<String, Object> params,
  ) =>
      _api.request('messages.sendMessageEventAnswer', params);

  /// Метод установки реакции на сообщение
  Future<Map<String, dynamic>> sendReaction(Map<String, Object> params) =>
      _api.request('messages.sendReaction', params);

  /// Changes the status of a user as typing in a conversation.
  Future<Map<String, dynamic>> setActivity(Map<String, Object> params) =>
      _api.request('messages.setActivity', params);

  /// Sets a previously-uploaded picture as the cover picture of a chat.
  Future<Map<String, dynamic>> setChatPhoto(Map<String, Object> params) =>
      _api.request('messages.setChatPhoto', params);

  /// Старт нового звонка от имени пользователя или от сообщества
  Future<Map<String, dynamic>> startCall(Map<String, Object> params) =>
      _api.request('messages.startCall', params);

  /// Открепляет сообщение.
  Future<Map<String, dynamic>> unpin(Map<String, Object> params) =>
      _api.request('messages.unpin', params);
}
