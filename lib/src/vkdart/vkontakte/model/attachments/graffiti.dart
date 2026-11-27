import 'package:vkdart/vkontakte.dart';

/// Модель граффити.
///
/// См. https://dev.vk.com/ru/reference/objects/attachments-wall#Граффити%20(type%20=%20graffiti)
class GraffitiAttachmentModel extends CustomAttachmentModel {
  // ignore: public_member_api_docs
  GraffitiAttachmentModel(super.payload) : super(attachType: 'graffiti');

  /// Геттер для photo_130.
  String? get photo130 => payload['photo_130'];

  /// Геттер для photo_604.
  String? get photo604 => payload['photo_604'];
}
