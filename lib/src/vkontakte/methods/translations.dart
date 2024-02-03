import 'package:vkdart/vkontakte.dart';

/// Methods for working with translation.
///
/// See https://dev.vk.com/ru/method/translations
class Translations {
  // ignore: public_member_api_docs
  Translations(this._api);

  final Api _api;

  /// Translates the text.
  Future<ApiResponse<T>> translate<T>(Map<String, Object> params) =>
      _api.request<T>('translations.translate', params);
}
