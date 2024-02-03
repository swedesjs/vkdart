part of 'attachment.dart';

/// Model Market
///
/// See https://dev.vk.com/ru/reference/objects/market-item
class MarketAttachmentModel extends CustomAttachmentModel
    with AttachmentLikesMixin {
  // ignore: public_member_api_docs
  MarketAttachmentModel(super.payload) : super(attachType: 'market');

  /// Product Name.
  String? get title => payload['title'];

  /// Product description text.
  String? get description => payload['description'];

  Map<String, dynamic>? get _price => payload['price'];
  Map<String, dynamic>? get _dimensions => payload['dimensions'];
  Map<String, dynamic>? get _category => payload['category'];
  Map<String, dynamic>? get _rejectInfo => payload['reject_info'];

  /// the price of a product in hundredths of a currency unit.
  int? get priceAmount => _price?['amount'];

  /// currency identifier.
  int? get priceCurrencyId => _price?['currency']?['id'];

  /// currency name.
  String? get priceCurrencyName => _price?['currency']?['name'];

  /// the old price of a product in hundredths of a currency unit.
  int? get priceOldAmount => _price?['old_amount'];

  /// string representation of price.
  String? get priceText => _price?['text'];

  /// width in millimeters.
  int? get dimensionsWidth => _dimensions?['width'];

  /// height in millimeters.
  int? get dimensionsHeight => _dimensions?['height'];

  /// length in millimeters.
  int? get dimensionsLength => _dimensions?['length'];

  /// category ID.
  int? get categoryId => _category?['id'];

  /// name of category.
  String? get categoryName => _category?['name'];

  /// section identifier.
  int? get categorySectionId => _category?['section']?['id'];

  /// section name.
  String? get categorySectionName => _category?['section']?['name'];

  /// name of the reason for rejecting the goods.
  String? get rejectTitle => _rejectInfo?['title'];

  /// description of the reason for blocking.
  String? get rejectDescription => _rejectInfo?['description'];

  /// “Delete” and “Write to support” buttons.
  Map<String, dynamic>? get rejectButtons => _rejectInfo?['buttons'];

  /// numerical representation of moderation status.
  String? get rejectModerationStatus => _rejectInfo?['moderation_status'];

  /// link to moderation rules.
  String? get rejectLink => _rejectInfo?['info_link'];

  /// support link.
  String? get rejectWhiteToSupportLink => _rejectInfo?['white_to_support_link'];

  /// Weight in grams.
  int? get weight => payload['weight'];

  /// Product cover image URL.
  String? get thumbPhoto => payload['thumb_photo'];

  /// Product creation date in Unixtime format.
  int? get createdAt => payload['date'];

  /// Product availability status. Possible values:s
  /// `0` — product available.
  /// `1` - product removed.
  /// `2` - product is unavailable.
  int? get availability => payload['availability'];

  /// true if the item has been bookmarked by the current user.
  bool? get isFavorite => payload['is_favorite'];

  /// Product article, arbitrary string up to 50 characters long.
  String? get sku => payload['sku'];

  /// Product images.
  List<PhotoAttachmentModel>? get photos => (payload['photos'] as List?)
      ?.map((e) => PhotoAttachmentModel((e as Map).cast<String, dynamic>()))
      .toList();

  /// Ability to comment on a product for the current user.
  bool? get isCanComment => _checkBoolInProperty('can_comment');

  /// Ability to repost a product for the current user.
  bool? get isCanRepost => _checkBoolInProperty('can_repost');

  /// Link to product in external resources.
  String? get url => payload['url'];

  /// Text on the product button.
  String? get buttonTitle => payload['button_title'];
}
