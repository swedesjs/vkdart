// ignore_for_file: constant_identifier_names

import 'package:vkdart/src/structures/attachements/attachments.dart';

part 'message_context.dart';

/// [Context] is a class that represents the context of an event.
class Context {
  /// Initializes a new instance of the [Context] class.
  Context({required this.type, required this.subTypes});

  /// Type of event.
  final EventType type;

  /// List of subtypes.
  final List<EventType> subTypes;
}

/// [EventType] is an enumeration of possible event types.
enum EventType {
  /// Represents a new message event.
  message_new,

  /// Represents a reply to a message event.
  message_reply,

  /// Represents an edited message event.
  message_edit,

  /// Subscribe to messages from the community. The user clicked the Allow messages button or wrote the first message to the community.
  message_allow,

  /// New ban on messages from the community. The user clicked the Block messages button.
  message_deny,

  /// Typing status. The user types a message in a conversation or downloads an audio message.
  message_typing_state,

  /// Action with message. The user clicked the [Callback button](https://dev.vk.com/ru/api/bots/development/keyboard#Callback-%D0%BA%D0%BD%D0%BE%D0%BF%D0%BA%D0%B8).
  message_event,

  /// Adding a photo.
  photo_new,

  /// Adding a comment to a photo.
  photo_comment_new,

  /// Editing a comment on a photo.
  photo_comment_edit,

  /// Restoring a comment on a photo.
  photo_comment_restore,

  /// Deleting a comment on a photo.
  photo_comment_delete,

  /// Audio added.
  audio_new,

  /// Video added.
  video_new,

  /// Adding a comment to a video.
  video_comment_new,

  /// Editing a comment on a video.
  video_comment_edit,

  /// Restoring a comment on a video.
  video_comment_restore,

  /// Deleting a comment on a video.
  video_comment_delete,

  /// Post added.
  wall_post_new,

  /// Post reposted.
  wall_repost,

  /// Restoring a comment on the wall.
  wall_reply_new,

  /// Editing a comment on the wall.
  wall_reply_edit,

  ///  Restoring a comment on the wall.
  wall_reply_restore,

  /// Deleting a comment on the wall.
  wall_reply_delete,

  /// New mark event I like it.
  like_add,

  /// Removing mark event I like it.
  like_remove,

  /// Create a comment in a discussion.
  board_post_new,

  /// Edit a comment in a discussion.
  board_post_edit,

  /// Restoring a comment on the wall.
  board_post_restore,

  /// Deleting a comment on the wall.
  board_post_delete,

  /// New comment on the product.
  market_comment_new,

  /// Editing a comment on the product.
  market_comment_edit,

  /// Restoring a comment on the product.
  market_comment_restore,

  /// Deleting a comment on the product.
  market_comment_delete,

  /// New order. To enable the event, you must enable advanced products in your community settings.
  market_order_new,

  /// Editing an order.
  market_order_edit,

  /// Adding a member or application to join the community.
  group_join,

  /// Removing a member or application from the community.
  group_leave,

  /// Adding a user to the blacklist.
  user_block,

  /// Removing a user from the blacklist.
  user_unblock,

  /// Adding a voice to a public poll.
  poll_vote_new,

  /// Editing the list of managers.
  group_officers_edit,

  /// Change community settings.
  group_change_settings,

  /// Change group photo.
  group_change_photo,

  /// Payment via VK Pay.
  vkpay_transaction,

  /// Event from VK Mini Apps added to the community.
  app_payload,

  /// Creating a VK Donut subscription.
  donut_subscription_create,

  /// Prolonging a VK Donut subscription.
  donut_subscription_prolonged,

  /// Subscription has expired.
  donut_subscription_expired,

  /// Subscription has been cancelled.
  donut_subscription_cancelled,

  /// Subscription price changed.
  donut_subscription_price_changed,

  /// Withdrawal from VK Donut.
  donut_money_withdraw,

  /// Withdrawal error from VK Donut.
  donut_money_withdraw_error;
}

/// Returns the [EventType] that matches the provided string [type].
///
/// This function is used to map a string representation of an event type
/// to an actual [EventType] enum. It searches through all available EventTypes
/// and returns the first one where the name of the EventType matches the
/// provided string.
///
/// Example:
/// ```dart
/// var eventType = getEventTypeFromString('poll_vote_new');
/// print(eventType); // Outputs: EventType.poll_vote_new
/// ```
EventType getEventTypeFromString(String type) =>
    EventType.values.firstWhere((element) => element.name == type);
