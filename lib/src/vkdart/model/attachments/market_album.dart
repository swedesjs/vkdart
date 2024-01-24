part of 'attachment.dart';

/// Model Market Album.
///
/// See https://dev.vk.com/objects/market-album
class MarketAlbumAttachmentModel extends CustomAttachmentModel {
  // ignore: public_member_api_docs
  MarketAlbumAttachmentModel(super.payload);

  /// The name of the collection.
  String? get title => attachmentObject['title'];

  /// Whether the selection is the main one.
  bool? get isMain => attachmentObject['is_main'];

  /// Whether the selection is hidden.
  bool? get isHidden => attachmentObject['is_hiden'];

  /// The cover of the collection
  ///
  /// See https://dev.vk.com/objects/market-album#photo
  PhotoAttachmentModel? get photo => attachmentObject['photo'] != null
      ? PhotoAttachmentModel(attachmentObject['photo'])
      : null;

  /// The number of products in the selection.
  int? get count => attachmentObject['count'];
}
