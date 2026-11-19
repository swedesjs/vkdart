import 'package:vkdart/vkontakte.dart';

/// Модель подарка.
///
/// См. https://dev.vk.com/ru/reference/objects/gift
class GiftAttachmentModel extends AttachmentModel {
  // ignore: public_member_api_docs
  GiftAttachmentModel(super.payload) : super(attachType: 'gift');

  /// ID подарка.
  int get id => payload['id'];

  /// URL миниатюры размером 256 пикселей.
  String? get thumb256 => payload['thumb_256'];

  /// URL миниатюры размером 96 пикселей.
  String? get thumb96 => payload['thumb_96'];

  /// URL миниатюры размером 48 пикселей.
  String? get thumb48 => payload['thumb_48'];
}
