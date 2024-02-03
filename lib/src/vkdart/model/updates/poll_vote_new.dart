import 'package:vkdart/model.dart';

/// The model `poll vote new` update.
///
/// See https://dev.vk.com/ru/api/community-events/json-schema#poll_vote_new
class VkDartPollVoteNewUpdate with VkDartUpdate {
  // ignore: public_member_api_docs
  VkDartPollVoteNewUpdate(this.update);
  @override
  final Update update;

  /// The ID of the poll owner.
  int get ownerId => payload['owner_id'];

  /// The ID of the poll.
  int get pollId => payload['poll_id'];

  /// The ID of the answer option.
  int get optionId => payload['option_id'];

  /// The user ID.
  int get userId => payload['user_id'];
}
