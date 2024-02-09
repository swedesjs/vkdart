import 'package:vkdart/vkontakte.dart';

/// Methods for working with translation.
///
/// See https://dev.vk.com/ru/method/translations
class Translations {
  // ignore: public_member_api_docs
  Translations(this._api);

  final Api _api;

  /// Translates the text.
  Future<Object> translate(Map<String, dynamic> params) =>
      _api.request('translations.translate', params);
}
