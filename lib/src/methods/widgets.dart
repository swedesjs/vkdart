import '../api.dart';

class Widgets {
  final Api _api;

  Widgets(this._api);

  /// Gets a list of comments for the page added through the [vk.com/dev/Comments|Comments widget].
  Future<Map<String, dynamic>> getComments(Map<String, Object> params) {
    return _api.request('widgets.getComments', params);
  }

  /// Gets a list of application/site pages where the [vk.com/dev/Comments|Comments widget] or [vk.com/dev/Like|Like widget] is installed.
  Future<Map<String, dynamic>> getPages(Map<String, Object> params) {
    return _api.request('widgets.getPages', params);
  }
}
