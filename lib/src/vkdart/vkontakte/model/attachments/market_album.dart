import 'package:vkdart/vkontakte.dart';

/// Модель подборки товаров.
///
/// См. https://dev.vk.com/ru/reference/objects/market-album
class MarketAlbumAttachmentModel extends CustomAttachmentModel {
  // ignore: public_member_api_docs
  MarketAlbumAttachmentModel(super.payload) : super(attachType: 'market_album');

  /// Название подборки.
  String? get title => payload['title'];

  /// Является ли подборка основной.
  bool? get isMain => payload['is_main'];

  /// Скрыта ли подборка.
  bool? get isHidden => payload['is_hidden'];

  /// Обложка подборки.
  ///
  /// См. https://dev.vk.com/objects/market-album#photo
  PhotoAttachmentModel? get photo =>
      payload['photo'] != null ? PhotoAttachmentModel(payload['photo']) : null;

  /// Количество товаров в подборке.
  int? get count => payload['count'];
}
