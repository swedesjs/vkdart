import 'package:vkdart/vkontakte.dart';

/// Methods for working with VK games.
///
/// See https://dev.vk.com/ru/method/downloaded_games
class DownloadedGames {
  // ignore: public_member_api_docs
  DownloadedGames(this._api);
  final Api _api;

  /// The method gets information whether the user has bought the game or not.
  Future<ApiResponse<T>> getPaidStatus<T>(Map<String, Object> params) =>
      _api.request<T>('downloadedGames.getPaidStatus', params);
}
