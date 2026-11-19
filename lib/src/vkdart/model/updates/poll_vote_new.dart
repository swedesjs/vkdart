import 'package:vkdart/model.dart';

/// Модель обновления `poll vote new`.
///
/// См. https://dev.vk.com/ru/api/community-events/json-schema#poll_vote_new
class VkDartPollVoteNewUpdate {
  // ignore: public_member_api_docs
  final VkDartUpdate update;

  // ignore: public_member_api_docs
  VkDartPollVoteNewUpdate(this.update);

  /// ID владельца опроса.
  int get ownerId => update.object['owner_id'];

  /// ID опроса.
  int get pollId => update.object['poll_id'];

  /// ID варианта ответа.
  int get optionId => update.object['option_id'];

  /// ID пользователя.
  int get userId => update.object['user_id'];
}
