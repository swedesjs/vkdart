import 'package:vkdart/model.dart';

/// The message reaction event model.
class VkDartMessageReactionEvent with VkDartUpdate {
  // ignore: public_member_api_docs
  VkDartMessageReactionEvent(this.update);

  @override
  final Update update;

  // ignore: public_member_api_docs
  int get reactedId => payload['reacted_id'];
  // ignore: public_member_api_docs
  int get peerId => payload['peer_id'];
  // ignore: public_member_api_docs
  int get reactionId => payload['reaction_id'];
}
