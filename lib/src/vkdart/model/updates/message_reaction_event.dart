import 'package:vkdart/model.dart';

/// The message reaction event model.
class VkDartMessageReactionEventUpdate with VkDartUpdate {
  // ignore: public_member_api_docs
  VkDartMessageReactionEventUpdate(this.update);

  @override
  final Update update;

  // ignore: public_member_api_docs
  int get reactedId => updateObject['reacted_id'];
  // ignore: public_member_api_docs
  int get peerId => updateObject['peer_id'];
  // ignore: public_member_api_docs
  int get reactionId => updateObject['reaction_id'];
}
