import 'package:vkdart/model.dart';

/// The message allow model.
class VkDartMessageAllow extends MessageAllowModel with VkDartUpdate {
  // ignore: public_member_api_docs
  VkDartMessageAllow(this.update) : super(update.object);

  @override
  final Update update;
}

/// Message Allow model.
///
/// See https://dev.vk.com/ru/api/community-events/json-schema#message_allow
class MessageAllowModel {
  // ignore: public_member_api_docs
  MessageAllowModel(this.payload);

  /// Payload.
  final Map<String, dynamic> payload;

  /// The user ID.
  int get userId => payload['user_id'];

  /// The parameter passed in the messages.allowMessagesFromGroup method.
  String get key => payload['key'];
}
