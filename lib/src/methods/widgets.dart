part of '../../methods.dart';

/// Методы для работы с виджетами на [внешних сайтах](https://dev.vk.com/ru/widgets/overview).
class Widgets {
  /// Конструктор.
  Widgets(this._api);
  final Api _api;

  /// Gets a list of comments for the page added through the [Comments widget](vk.com/dev/Comments).
  Future<ApiResponse<T>> getComments<T>(MethodTypeParams params) =>
      _api.request<T>('widgets.getComments', params);

  /// Gets a list of application/site pages where the [Comments widget](vk.com/dev/Comments) or [Like widget](vk.com/dev/Like) is installed.
  Future<ApiResponse<T>> getPages<T>(MethodTypeParams params) =>
      _api.request<T>('widgets.getPages', params);
}
