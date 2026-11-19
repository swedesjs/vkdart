import 'package:vkdart/vkontakte.dart';

/// Модель товара
///
/// См. https://dev.vk.com/ru/reference/objects/market-item
class MarketAttachmentModel extends CustomAttachmentModel
    with AttachmentLikesMixin {
  // ignore: public_member_api_docs
  MarketAttachmentModel(super.payload) : super(attachType: 'market');

  /// Название товара.
  String? get title => payload['title'];

  /// Описание товара.
  String? get description => payload['description'];

  Map<String, dynamic>? get _price => payload['price'];
  Map<String, dynamic>? get _dimensions => payload['dimensions'];
  Map<String, dynamic>? get _category => payload['category'];
  Map<String, dynamic>? get _rejectInfo => payload['reject_info'];

  /// Цена товара в сотых долях денежной единицы.
  int? get priceAmount => _price?['amount'];

  /// ID валюты.
  int? get priceCurrencyId => _price?['currency']?['id'];

  /// Название валюты.
  String? get priceCurrencyName => _price?['currency']?['name'];

  /// Старая цена товара в сотых долях денежной единицы.
  int? get priceOldAmount => _price?['old_amount'];

  /// Строковое представление цены.
  String? get priceText => _price?['text'];

  /// Ширина в миллиметрах.
  int? get dimensionsWidth => _dimensions?['width'];

  /// Высота в миллиметрах.
  int? get dimensionsHeight => _dimensions?['height'];

  /// Длина в миллиметрах.
  int? get dimensionsLength => _dimensions?['length'];

  /// ID категории.
  int? get categoryId => _category?['id'];

  /// Название категории.
  String? get categoryName => _category?['name'];

  /// ID раздела.
  int? get categorySectionId => _category?['section']?['id'];

  /// Название раздела.
  String? get categorySectionName => _category?['section']?['name'];

  /// Причина отклонения товара.
  String? get rejectTitle => _rejectInfo?['title'];

  /// Описание причины блокировки.
  String? get rejectDescription => _rejectInfo?['description'];

  /// Кнопки «Удалить» и «Написать в поддержку».
  Map<String, dynamic>? get rejectButtons => _rejectInfo?['buttons'];

  /// Числовое представление статуса модерации.
  String? get rejectModerationStatus => _rejectInfo?['moderation_status'];

  /// Ссылка на правила модерации.
  String? get rejectLink => _rejectInfo?['info_link'];

  /// Ссылка на поддержку.
  String? get rejectWhiteToSupportLink => _rejectInfo?['white_to_support_link'];

  /// Вес в граммах.
  int? get weight => payload['weight'];

  /// URL обложки товара.
  String? get thumbPhoto => payload['thumb_photo'];

  /// Дата создания товара в формате Unix.
  int? get createdAt => payload['date'];

  /// Статус доступности товара. Возможные значения:
  /// `0` — товар доступен.
  /// `1` — товар удалён.
  /// `2` — товар недоступен.
  int? get availability => payload['availability'];

  /// true, если текущий пользователь добавил объект в закладки.
  bool? get isFavorite => payload['is_favorite'];

  /// Артикул товара — произвольная строка длиной до 50 символов.
  String? get sku => payload['sku'];

  /// Изображения товара.
  List<PhotoAttachmentModel>? get photos => (payload['photos'] as List?)
      ?.map((e) => PhotoAttachmentModel((e as Map).cast<String, dynamic>()))
      .toList();

  /// Может ли текущий пользователь комментировать товар.
  bool? get isCanComment => checkBoolInProperty('can_comment');

  /// Может ли текущий пользователь сделать репост товара.
  bool? get isCanRepost => checkBoolInProperty('can_repost');

  /// Ссылка на товар во внешних ресурсах.
  String? get url => payload['url'];

  /// Текст на кнопке товара.
  String? get buttonTitle => payload['button_title'];
}
