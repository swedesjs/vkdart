import 'package:vkdart/src/api.dart';

/// Методы для работы с виджетами на [внешних сайтах](https://dev.vk.com/ru/widgets/overview).
class Widgets {
  /// Конструктор.
  Widgets(this._api);
  final Api _api;

  /// Gets a list of comments for the page added through the [vk.com/dev/Comments|Comments widget].
  Future<Map<String, dynamic>> getComments(Map<String, Object> params) =>
      _api.request('widgets.getComments', params);

  /// Gets a list of application/site pages where the [vk.com/dev/Comments|Comments widget] or [vk.com/dev/Like|Like widget] is installed.
  Future<Map<String, dynamic>> getPages(Map<String, Object> params) =>
      _api.request('widgets.getPages', params);
}
