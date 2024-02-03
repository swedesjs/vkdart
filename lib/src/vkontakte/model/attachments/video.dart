part of 'attachment.dart';

/// Model Video
///
/// See https://dev.vk.com/ru/reference/objects/video
class VideoAttachmentModel extends CustomAttachmentModel
    with AttachmentLikesMixin, AttachmentRepostsMixin {
  // ignore: public_member_api_docs
  VideoAttachmentModel(super.payload) : super(attachType: 'video');

  /// Title of the video.
  String? get title => payload['title'];

  /// Video description text.
  String? get description => payload['description'];

  /// The duration of the video in seconds.
  int? get duration => payload['duration'];

  /// Cover image.
  /// See https://dev.vk.com/ru/reference/objects/video#image
  List<VideoCoverImageModel> get image => (payload['image'] as List)
      .map((e) => VideoCoverImageModel((e as Map).cast<String, dynamic>()))
      .toList();

  /// First frame image.
  /// See https://vk.com/dev/objects/video#first_frame
  List<VideoFirstFrameImageModel> get firstFrame => (payload['first_frame']
          as List)
      .map((e) => VideoFirstFrameImageModel((e as Map).cast<String, dynamic>()))
      .toList();

  /// The date the video was created in Unixtime format.
  int? get createdAt => payload['date'];

  /// The date the video was added by the user or group in Unixtime format.
  int? get addedAt => payload['adding_date'];

  /// Number of video views.
  int? get viewsCount => payload['views'];

  ///  If the video is external, the number of views on VKontakte.
  int? get localViews => payload['local_views'];

  /// Number of comments on the video. The field is not returned if comments are not available.
  int? get commentsCount => payload['comments'];

  /// URL of a page with a player that can be used to play the video in the browser.
  /// Flash and HTML5 are supported, the player is always scaled to fit the window.
  String? get player => payload['player'];

  /// Platform name (for videos added from external sites).
  String? get platformName => payload['platform'];

  /// Can a user add a video to himself?
  bool? get isCanAdd => _checkBoolInProperty('can_add');

  /// The field is returned if the video is private (for example, it was uploaded to a private message), always contains 1.
  bool? get isPrivate => _checkBoolInProperty('is_private');

  /// The field is returned if the video is in the process of processing, always contains 1.
  bool? get isProcessing => _checkBoolInProperty('processing');

  /// true if the item has been bookmarked by the current user.
  bool? get isFavorite => payload['is_favorite'];

  /// Can a user comment on a video?
  bool? get isCanComment => _checkBoolInProperty('can_comment');

  /// Can the user edit the video?
  bool? get isCanEdit => _checkBoolInProperty('can_edit');

  /// Can a user add a video to their "Like" list.
  bool? get isCanLike => _checkBoolInProperty('can_like');

  /// Can a user repost a video?
  bool? get isCanRepost => _checkBoolInProperty('can_repost');

  /// Can a user subscribe to the author of a video?
  bool? get isCanSubscribe => _checkBoolInProperty('can_subscribe');

  /// Whether the user can add a video to favorites.
  bool? get isCanAddToFaves => _checkBoolInProperty('can_add_to_faves');

  /// Can a user attach an action button to a video.
  bool? get isCanAttachLink => _checkBoolInProperty('can_attach_link');

  /// Video width.
  int? get width => payload['width'];

  /// Video height.
  int? get height => payload['height'];

  /// ID of the user who uploaded the video, if it was uploaded to the group by one of the participants.
  int? get userId => payload['user_id'];

  /// Does the video convert?
  bool? get isConverting => _checkBoolInProperty('converting');

  /// Whether the video has been added to the user's albums.
  bool? get isAdded => _checkBoolInProperty('added');

  /// Whether the user is subscribed to the author of the video.
  bool? get isSubscribed => _checkBoolInProperty('is_subscribed');

  /// Field returned if the video is looped, always contains 1
  bool? get isRepeat => _checkBoolInProperty('repeat');

  /// Video type.
  /// Can take values: video, music_video, movie
  String? get videoType => payload['type'];

  /// Donation balance in live broadcast.
  int? get balance => payload['balance'];

  /// Live broadcast status.
  /// Can take the following values: waiting, started, finished, failed, upcoming.
  String? get liveStatus => payload['live_status'];

  /// The field returned if the video is a live broadcast always contains 1. Note that in this case the duration field contains the value 0.
  bool? get isBroadcast => _checkBoolInProperty('live');

  /// The field indicates that the broadcast will begin soon. For live =1.
  bool? get isUpcoming => _checkBoolInProperty('upcoming');

  /// Number of viewers of the live broadcast.
  int? get spectatorsCount => payload['spectators'];
}

/// Model Video Cover Image.
///
/// See https://dev.vk.com/ru/reference/objects/video#image
final class VideoCoverImageModel {
  // ignore: public_member_api_docs
  VideoCoverImageModel(this.videoCoverImageObject);

  /// Payload.
  final Map<String, dynamic> videoCoverImageObject;

  /// Cover image url.
  String get url => videoCoverImageObject['url'];

  /// Cover image width.
  int get width => videoCoverImageObject['width'];

  /// Cover image height.
  int get height => videoCoverImageObject['height'];

  /// The field returned if the image is padded, always contains 1.
  bool? get withPadding => checkBoolUtil(videoCoverImageObject['with_padding']);
}

/// Model Video First Frame Image.
///
/// See https://dev.vk.com/ru/reference/objects/video#first_frame
final class VideoFirstFrameImageModel {
  // ignore: public_member_api_docs
  VideoFirstFrameImageModel(this.firstFrameObject);

  /// Payload.
  final Map<String, dynamic> firstFrameObject;

  /// First frame image url.
  String get url => firstFrameObject['url'];

  /// First frame image width.
  int get width => firstFrameObject['width'];

  /// First frame image height.
  int get height => firstFrameObject['height'];
}
