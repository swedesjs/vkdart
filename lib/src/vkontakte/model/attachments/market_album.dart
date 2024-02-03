part of 'attachment.dart';

/// Model Market Album.
///
/// See https://dev.vk.com/ru/reference/objects/market-album
class MarketAlbumAttachmentModel extends CustomAttachmentModel {
  // ignore: public_member_api_docs
  MarketAlbumAttachmentModel(super.payload) : super(attachType: 'market_album');

  /// The name of the collection.
  String? get title => payload['title'];

  /// Whether the selection is the main one.
  bool? get isMain => payload['is_main'];

  /// Whether the selection is hidden.
  bool? get isHidden => payload['is_hidden'];

  /// The cover of the collection
  ///
  /// See https://dev.vk.com/objects/market-album#photo
  PhotoAttachmentModel? get photo =>
      payload['photo'] != null ? PhotoAttachmentModel(payload['photo']) : null;

  /// The number of products in the selection.
  int? get count => payload['count'];
}
