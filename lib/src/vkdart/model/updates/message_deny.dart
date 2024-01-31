import 'package:vkdart/model.dart';

/// The message deny model.
class VkDartMessageDeny extends MessageDenyModel with VkDartUpdate {
  // ignore: public_member_api_docs
  VkDartMessageDeny(this.update) : super(update.object);

  @override
  final Update update;
}

/// Message Deny model.
///
/// See https://dev.vk.com/ru/api/community-events/json-schema#message_deny
class MessageDenyModel {
  // ignore: public_member_api_docs
  MessageDenyModel(this.payload);

  /// Payload.
  final Map<String, dynamic> payload;

  /// The user ID.
  int get userId => payload['user_id'];
}
