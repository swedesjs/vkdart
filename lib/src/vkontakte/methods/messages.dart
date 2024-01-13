part of '../../methods.dart';

/// Методы для работы с личными сообщениями.
class Messages {
  /// Конструктор.
  Messages(this._api);
  final Api _api;

  /// Adds a new user to a chat.
  Future<ApiResponse<T>> addChatUser<T>(MethodTypeParams params) =>
      _api.request<T>('messages.addChatUser', params);

  /// Allows sending messages from community to the current user.
  Future<ApiResponse<T>> allowMessagesFromGroup<T>(MethodTypeParams params) =>
      _api.request<T>('messages.allowMessagesFromGroup', params);

  /// Creates a chat with several participants.
  Future<ApiResponse<T>> createChat<T>(MethodTypeParams params) =>
      _api.request<T>('messages.createChat', params);

  /// Deletes one or more messages.
  Future<ApiResponse<T>> delete<T>(MethodTypeParams params) =>
      _api.request<T>('messages.delete', params);

  /// Deletes a chat's cover picture.
  Future<ApiResponse<T>> deleteChatPhoto<T>(MethodTypeParams params) =>
      _api.request<T>('messages.deleteChatPhoto', params);

  /// Deletes all private messages in a conversation.
  Future<ApiResponse<T>> deleteConversation<T>(MethodTypeParams params) =>
      _api.request<T>('messages.deleteConversation', params);

  /// Удаление ранее поставленной реакции.
  Future<ApiResponse<T>> deleteReaction<T>(MethodTypeParams params) =>
      _api.request<T>('messages.deleteReaction', params);

  /// Denies sending message from community to the current user.
  Future<ApiResponse<T>> denyMessagesFromGroup<T>(MethodTypeParams params) =>
      _api.request<T>('messages.denyMessagesFromGroup', params);

  /// Edits the message.
  Future<ApiResponse<T>> edit<T>(MethodTypeParams params) =>
      _api.request<T>('messages.edit', params);

  /// Edits the title of a chat.
  Future<ApiResponse<T>> editChat<T>(MethodTypeParams params) =>
      _api.request<T>('messages.editChat', params);

  /// Метод используется для принудительного завершения звонка.
  Future<ApiResponse<T>> forceCallFinish<T>(MethodTypeParams params) =>
      _api.request<T>('messages.forceCallFinish', params);

  /// Возвращает список входящих личных сообщений текущего пользователя или сообщества.
  Future<ApiResponse<T>> get<T>(MethodTypeParams params) =>
      _api.request<T>('messages.get', params);

  /// Returns messages by their IDs within the conversation.
  Future<ApiResponse<T>> getByConversationMessageId<T>(
          MethodTypeParams params) =>
      _api.request<T>('messages.getByConversationMessageId', params);

  /// Returns messages by their IDs.
  Future<ApiResponse<T>> getById<T>(MethodTypeParams params) =>
      _api.request<T>('messages.getById', params);

  /// Возвращает информацию о беседе.
  Future<ApiResponse<T>> getChat<T>(MethodTypeParams params) =>
      _api.request<T>('messages.getChat', params);

  /// Получает данные для превью чата с приглашением по ссылке.
  Future<ApiResponse<T>> getChatPreview<T>(MethodTypeParams params) =>
      _api.request<T>('messages.getChatPreview', params);

  /// Позволяет получить список пользователей мультидиалога по его `id`.
  Future<ApiResponse<T>> getChatUsers<T>(MethodTypeParams params) =>
      _api.request<T>('messages.getChatUsers', params);

  /// Returns a list of IDs of users participating in a chat.
  Future<ApiResponse<T>> getConversationMembers<T>(MethodTypeParams params) =>
      _api.request<T>('messages.getConversationMembers', params);

  /// Returns a list of the current user's conversations.
  Future<ApiResponse<T>> getConversations<T>(MethodTypeParams params) =>
      _api.request<T>('messages.getConversations', params);

  /// Returns conversations by their IDs
  Future<ApiResponse<T>> getConversationsById<T>(MethodTypeParams params) =>
      _api.request<T>('messages.getConversationsById', params);

  /// Возвращает список диалогов текущего пользователя или сообщества.
  /// Актуальный метод: [getConversations].
  Future<ApiResponse<T>> getDialogs<T>(MethodTypeParams params) =>
      _api.request<T>('messages.getDialogs', params);

  /// Returns message history for the specified user or group chat.
  Future<ApiResponse<T>> getHistory<T>(MethodTypeParams params) =>
      _api.request<T>('messages.getHistory', params);

  /// Returns media files from the dialog or group chat.
  Future<ApiResponse<T>> getHistoryAttachments<T>(MethodTypeParams params) =>
      _api.request<T>('messages.getHistoryAttachments', params);

  /// Returns a list of user's important messages.
  Future<ApiResponse<T>> getImportantMessages<T>(MethodTypeParams params) =>
      _api.request<T>('messages.getImportantMessages', params);

  /// Метод отдает пользователей, которые подписались на определенные интенты.
  Future<ApiResponse<T>> getIntentUsers<T>(MethodTypeParams params) =>
      _api.request<T>('messages.getIntentUsers', params);

  /// Получает ссылку для приглашения пользователя в беседу.
  Future<ApiResponse<T>> getInviteLink<T>(MethodTypeParams params) =>
      _api.request<T>('messages.getInviteLink', params);

  /// Returns a user's current status and date of last activity.
  Future<ApiResponse<T>> getLastActivity<T>(MethodTypeParams params) =>
      _api.request<T>('messages.getLastActivity', params);

  /// Returns updates in user's private messages.
  Future<ApiResponse<T>> getLongPollHistory<T>(MethodTypeParams params) =>
      _api.request<T>('messages.getLongPollHistory', params);

  /// Returns data required for connection to a Long Poll server.
  Future<ApiResponse<T>> getLongPollServer<T>(MethodTypeParams params) =>
      _api.request<T>('messages.getLongPollServer', params);

  /// Получить актуальные счётчики реакций на сообщения
  Future<ApiResponse<T>> getMessagesReactions<T>(MethodTypeParams params) =>
      _api.request<T>('messages.getMessagesReactions', params);

  /// Получить список пользователей и сообществ, которые поставили реакцию на сообщение
  Future<ApiResponse<T>> getReactedPeers<T>(MethodTypeParams params) =>
      _api.request<T>('messages.getReactedPeers', params);

  /// Получение ассетов реакций
  Future<ApiResponse<T>> getReactionsAssets<T>(MethodTypeParams params) =>
      _api.request<T>('messages.getReactionsAssets', params);

  /// Returns information whether sending messages from the community to current user is allowed.
  Future<ApiResponse<T>> isMessagesFromGroupAllowed<T>(
          MethodTypeParams params) =>
      _api.request<T>('messages.isMessagesFromGroupAllowed', params);

  /// Позволяет присоединиться к чату по ссылке-приглашению.
  Future<ApiResponse<T>> joinChatByInviteLink<T>(MethodTypeParams params) =>
      _api.request<T>('messages.joinChatByInviteLink', params);

  /// Marks and unmarks conversations as unanswered.
  Future<ApiResponse<T>> markAsAnsweredConversation<T>(
          MethodTypeParams params) =>
      _api.request<T>('messages.markAsAnsweredConversation', params);

  /// Marks and unmarks messages as important (starred).
  Future<ApiResponse<T>> markAsImportant<T>(MethodTypeParams params) =>
      _api.request<T>('messages.markAsImportant', params);

  /// Marks and unmarks conversations as important.
  Future<ApiResponse<T>> markAsImportantConversation<T>(
          MethodTypeParams params) =>
      _api.request<T>('messages.markAsImportantConversation', params);

  /// Marks messages as read.
  Future<ApiResponse<T>> markAsRead<T>(MethodTypeParams params) =>
      _api.request<T>('messages.markAsRead', params);

  /// Pin a message.
  Future<ApiResponse<T>> pin<T>(MethodTypeParams params) =>
      _api.request<T>('messages.pin', params);

  /// Allows the current user to leave a chat or, if the current user started the chat,
  /// allows the user to remove another user from the chat.
  Future<ApiResponse<T>> removeChatUser<T>(MethodTypeParams params) =>
      _api.request<T>('messages.removeChatUser', params);

  /// Restores a deleted message.
  Future<ApiResponse<T>> restore<T>(MethodTypeParams params) =>
      _api.request<T>('messages.restore', params);

  /// Returns a list of the current user's private messages that match search criteria.
  Future<ApiResponse<T>> search<T>(MethodTypeParams params) =>
      _api.request<T>('messages.search', params);

  /// Returns a list of the current user's conversations that match search criteria.
  Future<ApiResponse<T>> searchConversations<T>(MethodTypeParams params) =>
      _api.request<T>('messages.searchConversations', params);

  /// Возвращает список найденных диалогов текущего пользователя по введенной строке поиска.
  Future<ApiResponse<T>> searchDialogs<T>(MethodTypeParams params) =>
      _api.request<T>('messages.searchDialogs', params);

  /// Sends a message.
  Future<ApiResponse<T>> send<T>(MethodTypeParams params) =>
      _api.request<T>('messages.send', params);

  /// Отправляет событие с действием, которое произойдет при нажатии на callback-кнопку.
  Future<ApiResponse<T>> sendMessageEventAnswer<T>(MethodTypeParams params) =>
      _api.request<T>('messages.sendMessageEventAnswer', params);

  /// Метод установки реакции на сообщение
  Future<ApiResponse<T>> sendReaction<T>(MethodTypeParams params) =>
      _api.request<T>('messages.sendReaction', params);

  /// Changes the status of a user as typing in a conversation.
  Future<ApiResponse<T>> setActivity<T>(MethodTypeParams params) =>
      _api.request<T>('messages.setActivity', params);

  /// Sets a previously-uploaded picture as the cover picture of a chat.
  Future<ApiResponse<T>> setChatPhoto<T>(MethodTypeParams params) =>
      _api.request<T>('messages.setChatPhoto', params);

  /// Старт нового звонка от имени пользователя или от сообщества
  Future<ApiResponse<T>> startCall<T>(MethodTypeParams params) =>
      _api.request<T>('messages.startCall', params);

  /// Открепляет сообщение.
  Future<ApiResponse<T>> unpin<T>(MethodTypeParams params) =>
      _api.request<T>('messages.unpin', params);
}
