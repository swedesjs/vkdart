import 'package:vkdart/model.dart';

/// The message reaction event model.
class VkDartMessageReactionEventUpdate {
  // ignore: public_member_api_docs
  final VkDartUpdate update;

  // ignore: public_member_api_docs
  VkDartMessageReactionEventUpdate(this.update);

  // ignore: public_member_api_docs
  int get reactedId => update.object['reacted_id'];
  // ignore: public_member_api_docs
  int get peerId => update.object['peer_id'];
  // ignore: public_member_api_docs
  int get reactionId => update.object['reaction_id'];
}
