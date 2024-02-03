import 'package:vkdart/vkontakte.dart';

/// Methods for working with widgets on [external sites](https://dev.vk.com/ru/widgets/overview).
///
/// See https://dev.vk.com/ru/method/widgets
class Widgets {
  // ignore: public_member_api_docs
  Widgets(this._api);
  final Api _api;

  /// Gets a list of comments for the page added through the [Comments widget](vk.com/dev/Comments).
  Future<ApiResponse<T>> getComments<T>(Map<String, Object> params) =>
      _api.request<T>('widgets.getComments', params);

  /// Gets a list of application/site pages where the [Comments widget](vk.com/dev/Comments) or [Like widget](vk.com/dev/Like) is installed.
  Future<ApiResponse<T>> getPages<T>(Map<String, Object> params) =>
      _api.request<T>('widgets.getPages', params);
}
