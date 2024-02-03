part of 'attachment.dart';

/// Model Photo
///
/// See https://dev.vk.com/ru/reference/objects/photo
class PhotoAttachmentModel extends CustomAttachmentModel {
  // ignore: public_member_api_docs
  PhotoAttachmentModel(super.payload) : super(attachType: 'photo');

  /// The ID of the album in which the photo is located.
  int? get albumId => payload['album_id'];

  /// ID of the user who uploaded the photo.
  int? get userId => payload['user_id'];

  /// Photo description text.
  String? get text => payload['text'];

  /// Date added in Unixtime format.
  int? get createdAt => payload['date'];

  /// An array with copies of the image in different sizes.
  List<PhotoCopyModel> get sizes => (payload['sizes'] as List)
      .map((e) => PhotoCopyModel((e as Map).cast<String, dynamic>()))
      .toList();

  /// The width of the original photo in pixels.
  int? get width => payload['width'];

  /// The height of the original photo in pixels.
  int? get height => payload['height'];

  /// ID of the record where the photo was uploaded.
  ///
  /// see https://dev.vk.com/ru/reference/objects/attachments-wall#Фотография%20(type%20=%20photo)
  int? get postId => payload['post_id'];
}

/// Model Photo copy.
///
/// See https://dev.vk.com/ru/reference/objects/photo-sizes
class PhotoCopyModel {
  // ignore: public_member_api_docs
  PhotoCopyModel(this.photoObject);

  /// Payload.
  final Map<String, dynamic> photoObject;

  /// Photo type.
  String get type => photoObject['type'];

  /// Photo URL.
  String get url => photoObject['url'];

  /// Photo width.
  int get width => photoObject['width'];

  /// Photo height.
  int get height => photoObject['height'];
}
