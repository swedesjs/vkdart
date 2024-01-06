part of '../../methods.dart';

/// Методы для работы с личными сообщениями.
class Messages {
  /// Конструктор.
  Messages(this._api);
  final Api _api;

  /// Adds a new user to a chat.
  MethodTypeReturn addChatUser(MethodTypeParams params) =>
      _api.request('messages.addChatUser', params);

  /// Allows sending messages from community to the current user.
  MethodTypeReturn allowMessagesFromGroup(MethodTypeParams params) =>
      _api.request('messages.allowMessagesFromGroup', params);

  /// Creates a chat with several participants.
  MethodTypeReturn createChat(MethodTypeParams params) =>
      _api.request('messages.createChat', params);

  /// Deletes one or more messages.
  MethodTypeReturn delete(MethodTypeParams params) =>
      _api.request('messages.delete', params);

  /// Deletes a chat's cover picture.
  MethodTypeReturn deleteChatPhoto(MethodTypeParams params) =>
      _api.request('messages.deleteChatPhoto', params);

  /// Deletes all private messages in a conversation.
  MethodTypeReturn deleteConversation(MethodTypeParams params) =>
      _api.request('messages.deleteConversation', params);

  /// Удаление ранее поставленной реакции.
  MethodTypeReturn deleteReaction(MethodTypeParams params) =>
      _api.request('messages.deleteReaction', params);

  /// Denies sending message from community to the current user.
  MethodTypeReturn denyMessagesFromGroup(MethodTypeParams params) =>
      _api.request('messages.denyMessagesFromGroup', params);

  /// Edits the message.
  MethodTypeReturn edit(MethodTypeParams params) =>
      _api.request('messages.edit', params);

  /// Edits the title of a chat.
  MethodTypeReturn editChat(MethodTypeParams params) =>
      _api.request('messages.editChat', params);

  /// Метод используется для принудительного завершения звонка.
  MethodTypeReturn forceCallFinish(MethodTypeParams params) =>
      _api.request('messages.forceCallFinish', params);

  // ignore: lines_longer_than_80_chars
  /// Возвращает список входящих личных сообщений текущего пользователя или сообщества.
  MethodTypeReturn get(MethodTypeParams params) =>
      _api.request('messages.get', params);

  /// Returns messages by their IDs within the conversation.
  MethodTypeReturn getByConversationMessageId(MethodTypeParams params) =>
      _api.request('messages.getByConversationMessageId', params);

  /// Returns messages by their IDs.
  MethodTypeReturn getById(MethodTypeParams params) =>
      _api.request('messages.getById', params);

  /// Возвращает информацию о беседе.
  MethodTypeReturn getChat(MethodTypeParams params) =>
      _api.request('messages.getChat', params);

  /// Получает данные для превью чата с приглашением по ссылке.
  MethodTypeReturn getChatPreview(MethodTypeParams params) =>
      _api.request('messages.getChatPreview', params);

  /// Позволяет получить список пользователей мультидиалога по его `id`.
  MethodTypeReturn getChatUsers(MethodTypeParams params) =>
      _api.request('messages.getChatUsers', params);

  /// Returns a list of IDs of users participating in a chat.
  MethodTypeReturn getConversationMembers(MethodTypeParams params) =>
      _api.request('messages.getConversationMembers', params);

  /// Returns a list of the current user's conversations.
  MethodTypeReturn getConversations(MethodTypeParams params) =>
      _api.request('messages.getConversations', params);

  /// Returns conversations by their IDs
  MethodTypeReturn getConversationsById(MethodTypeParams params) =>
      _api.request('messages.getConversationsById', params);

  /// Возвращает список диалогов текущего пользователя или сообщества.
  /// Актуальный метод: [getConversations].
  MethodTypeReturn getDialogs(MethodTypeParams params) =>
      _api.request('messages.getDialogs', params);

  /// Returns message history for the specified user or group chat.
  MethodTypeReturn getHistory(MethodTypeParams params) =>
      _api.request('messages.getHistory', params);

  /// Returns media files from the dialog or group chat.
  MethodTypeReturn getHistoryAttachments(MethodTypeParams params) =>
      _api.request('messages.getHistoryAttachments', params);

  /// Returns a list of user's important messages.
  MethodTypeReturn getImportantMessages(MethodTypeParams params) =>
      _api.request('messages.getImportantMessages', params);

  /// Метод отдает пользователей, которые подписались на определенные интенты.
  MethodTypeReturn getIntentUsers(MethodTypeParams params) =>
      _api.request('messages.getIntentUsers', params);

  /// Получает ссылку для приглашения пользователя в беседу.
  MethodTypeReturn getInviteLink(MethodTypeParams params) =>
      _api.request('messages.getInviteLink', params);

  /// Returns a user's current status and date of last activity.
  MethodTypeReturn getLastActivity(MethodTypeParams params) =>
      _api.request('messages.getLastActivity', params);

  /// Returns updates in user's private messages.
  MethodTypeReturn getLongPollHistory(MethodTypeParams params) =>
      _api.request('messages.getLongPollHistory', params);

  /// Returns data required for connection to a Long Poll server.
  MethodTypeReturn getLongPollServer(MethodTypeParams params) =>
      _api.request('messages.getLongPollServer', params);

  /// Получить актуальные счётчики реакций на сообщения
  MethodTypeReturn getMessagesReactions(MethodTypeParams params) =>
      _api.request('messages.getMessagesReactions', params);

  // ignore: lines_longer_than_80_chars
  /// Получить список пользователей и сообществ, которые поставили реакцию на сообщение
  MethodTypeReturn getReactedPeers(MethodTypeParams params) =>
      _api.request('messages.getReactedPeers', params);

  /// Получение ассетов реакций
  MethodTypeReturn getReactionsAssets(MethodTypeParams params) =>
      _api.request('messages.getReactionsAssets', params);

  // ignore: lines_longer_than_80_chars
  /// Returns information whether sending messages from the community to current user is allowed.
  MethodTypeReturn isMessagesFromGroupAllowed(MethodTypeParams params) =>
      _api.request('messages.isMessagesFromGroupAllowed', params);

  /// Позволяет присоединиться к чату по ссылке-приглашению.
  MethodTypeReturn joinChatByInviteLink(MethodTypeParams params) =>
      _api.request('messages.joinChatByInviteLink', params);

  /// Marks and unmarks conversations as unanswered.
  MethodTypeReturn markAsAnsweredConversation(MethodTypeParams params) =>
      _api.request('messages.markAsAnsweredConversation', params);

  /// Marks and unmarks messages as important (starred).
  MethodTypeReturn markAsImportant(MethodTypeParams params) =>
      _api.request('messages.markAsImportant', params);

  /// Marks and unmarks conversations as important.
  MethodTypeReturn markAsImportantConversation(MethodTypeParams params) =>
      _api.request('messages.markAsImportantConversation', params);

  /// Marks messages as read.
  MethodTypeReturn markAsRead(MethodTypeParams params) =>
      _api.request('messages.markAsRead', params);

  /// Pin a message.
  MethodTypeReturn pin(MethodTypeParams params) =>
      _api.request('messages.pin', params);

  // ignore: lines_longer_than_80_chars
  /// Allows the current user to leave a chat or, if the current user started the chat,
  /// allows the user to remove another user from the chat.
  MethodTypeReturn removeChatUser(MethodTypeParams params) =>
      _api.request('messages.removeChatUser', params);

  /// Restores a deleted message.
  MethodTypeReturn restore(MethodTypeParams params) =>
      _api.request('messages.restore', params);

  // ignore: lines_longer_than_80_chars
  /// Returns a list of the current user's private messages that match search criteria.
  MethodTypeReturn search(MethodTypeParams params) =>
      _api.request('messages.search', params);

  // ignore: lines_longer_than_80_chars
  /// Returns a list of the current user's conversations that match search criteria.
  MethodTypeReturn searchConversations(MethodTypeParams params) =>
      _api.request('messages.searchConversations', params);

  // ignore: lines_longer_than_80_chars
  /// Возвращает список найденных диалогов текущего пользователя по введенной строке поиска.
  MethodTypeReturn searchDialogs(MethodTypeParams params) =>
      _api.request('messages.searchDialogs', params);

  /// Sends a message.
  MethodTypeReturn send(MethodTypeParams params) =>
      _api.request('messages.send', params);
  // ignore: lines_longer_than_80_chars
  /// Отправляет событие с действием, которое произойдет при нажатии на callback-кнопку.
  MethodTypeReturn sendMessageEventAnswer(MethodTypeParams params) =>
      _api.request('messages.sendMessageEventAnswer', params);

  /// Метод установки реакции на сообщение
  MethodTypeReturn sendReaction(MethodTypeParams params) =>
      _api.request('messages.sendReaction', params);

  /// Changes the status of a user as typing in a conversation.
  MethodTypeReturn setActivity(MethodTypeParams params) =>
      _api.request('messages.setActivity', params);

  /// Sets a previously-uploaded picture as the cover picture of a chat.
  MethodTypeReturn setChatPhoto(MethodTypeParams params) =>
      _api.request('messages.setChatPhoto', params);

  /// Старт нового звонка от имени пользователя или от сообщества
  MethodTypeReturn startCall(MethodTypeParams params) =>
      _api.request('messages.startCall', params);

  /// Открепляет сообщение.
  MethodTypeReturn unpin(MethodTypeParams params) =>
      _api.request('messages.unpin', params);
}
