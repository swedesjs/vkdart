import 'package:vkdart/vkontakte.dart';

/// Methods for working with surveys.
///
/// See https://dev.vk.com/ru/method/polls
class Polls {
  // ignore: public_member_api_docs
  Polls(this._api);
  final Api _api;

  /// Adds the current user's vote to the selected answer in the poll.
  Future<ApiResponse<T>> addVote<T>(Map<String, Object> params) =>
      _api.request<T>('polls.addVote', params);

  /// Creates polls that can be attached to the users' or communities' posts.
  Future<ApiResponse<T>> create<T>(Map<String, Object> params) =>
      _api.request<T>('polls.create', params);

  /// Deletes the current user's vote from the selected answer in the poll.
  Future<ApiResponse<T>> deleteVote<T>(Map<String, Object> params) =>
      _api.request<T>('polls.deleteVote', params);

  /// Edits created polls
  Future<ApiResponse<T>> edit<T>(Map<String, Object> params) =>
      _api.request<T>('polls.edit', params);

  /// Returns options for the background image for surveys.
  Future<ApiResponse<T>> getBackgrounds<T>(Map<String, Object> params) =>
      _api.request<T>('polls.getBackgrounds', params);

  /// Returns detailed information about a poll by its ID.
  Future<ApiResponse<T>> getById<T>(Map<String, Object> params) =>
      _api.request<T>('polls.getById', params);

  /// Returns the server address for uploading the background photo to the survey.
  Future<ApiResponse<T>> getPhotoUploadServer<T>(Map<String, Object> params) =>
      _api.request<T>('polls.getPhotoUploadServer', params);

  /// Returns a list of IDs of users who selected specific answers in the poll.
  Future<ApiResponse<T>> getVoters<T>(Map<String, Object> params) =>
      _api.request<T>('polls.getVoters', params);

  /// Saves the photo uploaded to the survey.
  Future<ApiResponse<T>> savePhoto<T>(Map<String, Object> params) =>
      _api.request<T>('polls.savePhoto', params);
}
