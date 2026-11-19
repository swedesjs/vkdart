import 'package:vkdart/vkontakte.dart';

/// Модель ссылки.
///
/// См. https://dev.vk.com/ru/reference/objects/link
class LinkAttachmentModel extends AttachmentModel {
  // ignore: public_member_api_docs
  LinkAttachmentModel(super.payload) : super(attachType: 'link');

  /// URL ссылки.
  String get url => payload['url'];

  /// Название ссылки.
  String get title => payload['title'];

  /// Описание ссылки.
  String? get description => payload['description'];

  /// Изображение предпросмотра (если доступно).
  PhotoAttachmentModel? get photo =>
      payload['photo'] != null ? PhotoAttachmentModel(payload['photo']) : null;

  /// Информация о товаре (если доступна).
  Map<String, dynamic>? get product => payload['product'];

  /// Информация о кнопке перехода (если доступна).
  Map<String, dynamic>? get button => payload['button'];

  /// ID Wiki-страницы для предварительного просмотра содержимого. Возвращается в формате `owner_id_page_ids`.
  String? get previewPage => payload['preview_page'];

  /// URL страницы с предварительным просмотром её содержимого.
  String? get previewUrl => payload['preview_url'];
}
