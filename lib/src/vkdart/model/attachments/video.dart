part of 'attachment.dart';

/// Model Video
///
/// See https://vk.com/dev/objects/video
class VideoAttachmentModel extends CustomAttachmentModel {
  // ignore: public_member_api_docs
  VideoAttachmentModel(super.payload);

  /// Title of the video.
  String? get title => attachmentObject['title'];

  /// Video description text.
  String? get description => attachmentObject['description'];

  /// The duration of the video in seconds.
  int? get duration => attachmentObject['duration'];

  /// Cover image.
  /// See https://vk.com/dev/objects/video#image
  List<VideoCoverImageModel> get image => (attachmentObject['image'] as List)
      .map((e) => VideoCoverImageModel((e as Map).cast<String, dynamic>()))
      .toList();

  /// First frame image.
  /// See https://vk.com/dev/objects/video#first_frame
  List<VideoFirstFrameImageModel> get firstFrame =>
      (attachmentObject['first_frame'] as List)
          .map((e) =>
              // ignore: require_trailing_commas
              VideoFirstFrameImageModel((e as Map).cast<String, dynamic>()))
          .toList();

  /// The date the video was created in Unixtime format.
  int? get date => attachmentObject['date'];

  /// The date the video was added by the user or group in Unixtime format.
  int? get addingDate => attachmentObject['adding_date'];

  /// Number of video views.
  int? get views => attachmentObject['views'];

  ///  If the video is external, the number of views on VKontakte.
  int? get localViews => attachmentObject['local_views'];

  /// Number of comments on the video. The field is not returned if comments are not available.
  int? get comments => attachmentObject['comments'];

  /// URL of a page with a player that can be used to play the video in the browser.
  /// Flash and HTML5 are supported, the player is always scaled to fit the window.
  String? get player => attachmentObject['player'];

  /// Platform name (for videos added from external sites).
  String? get platform => attachmentObject['platform'];

  /// Can a user add a video to himself?
  int? get canAdd => attachmentObject['can_add'];

  /// The field is returned if the video is private (for example, it was uploaded to a private message), always contains 1.
  int? get isPrivate => attachmentObject['is_private'];

  /// The field is returned if the video is in the process of processing, always contains 1.
  int? get processing => attachmentObject['processing'];

  /// true if the item has been bookmarked by the current user.
  bool? get isFavorite => attachmentObject['is_favorite'];

  /// Can a user comment on a video?
  int? get canComment => attachmentObject['can_comment'];

  /// Can the user edit the video?
  int? get canEdit => attachmentObject['can_edit'];

  /// Can a user add a video to their "Like" list.
  int? get canLike => attachmentObject['can_like'];

  /// Can a user repost a video?
  int? get canRepost => attachmentObject['can_repost'];

  /// Can a user subscribe to the author of a video?
  int? get canSubscribe => attachmentObject['can_subscribe'];

  /// Whether the user can add a video to favorites.
  int? get canAddToFaves => attachmentObject['can_add_to_faves'];

  /// Can a user attach an action button to a video.
  int? get canAttachLink => attachmentObject['can_attach_link'];

  /// Video width.
  int? get width => attachmentObject['width'];

  /// Video height.
  int? get height => attachmentObject['height'];

  /// ID of the user who uploaded the video, if it was uploaded to the group by one of the participants.
  int? get userId => attachmentObject['user_id'];

  /// Does the video convert?
  int? get converting => attachmentObject['converting'];

  /// Whether the video has been added to the user's albums.
  int? get added => attachmentObject['added'];

  /// Whether the user is subscribed to the author of the video.
  int? get isSubscribed => attachmentObject['is_subscribed'];

  /// Field returned if the video is looped, always contains 1
  int? get repeat => attachmentObject['repeat'];

  /// Video type. Can take values: video, music_video, movie
  String? get videoType => attachmentObject['type'];

  /// Donation balance in live broadcast.
  int? get balance => attachmentObject['balance'];

  /// Live broadcast status. Can take the following values: waiting, started, finished, failed, upcoming.
  String? get liveStatus => attachmentObject['live_status'];

  /// The field returned if the video is a live broadcast always contains 1. Note that in this case the duration field contains the value 0.
  int? get live => attachmentObject['live'];

  /// The field indicates that the broadcast will begin soon. For live =1.
  int? get upcoming => attachmentObject['upcoming'];

  /// Number of viewers of the live broadcast.
  int? get spectators => attachmentObject['spectators'];

  /// Likes
  /// See https://vk.com/dev/objects/video#likes
  VideoLikesModel? get likes => attachmentObject['likes'] != null
      ? VideoLikesModel(attachmentObject['likes'])
      : null;

  /// Reposts
  /// See https://vk.com/dev/objects/video#reposts
  VideoRepostsModel? get reposts => attachmentObject['reposts'] != null
      ? VideoRepostsModel(attachmentObject['reposts'])
      : null;
}

/// Model Video Cover Image.
///
/// See https://vk.com/dev/objects/video#image
final class VideoCoverImageModel {
  // ignore: public_member_api_docs
  VideoCoverImageModel(this.payload);

  /// Payload.
  final Map<String, dynamic> payload;

  /// Cover image url.
  String? get url => payload['url'];

  /// Cover image width.
  int? get width => payload['width'];

  /// Cover image height.
  int? get height => payload['height'];

  /// The field returned if the image is padded, always contains 1.
  int? get withPadding => payload['with_padding'];
}

/// Model Video First Frame Image.
///
/// See https://vk.com/dev/objects/video#first_frame
final class VideoFirstFrameImageModel {
  // ignore: public_member_api_docs
  VideoFirstFrameImageModel(this.firstFrameObject);

  /// Payload.
  final Map<String, dynamic> firstFrameObject;

  /// First frame image url.
  String? get url => firstFrameObject['url'];

  /// First frame image width.
  int? get width => firstFrameObject['width'];

  /// First frame image height.
  int? get height => firstFrameObject['height'];
}

/// Model Video Likes
///
/// See https://vk.com/dev/objects/video#likes
final class VideoLikesModel {
  // ignore: public_member_api_docs
  VideoLikesModel(this.likesObject);

  /// Payload.
  final Map<String, dynamic> likesObject;

  /// Number of likes.
  int? get count => likesObject['count'];

  /// Whether the video has been added to the 'Liked' list of the current user.
  int? get userLikes => likesObject['user_likes'];
}

/// Model Video Reposts.
///
/// See https://vk.com/dev/objects/video#reposts
final class VideoRepostsModel {
  // ignore: public_member_api_docs
  VideoRepostsModel(this.repostsObject);

  /// Payload.
  final Map<String, dynamic> repostsObject;

  /// Numbers of count.
  int? get count => repostsObject['count'];

  /// repost counter on the wall.
  int? get wallCount => repostsObject['wall_count'];

  /// counter of reposts in personal messages.
  int? get mailCount => repostsObject['mail_count'];

  /// information about whether the current user has reposted this video.
  int? get userReposted => repostsObject['user_reposted'];
}
