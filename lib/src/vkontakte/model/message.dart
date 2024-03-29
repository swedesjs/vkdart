import 'package:vkdart/util.dart';
import 'package:vkdart/vkontakte.dart';

/// Model Message.
///
/// See https://dev.vk.com/ru/reference/objects/message
class MessageModel {
  /// Update data.
  late final Map<String, dynamic> payload;

  // ignore: public_member_api_docs
  MessageModel(Map<String, dynamic> payload) {
    applyPayload(payload);
  }

  /// Apply payload.
  void applyPayload(Map<String, dynamic> payload) {
    final checkClientInfo = payload['client_info'] != null;

    this.payload = checkClientInfo
        ? payload
        : {
            'message': payload,
            'client_info': {
              'button_actions': [],
              'keyboard': false,
              'inline_keyboard': false,
              'carousel': false,
              'lang_id': 0
            }
          };
  }

  /// Message object.
  Map<String, dynamic> get message => payload['message'];

  /// Client info.
  Map<String, dynamic> get clientInfo => payload['client_info'];

  /// The ID of the message.
  int? get id => message['id'];

  /// The time of sending in Unix time.
  int? get createdAt => message['date'];

  /// The destination ID.
  int get peerId => message['peer_id'];

  /// The type of destination.
  MessageSource get peerType => getPeerType(peerId);

  /// The sender's ID.
  int get senderId => message['from_id'];

  /// The sender's type.
  MessageSource get senderType => getPeerType(senderId);

  /// The text of the message.
  String get text => message['text'];

  /// The ID used when sending the message.
  /// It is returned only for outgoing messages.
  int? get randomId => message['random_id'];

  /// An arbitrary parameter for working with transition
  /// [sources](https://dev.vk.com/ru/api/community-messages/getting-started).
  String? get ref => message['ref'];

  /// An arbitrary parameter for working with transition
  /// [sources](https://dev.vk.com/ru/api/community-messages/getting-started).
  String? get refSource => message['ref_source'];

  /// Media attachments of the message (photos, links, etc.).
  List<AttachmentModel> get attachments =>
      transformAttachments((message['attachments'] as List?)
              ?.map((e) => (e as Map).cast<String, dynamic>())
              .toList() ??
          const []);

  /// true if the message is marked as important.
  bool? get isImportant => message['important'];

  /// Location Information.
  Map<String, dynamic>? get geo => message['geo'];

  /// A service field for messages to bots (payload).
  String? get messagePayload => message['payload'];

  /// A keyboard object for bots.
  Map<String, dynamic>? get keyboard => message['keyboard'];

  /// the archive of forwarded messages (if any).
  /// The maximum number of elements is 100.
  /// The maximum nesting depth for forwarded messages is 45, the total maximum number in the chain, taking into account nesting, is 500.
  List<MessageModel>? get forwards => (message['fwd_messages'] as List?)
      ?.map((e) => MessageModel((e as Map).cast<String, dynamic>()))
      .toList();

  /// The message that the current one was sent in response to.
  MessageModel? get replyMessage => message['reply_message'] != null
      ? MessageModel(message['reply_message'])
      : null;

  /// Information about the service action with the chat.
  ///
  /// If the property returns `null`, then most likely the field type in the payload is [String].
  /// Try referring to the [actionType] property,
  /// if this property is also `null`,
  /// then the **API** has not returned a field.
  Map<String, dynamic>? get action {
    final actionPayload = message['action'];
    if (actionPayload is String) return null;

    return actionPayload;
  }

  /// Chat action type.
  String? get actionType => action?['type'] ?? message['action'];

  /// The ID of the user who was invited or excluded from the chat, or who pinned or unpinned the message.
  int? get actionMemberId => action?['member_id'] ?? message['action_mid'];

  /// New title of the conversation.
  String? get actionText => action?['text'] ?? message['action_text'];

  /// An old conversation title.
  String? get actionOldText => action?['old_text'];

  /// Email invited or excluded.
  String? get actionEmail => action?['email'] ?? message['action_email'];

  /// The URL of the 50 px wide copy of the conversation photo.
  String? get actionPhoto50 =>
      action?['photo']?['photo_50'] ?? message['photo_50'];

  /// The URL of the 100 px wide copy of the conversation photo.
  String? get actionPhoto100 =>
      action?['photo']?['photo_100'] ?? message['photo_100'];

  /// The URL of the 200 px wide copy of the conversation photo.
  String? get actionPhoto200 =>
      action?['photo']?['photo_200'] ?? message['photo_200'];

  /// For community messages only. Contains the ID of the user (community administrator) who sent this message.
  int? get adminAuthorId => message['admin_author_id'];

  /// A unique automatically incrementing number for all messages with this peer.
  int? get conversationMessageId => message['conversation_message_id'];

  /// This message is cropped for the bot.
  bool? get isCropped => message['is_cropped'];

  /// The number of participants.
  int? get membersCount => message['members_count'];

  /// The date when the message was updated in Unixtime.
  int? get updateTime => message['update_time'];

  /// Whether the attached audio message has already been listened to by you.
  bool? get isWasListened => message['was_listened'];

  /// The date when the message was pinned to Unixtime.
  int? get pinnedAt => message['pinned_at'];

  /// A string for matching the Notify user and VKontakte.
  ///
  /// See https://dev.vk.com/ru/reference/objects/message#message_tag
  String? get messageTag => message['message_tag'];

  /// The flag indicates whether the user is mentioned in this message.
  /// Added since version 5.217
  bool? get isMentionedUser => message['is_mentioned_user'];

  /// The ID of the conversation.
  int? get chatId {
    if (peerType != MessageSource.chat) {
      return null;
    }

    return peerId - peerChatIdOffset;
  }

  /// IDs of the authors of the last messages of the conversation.
  List<int>? get chatActive => (message['chat_active'] as List?)?.cast<int>();

  /// Notification settings for the conversation, if any.
  Map<String, dynamic>? get pushSettings => message['push_settings'];

  /// The number of participants in the conversation.
  int? get usersCount => message['users_count'];

  /// ID of the conversation creator.
  int? get adminId => message['admin_id'];
}
