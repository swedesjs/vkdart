import 'package:vkdart/model.dart';

/// The model `poll vote new` update.
///
/// See https://dev.vk.com/ru/api/community-events/json-schema#poll_vote_new
class VkDartPollVoteNewUpdate {
  // ignore: public_member_api_docs
  final VkDartUpdate update;

  // ignore: public_member_api_docs
  VkDartPollVoteNewUpdate(this.update);

  /// The ID of the poll owner.
  int get ownerId => update.object['owner_id'];

  /// The ID of the poll.
  int get pollId => update.object['poll_id'];

  /// The ID of the answer option.
  int get optionId => update.object['option_id'];

  /// The user ID.
  int get userId => update.object['user_id'];
}
