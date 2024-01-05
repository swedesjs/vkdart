import 'package:vkdart/vkdart.dart';

/// Методы для работы с виджетами.
class AppWidgets {
  /// Конструктор.
  AppWidgets(this._api);
  final Api _api;

  // ignore: lines_longer_than_80_chars
  /// Returns a URL for uploading a photo to the community collection for community app widgets
  Future<Map<String, dynamic>> getAppImageUploadServer(
    Map<String, Object> params,
  ) =>
      _api.request('appWidgets.getAppImageUploadServer', params);

  /// Returns an app collection of images for community app widgets
  Future<Map<String, dynamic>> getAppImages(Map<String, Object> params) =>
      _api.request('appWidgets.getAppImages', params);

  // ignore: lines_longer_than_80_chars
  /// Returns a URL for uploading a photo to the community collection for community app widgets
  Future<Map<String, dynamic>> getGroupImageUploadServer(
    Map<String, Object> params,
  ) =>
      _api.request('appWidgets.getGroupImageUploadServer', params);

  /// Returns a community collection of images for community app widgets
  Future<Map<String, dynamic>> getGroupImages(Map<String, Object> params) =>
      _api.request('appWidgets.getGroupImages', params);

  /// Returns an image for community app widgets by its ID
  Future<Map<String, dynamic>> getImagesById(Map<String, Object> params) =>
      _api.request('appWidgets.getImagesById', params);

  /// Allows to save image into app collection for community app widgets
  Future<Map<String, dynamic>> saveAppImage(Map<String, Object> params) =>
      _api.request('appWidgets.saveAppImage', params);

  /// Allows to save image into community collection for community app widgets
  Future<Map<String, dynamic>> saveGroupImage(Map<String, Object> params) =>
      _api.request('appWidgets.saveGroupImage', params);

  /// Allows to update community app widget
  Future<Map<String, dynamic>> update(Map<String, Object> params) =>
      _api.request('appWidgets.update', params);
}
