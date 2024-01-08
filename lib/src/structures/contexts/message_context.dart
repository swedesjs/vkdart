part of 'context.dart';

/// [MessageContext] is a class that extends the [Context] class.
/// It represents the context of a message-based event in the application.
/// This class is initialized with a specific event type and payload.
///
/// The event type is inherited from the `Context` class and it should be one of the following:
/// - `EventType.message_new`
/// - `EventType.message_reply`
/// - `EventType.message_edit`
///
/// The payload corresponds to the specific data associated with the event.
///
/// Example:
/// ```dart
/// var messageContext = MessageContext(
///   type: EventType.message_new,
///   payload: messagePayload,
/// );
/// ```
class MessageContext extends Context {
  ///
  /// Creates a new instance of [MessageContext].
  ///
  /// The [type] parameter indicates the type of the event that triggered the message context.
  /// It is required and should be one of the following:
  /// - `EventType.message_new`
  /// - `EventType.message_reply`
  /// - `EventType.message_edit`
  ///
  /// The [payload] parameter contains the specific data associated with the event.
  /// It is required for the initialization of the [MessageContext].
  ///
  /// Example:
  /// ```dart
  /// var messagePayload = {'message': {}};
  /// var messageContext = MessageContext(
  ///   type: EventType.message_new,
  ///   payload: messagePayload,
  /// );
  ///
  MessageContext({required super.type, required this.payload})
      : super(
          subTypes: const [
            EventType.message_new,
            EventType.message_reply,
            EventType.message_edit,
          ],
        ) {
    if (payload['client_info'] == null) {
      payload = {
        'message': payload,
        'client_info': {
          'button_actions': ['text'],
          'inline_keyboard': false,
          'keyboard': true,
          'carousel': false,
          'lang_id': 0,
        },
      };
    }
  }

  Map<String, dynamic> payload;

  /// Returns the payload of the message.
  Map<String, dynamic> get message =>
      (payload['message'] as Map).cast<String, dynamic>();

  /// Information about the functions available to the user.
  Map<String, dynamic> get clientInfo =>
      (payload['client_info'] as Map).cast<String, dynamic>();

  /// Returns the id of the message.
  int? get id => message['id'];

  /// Send time in Unixtime.
  int? get date => message['date'];

  /// Peer ID
  int? get peerId => message['peer_id'];

  /// Sender ID.
  int? get senderId => message['from_id'];

  /// Message text.
  String get text => message['text'];

  /// The ID used when sending the message. Returned for outgoing messages only.
  int? get randomId => message['random_id'];

  /// An arbitrary parameter for working with [referral sources](https://dev.vk.com/ru/api/community-messages/getting-started).
  String? get ref => message['ref'];

  /// An arbitrary parameter for working with [referral sources](https://dev.vk.com/ru/api/community-messages/getting-started).
  String? get refSource => message['ref_source'];

  /// Message attachments
  List<MainAttachment> get attachments =>
      (message['attachments'] as List<dynamic>)
          .map((e) => getAttachmentFromJson((e as Map).cast<String, dynamic>()))
          .toList();

  /// The message is marked as important.
  bool? get important => message['important'];

  /// Location information.
  // structure
  Map<String, dynamic>? get geo =>
      (message['geo'] as Map).cast<String, dynamic>();

  /// Service field for messages to bots (payload).
  String? get messagePayload => message['payload'] as String?;

  /// Getter for keyboard
  // structure
  Map<String, dynamic>? get keyboard =>
      (message['keyboard'] as Map).cast<String, dynamic>();

  /// Array of forwarded messages (if any).
  List<MessageContext> get forwardMessages =>
      (message['fwd_messages'] as List<dynamic>)
          .map(
            (e) => MessageContext(
              type: EventType.message_new,
              payload: (e as Map).cast<String, dynamic>(),
            ),
          )
          .toList();

  /// The message in response to which the current one was sent.
  MessageContext? get replyMessage {
    final replyMessageMap =
        (message['reply_message'] as Map?)?.cast<String, dynamic>();

    return replyMessageMap != null
        ? MessageContext(type: EventType.message_new, payload: replyMessageMap)
        : null;
  }

  /// Information about service action with chat.
  // structure
  Map<String, dynamic> get action =>
      (message['action'] as Map).cast<String, dynamic>();

  /// For community posts only. Contains the ID of the user (community administrator) who sent this message.
  int? get adminAuthorId => message['admin_author_id'];

  /// Unique auto-increasing number for all messages with this peer
  int? get conversationMessageId => message['conversation_message_id'];

  /// This message is truncated for a bot.
  bool? get isCropped => message['is_cropped'];

  /// Number of participants.
  int? get membersCount => message['members_count'];

  /// The date the message was updated in Unixtime.
  int? get updateTime => message['update_time'];

  /// Whether the attached audio message has already been listened to by you.
  bool? get wasListened => message['was_listened'];

  /// The date the message was pinned in Unixtime.
  int? get pinnedAt => message['pinned_at'];

  /// A string to match the Notify user to VKontakte.
  String? get messageTag => message['message_tag'];

  /// The flag shows whether the user is mentioned in this message. Added from version 5.217
  bool? get isMentionedUser => message['is_mentioned_user'];

  /// Conversation ID.
  int? get chatId => message['chat_id'];

  /// IDs of the authors of the latest messages in the conversation
  List<int>? get chatActive =>
      (message['chat_active'] as List<dynamic>).cast<int>();

  /// Notification settings for the conversation, if any.
  Map<String, dynamic>? get pushSettings =>
      (message['push_settings'] as Map).cast<String, dynamic>();

  /// Number of conversation participants.
  int? get usersCount => message['users_count'];

  /// ID of the conversation creator.
  int? get adminId => message['admin_id'];

  // ignore: public_member_api_docs
  int? get actionMid => message['action_mid'];

  /// Email that was invited or excluded
  String? get actionEmail => message['action_email'];

  /// Title of the conversation
  String? get actionText => message['action_text'];

  /// URL of a copy of the photo of the conversation, 50 px wide.
  String? get photo_50 => message['photo_50'];

  /// URL of a copy of the photo of the conversation, 100 px wide.
  String? get photo_100 => message['photo_100'];

  /// URL of a copy of the photo of the conversation, 200 px wide.
  String? get photo_200 => message['photo_200'];

  /// Get the button actions from the client info
  List<String> get buttonActions =>
      (clientInfo['button_actions'] as List<dynamic>).cast<String>();

  /// whether the bot keyboard is supported by the client;
  bool? get isSupportedKeyboard => clientInfo['keyboard'];

  /// is the inline keyboard of bots supported by the client;
  bool get isSupportedInlineKeyboard => clientInfo['inline_keyboard'];

  /// Are [carousels](https://dev.vk.com/ru/api/bots/development/messages) supported by the client?
  bool get isSupportedCarousel => clientInfo['carousel'];

  /// Get the language ID from the client info
  int get langId => clientInfo['lang_id'];
}
