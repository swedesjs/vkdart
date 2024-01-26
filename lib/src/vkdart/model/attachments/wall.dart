// ignore_for_file: avoid_dynamic_calls

part of 'attachment.dart';

/// Model Wall.
///
/// See https://vk.com/dev/objects/wall
class WallAttachmentModel extends CustomAttachmentModel
    with AttachmentLikesMixin, AttachmentRepostsMixin {
  // ignore: public_member_api_docs
  WallAttachmentModel(super.payload);

  @override
  int get ownerId => attachmentObject['owner_id'] ?? attachmentObject['to_id'];

  /// The ID of the author of the record (on whose behalf the record was published).
  int get fromId => attachmentObject['from_id'];

  /// The ID of the administrator who published the entry (returned only for communities when requested with an administrator access key).
  /// It is returned in records published less than 24 hours ago.
  int get createdBy => attachmentObject['created_by'];

  /// The time when the record was published in unixtime format.
  int get date => attachmentObject['date'];

  /// Text wall.
  String get text => attachmentObject['text'];

  /// The ID of the owner of the record in response to which the current one was left.
  int get replyOwnerId => attachmentObject['reply_owner_id'];

  /// ID of the record that the current one was left in response to.
  int? get replyPostId => attachmentObject['reply_post_id'];

  /// `1`, if the record was created with the "Friends only" option.
  int? get friendsOnly => attachmentObject['friends_only'];

  /// number of comments;
  int get commentsCount => attachmentObject['comments']['count'];

  /// information about whether the current user can comment on the entry (1 — can, 0 — cannot);
  int get commentsCanPost => attachmentObject['comments']['can_post'];

  /// information about whether communities can comment on the post;s
  bool get commentsGroupsCanPost =>
      attachmentObject['comments']['groups_can_post'];

  /// Can the current user close comments on the post;
  bool get commentsCanClose => attachmentObject['comments']['can_close'];

  /// whether the current user can open comments on the post.
  bool get commentsCanOpen => attachmentObject['comments']['can_open'];

  // ignore: public_member_api_docs
  int get copyrightId => attachmentObject['copyright']['id'];
  // ignore: public_member_api_docs
  String? get copyrightLink => attachmentObject['copyright']?['link'];
  // ignore: public_member_api_docs
  String? get copyrightName => attachmentObject['copyright']?['name'];
  // ignore: public_member_api_docs
  String? get copyrightType => attachmentObject['copyright']?['type'];

  /// the number of views of the wall.
  int get viewsCount => attachmentObject['views']['count'];

  /// The record type can take the following values: post, `copy`, `reply`, `postpone`, `suggest`.
  String get postType => attachmentObject['post_type'];

  /// Information about the recording placement method.
  /// See https://vk.com/dev/objects/wall#post_source
  Map<String, dynamic>? get postSource => attachmentObject['post_source'];

  /// An array of objects corresponding to media resources attached to a record: photos, documents, video files, and others.
  /// See https://vk.com/dev/objects/wall#attachments
  // TODO: implement type selection
  List<Map<String, dynamic>> get attachments => attachmentObject['attachments'];

  /// type of place;
  String? get geoType => attachmentObject['geo']?['type'];

  /// location coordinates;
  String? get geoCoordinates => attachmentObject['geo']?['coordinates'];

  /// description of the place (if it has been added).
  /// See https://vk.com/dev/objects/wall#geo
  Map<String, dynamic>? get geoPlace => attachmentObject['geo']?['place'];

  /// The ID of the author, if the entry was published on behalf of the community and signed by the user;
  int get signerId => attachmentObject['signer_id'];

  /// An array containing the history of reposts to be recorded.
  /// It is returned only if the record is a repost.
  /// Each of the array objects, in turn, is a standard format record object.
  List<WallAttachmentModel>? get copyHistory =>
      (attachmentObject['copy_history'] as List?)
          ?.map((e) => WallAttachmentModel((e as Map).cast<String, dynamic>()))
          .toList();

  /// Information about whether the current user can pin the record (1 — can, 0 — cannot).
  int get canPin => attachmentObject['can_pin'];

  /// Information about whether the current user can delete an entry (1 — can, 0 — cannot).
  int get canDelete => attachmentObject['can_delete'];

  /// Information about whether the current user can edit the record (1 — can, 0 — cannot).
  int get canEdit => attachmentObject['can_edit'];

  /// Information that the record is pinned.
  int get isPinned => attachmentObject['is_pinned'];

  /// Information about whether the record contains the mark "advertising" (1 — yes, 0 — no).
  int get markedAsAds => attachmentObject['marked_as_ads'];

  /// `true` if the object has been added to the bookmarks of the current user.
  bool? get isFavorite => attachmentObject['is_favorite'];

  /// Information about VK Donut entry:
  ///
  /// See https://vk.com/dev/objects/wall#donut
  Map<String, dynamic>? get donut => attachmentObject['donut'];

  /// ID of the deferred record.
  /// This field is returned when the recording was on the timer.
  int? get postponedId => attachmentObject['postponed_id'];
}
