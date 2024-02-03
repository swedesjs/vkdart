import 'package:vkdart/vkontakte.dart';

/// Methods for working with widgets.
///
/// See https://dev.vk.com/ru/method/app_widgets
class AppWidgets {
  // ignore: public_member_api_docs
  AppWidgets(this._api);
  final Api _api;

  /// Returns a URL for uploading a photo to the community collection for community app widgets
  Future<ApiResponse<T>> getAppImageUploadServer<T>(
    Map<String, Object> params,
  ) =>
      _api.request<T>('appWidgets.getAppImageUploadServer', params);

  /// Returns an app collection of images for community app widgets
  Future<ApiResponse<T>> getAppImages<T>(Map<String, Object> params) =>
      _api.request<T>('appWidgets.getAppImages', params);

  /// Returns a URL for uploading a photo to the community collection for community app widgets
  Future<ApiResponse<T>> getGroupImageUploadServer<T>(
    Map<String, Object> params,
  ) =>
      _api.request<T>('appWidgets.getGroupImageUploadServer', params);

  /// Returns a community collection of images for community app widgets
  Future<ApiResponse<T>> getGroupImages<T>(Map<String, Object> params) =>
      _api.request<T>('appWidgets.getGroupImages', params);

  /// Returns an image for community app widgets by its ID
  Future<ApiResponse<T>> getImagesById<T>(Map<String, Object> params) =>
      _api.request<T>('appWidgets.getImagesById', params);

  /// Allows to save image into app collection for community app widgets
  Future<ApiResponse<T>> saveAppImage<T>(Map<String, Object> params) =>
      _api.request<T>('appWidgets.saveAppImage', params);

  /// Allows to save image into community collection for community app widgets
  Future<ApiResponse<T>> saveGroupImage<T>(Map<String, Object> params) =>
      _api.request<T>('appWidgets.saveGroupImage', params);

  /// Allows to update community app widget
  Future<ApiResponse<T>> update<T>(Map<String, Object> params) =>
      _api.request<T>('appWidgets.update', params);
}
