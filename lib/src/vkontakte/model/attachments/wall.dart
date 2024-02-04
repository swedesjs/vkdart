import 'package:vkdart/util.dart';
import 'package:vkdart/vkontakte.dart';

/// Model Wall.
///
/// See https://dev.vk.com/ru/reference/objects/wall
class WallAttachmentModel extends CustomAttachmentModel
    with AttachmentLikesMixin, AttachmentRepostsMixin {
  // ignore: public_member_api_docs
  WallAttachmentModel(super.payload) : super(attachType: 'wall');

  @override
  int get ownerId => payload['owner_id'] ?? payload['to_id'];

  /// The ID of the author of the record (on whose behalf the record was published).
  int? get fromId => payload['from_id'];

  /// The ID of the administrator who published the entry (returned only for communities when requested with an administrator access key).
  /// It is returned in records published less than 24 hours ago.
  int? get createdUserId => payload['created_by'];

  /// The time when the record was published in unixtime format.
  int? get createdAt => payload['date'];

  /// Text wall.
  String? get text => payload['text'];

  /// The ID of the owner of the record in response to which the current one was left.
  int? get replyOwnerId => payload['reply_owner_id'];

  /// ID of the record that the current one was left in response to.
  int? get replyPostId => payload['reply_post_id'];

  /// `1`, if the record was created with the "Friends only" option.
  bool? get isFriendsOnly => checkBoolInProperty('friends_only');

  Map<String, dynamic>? get _comments => payload['comments'];
  Map<String, dynamic>? get _copyright => payload['copyright'];

  /// number of comments;
  int? get commentsCount => _comments?['count'];

  /// information about whether the current user can comment on the entry ;
  bool? get isCommentsCanPost => checkBoolUtil(_comments?['can_post']);

  /// information about whether communities can comment on the post;
  bool? get isCommentsGroupsCanPost =>
      checkBoolUtil(_comments?['groups_can_post']);

  /// Can the current user close comments on the post;
  bool? get isCommentsCanClose => checkBoolUtil(_comments?['can_close']);

  /// whether the current user can open comments on the post.
  bool? get isCommentsCanOpen => checkBoolUtil(_comments?['can_open']);

  // ignore: public_member_api_docs
  int get copyrightId => _copyright?['id'];
  // ignore: public_member_api_docs
  String? get copyrightLink => _copyright?['link'];
  // ignore: public_member_api_docs
  String? get copyrightName => _copyright?['name'];
  // ignore: public_member_api_docs
  String? get copyrightType => _copyright?['type'];

  /// the number of views of the wall.
  int? get viewsCount => payload['views']?['count'];

  /// The record type can take the following values: post, `copy`, `reply`, `postpone`, `suggest`.
  String? get postType => payload['post_type'];

  /// Information about the recording placement method.
  /// See https://vk.com/dev/objects/wall#post_source
  Map<String, dynamic>? get postSource => payload['post_source'];

  /// An array of objects corresponding to media resources attached to a record: photos, documents, video files, and others.
  /// See https://dev.vk.com/ru/reference/objects/wall#attachments
  List<AttachmentModel> get attachments =>
      transformAttachments((payload['attachments'] as List?)
              ?.map((e) => (e as Map).cast<String, dynamic>())
              .toList() ??
          const []);

  /// type of place;
  String? get geoType => payload['geo']?['type'];

  /// location coordinates;
  String? get geoCoordinates => payload['geo']?['coordinates'];

  /// description of the place (if it has been added).
  /// See https://dev.vk.com/ru/reference/objects/wall#geo
  Map<String, dynamic>? get geoPlace => payload['geo']?['place'];

  /// The ID of the author, if the entry was published on behalf of the community and signed by the user;
  int? get signerId => payload['signer_id'];

  /// An array containing the history of reposts to be recorded.
  /// It is returned only if the record is a repost.
  /// Each of the array objects, in turn, is a standard format record object.
  List<WallAttachmentModel>? get copyHistory =>
      (payload['copy_history'] as List?)
          ?.map((e) => WallAttachmentModel((e as Map).cast<String, dynamic>()))
          .toList();

  /// Information about whether the current user can pin the record
  bool? get isCanPin => checkBoolInProperty('can_pin');

  /// Information about whether the current user can delete an entry
  bool? get isCanDelete => checkBoolInProperty('can_delete');

  /// Information about whether the current user can edit the record
  bool? get isCanEdit => checkBoolInProperty('can_edit');

  /// Information that the record is pinned.
  bool? get isPinned => checkBoolInProperty('is_pinned');

  /// Information about whether the record contains the mark "advertising"
  bool? get isMarkedAsAds => checkBoolInProperty('marked_as_ads');

  /// `true` if the object has been added to the bookmarks of the current user.
  bool? get isFavorite => payload['is_favorite'];

  /// Information about VK Donut entry:
  ///
  /// See https://dev.vk.com/ru/reference/objects/wall#donut
  Map<String, dynamic>? get donut => payload['donut'];

  /// ID of the deferred record.
  /// This field is returned when the recording was on the timer.
  int? get postponedId => payload['postponed_id'];
}
