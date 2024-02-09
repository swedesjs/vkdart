import 'package:vkdart/vkontakte.dart';

/// Methods for working with widgets on [external sites](https://dev.vk.com/ru/widgets/overview).
///
/// See https://dev.vk.com/ru/method/widgets
class Widgets {
  // ignore: public_member_api_docs
  Widgets(this._api);
  final Api _api;

  /// Gets a list of comments for the page added through the [Comments widget](vk.com/dev/Comments).
  Future<Object> getComments(Map<String, dynamic> params) =>
      _api.request('widgets.getComments', params);

  /// Gets a list of application/site pages where the [Comments widget](vk.com/dev/Comments) or [Like widget](vk.com/dev/Like) is installed.
  Future<Object> getPages(Map<String, dynamic> params) =>
      _api.request('widgets.getPages', params);
}
