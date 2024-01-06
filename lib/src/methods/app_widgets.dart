part of '../../methods.dart';

/// Методы для работы с виджетами.
class AppWidgets {
  /// Конструктор.
  AppWidgets(this._api);
  final Api _api;

  // ignore: lines_longer_than_80_chars
  /// Returns a URL for uploading a photo to the community collection for community app widgets
  MethodTypeReturn getAppImageUploadServer(MethodTypeParams params) =>
      _api.request('appWidgets.getAppImageUploadServer', params);

  /// Returns an app collection of images for community app widgets
  MethodTypeReturn getAppImages(MethodTypeParams params) =>
      _api.request('appWidgets.getAppImages', params);

  // ignore: lines_longer_than_80_chars
  /// Returns a URL for uploading a photo to the community collection for community app widgets
  MethodTypeReturn getGroupImageUploadServer(MethodTypeParams params) =>
      _api.request('appWidgets.getGroupImageUploadServer', params);

  /// Returns a community collection of images for community app widgets
  MethodTypeReturn getGroupImages(MethodTypeParams params) =>
      _api.request('appWidgets.getGroupImages', params);

  /// Returns an image for community app widgets by its ID
  MethodTypeReturn getImagesById(MethodTypeParams params) =>
      _api.request('appWidgets.getImagesById', params);

  /// Allows to save image into app collection for community app widgets
  MethodTypeReturn saveAppImage(MethodTypeParams params) =>
      _api.request('appWidgets.saveAppImage', params);

  /// Allows to save image into community collection for community app widgets
  MethodTypeReturn saveGroupImage(MethodTypeParams params) =>
      _api.request('appWidgets.saveGroupImage', params);

  /// Allows to update community app widget
  MethodTypeReturn update(MethodTypeParams params) =>
      _api.request('appWidgets.update', params);
}
