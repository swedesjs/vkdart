// ignore_for_file: avoid_dynamic_calls

part of 'attachment.dart';

/// Model Market
///
/// See https://vk.com/dev/objects/market-item
class MarketAttachmentModel extends CustomAttachmentModel {
  // ignore: public_member_api_docs
  MarketAttachmentModel(super.payload);

  /// Product Name.
  String? get title => attachmentObject['title'];

  /// Product description text.
  String? get description => attachmentObject['description'];

  /// Object Price.
  ///
  /// See https://vk.com/dev/objects/market-item#price
  Map<String, dynamic>? get price => attachmentObject['price'];

  /// Product dimensions.
  ///
  /// See https://vk.com/dev/objects/market-item#dimensions
  Map<String, dynamic>? get dimensions => attachmentObject['dimensions'];

  /// Product category.
  ///
  /// See https://vk.com/dev/objects/market-item#category
  Map<String, dynamic>? get category => attachmentObject['category'];

  /// Information about product moderation,
  /// if the product has not passed moderation.
  ///
  /// See https://vk.com/dev/objects/market-item#reject_info
  Map<String, dynamic>? get rejectInfo => attachmentObject['reject_info'];

  /// Information about “Like” marks.
  ///
  /// See https://vk.com/dev/objects/market-item#likes
  Map<String, dynamic>? get likes => attachmentObject['likes'];

  /// the price of a product in hundredths of a currency unit.
  int? get priceAmount => price?['amount'];

  /// currency identifier.
  int? get priceCurrencyId => price?['currency']?['id'];

  /// currency name.
  String? get priceCurrencyName => price?['currency']?['name'];

  /// the old price of a product in hundredths of a currency unit.
  int? get priceOldAmount => price?['old_amount'];

  /// string representation of price.
  String? get priceText => price?['text'];

  /// width in millimeters.
  int? get dimensionsWidth => dimensions?['width'];

  /// height in millimeters.
  int? get dimensionsHeight => dimensions?['height'];

  /// length in millimeters.
  int? get dimensionsLength => dimensions?['length'];

  /// category ID.
  int? get categoryId => category?['id'];

  /// name of category.
  String? get categoryName => category?['name'];

  /// section identifier.
  int? get categorySectionId => category?['section']?['id'];

  /// section name.
  String? get categorySectionName => category?['section']?['name'];

  /// name of the reason for rejecting the goods.
  String? get rejectTitle => rejectInfo?['title'];

  /// description of the reason for blocking.
  String? get rejectDescription => rejectInfo?['description'];

  /// “Delete” and “Write to support” buttons.
  Map<String, dynamic>? get rejectButtons => rejectInfo?['buttons'];

  /// numerical representation of moderation status.
  String? get rejectModerationStatus => rejectInfo?['moderation_status'];

  /// link to moderation rules.
  String? get rejectInfoLink => rejectInfo?['info_link'];

  /// support link.
  int? get rejectWhiteToSupportLink => rejectInfo?['white_to_support_link'];

  /// whether there is a “Like” from the current user (1 - yes, 0 - no).
  int? get isUserLiked => likes?['user_likes'];

  /// number of likes.
  int? get likesCount => likes?['count'];

  /// Weight in grams.
  int? get weight => attachmentObject['weight'];

  /// Product cover image URL.
  String? get thumbPhoto => attachmentObject['thumb_photo'];

  /// Product creation date in Unixtime format.
  int? get date => attachmentObject['date'];

  /// Product availability status. Possible values:s
  /// `0` — product available.
  /// `1` - product removed.
  /// `2` - product is unavailable.
  int? get availability => attachmentObject['availability'];

  /// true if the item has been bookmarked by the current user.
  bool? get isFavorite => attachmentObject['is_favorite'];

  /// Product article, arbitrary string up to 50 characters long.
  String? get sku => attachmentObject['sku'];

  /// Product images.
  List<PhotoAttachmentModel>? get photos =>
      (attachmentObject['photos'] as List?)
          ?.map((e) => PhotoAttachmentModel((e as Map).cast<String, dynamic>()))
          .toList();

  /// Ability to comment on a product for the current user (1 – yes, 0 – no).
  int? get canComment => attachmentObject['can_comment'];

  /// Ability to repost a product for the current user (1 – yes, 0 – no).
  int? get canRepost => attachmentObject['can_repost'];

  /// Link to product in external resources.
  String? get url => attachmentObject['url'];

  /// Text on the product button.
  String? get buttonTitle => attachmentObject['button_title'];
}
