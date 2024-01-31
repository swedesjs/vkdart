import 'package:vkdart/methods.dart' show Api;
import 'package:vkdart/model.dart';

// ignore: public_member_api_docs
const peerChatIdOffset = 2000000000;

/// Message Source
enum MessageSource {
  /// User.
  user,

  /// Group.
  group,

  /// Chat.
  chat
}

/// The message model (for events `message_new`, `message_edit`, `message_reply`).
class VkDartMessage extends MessageModel with VkDartUpdate {
  // ignore: public_member_api_docs
  VkDartMessage(Api api, this.update)
      : _api = api,
        super(update.object);

  @override
  final Update update;
  // ignore: unused_field
  final Api _api;
}

/// Model Message.
///
/// See https://dev.vk.com/ru/reference/objects/message
class MessageModel {
  // ignore: public_member_api_docs
  MessageModel(this.payload) {
    if (payload['client_info'] == null) {
      payload = {
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
  }

  /// Update data.
  Map<String, dynamic> payload;

  /// Message object.
  Map<String, dynamic> get message => payload['message'];

  /// Client info.
  Map<String, dynamic> get clientInfo => payload['client_info'];

  /// The ID of the message.
  int get id => message['id'];

  /// The time of sending in Unixtime.
  int? get createdAt => message['date'];

  /// The destination ID.
  int get peerId => message['peer_id'];

  /// The type of destination.
  MessageSource get peerType => _getPeerType(peerId);

  /// The sender's ID.
  int get senderId => message['from_id'];

  /// The sender's type.
  MessageSource get senderType => _getPeerType(senderId);

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
  List<AttachmentModel> get attachments => (message['attachments'] as List)
      .map((e) =>
          AttachmentModel.fromSpecificModel((e as Map).cast<String, dynamic>()))
      .toList();

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
  Map<String, dynamic>? get action => message['action'];

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

  /// See https://dev.vk.com/ru/reference/objects/message#action_mid
  int? get actionMid => message['action_mid'];

  /// See https://dev.vk.com/ru/reference/objects/message#action_email
  String? get actionEmail => message['action_email'];

  /// See https://dev.vk.com/ru/reference/objects/message#action_text
  String? get actionText => message['action_text'];

  /// The URL of the 50 px wide copy of the conversation photo.
  String? get photo50 => message['photo_50'];

  /// The URL of the 100 px wide copy of the conversation photo.
  String? get photo100 => message['photo_100'];

  /// The URL of the 200 px wide copy of the conversation photo.
  String? get photo200 => message['photo_200'];

  MessageSource _getPeerType(int id) {
    if (peerChatIdOffset < id) {
      return MessageSource.chat;
    }

    if (id < 0) {
      return MessageSource.group;
    }

    return MessageSource.user;
  }
}
