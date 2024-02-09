import 'package:vkdart/vkontakte.dart';

/// Methods for working with widgets.
///
/// See https://dev.vk.com/ru/method/app_widgets
class AppWidgets {
  // ignore: public_member_api_docs
  AppWidgets(this._api);
  final Api _api;

  /// Returns a URL for uploading a photo to the community collection for community app widgets
  Future<Object> getAppImageUploadServer(Map<String, dynamic> params) =>
      _api.request('appWidgets.getAppImageUploadServer', params);

  /// Returns an app collection of images for community app widgets
  Future<Object> getAppImages(Map<String, dynamic> params) =>
      _api.request('appWidgets.getAppImages', params);

  /// Returns a URL for uploading a photo to the community collection for community app widgets
  Future<Object> getGroupImageUploadServer(Map<String, dynamic> params) =>
      _api.request('appWidgets.getGroupImageUploadServer', params);

  /// Returns a community collection of images for community app widgets
  Future<Object> getGroupImages(Map<String, dynamic> params) =>
      _api.request('appWidgets.getGroupImages', params);

  /// Returns an image for community app widgets by its ID
  Future<Object> getImagesById(Map<String, dynamic> params) =>
      _api.request('appWidgets.getImagesById', params);

  /// Allows to save image into app collection for community app widgets
  Future<Object> saveAppImage(Map<String, dynamic> params) =>
      _api.request('appWidgets.saveAppImage', params);

  /// Allows to save image into community collection for community app widgets
  Future<Object> saveGroupImage(Map<String, dynamic> params) =>
      _api.request('appWidgets.saveGroupImage', params);

  /// Allows to update community app widget
  Future<Object> update(Map<String, dynamic> params) =>
      _api.request('appWidgets.update', params);
}
