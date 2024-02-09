import 'package:vkdart/vkontakte.dart';

/// Methods for working with surveys.
///
/// See https://dev.vk.com/ru/method/polls
class Polls {
  // ignore: public_member_api_docs
  Polls(this._api);
  final Api _api;

  /// Adds the current user's vote to the selected answer in the poll.
  Future<Object> addVote(Map<String, dynamic> params) =>
      _api.request('polls.addVote', params);

  /// Creates polls that can be attached to the users' or communities' posts.
  Future<Object> create(Map<String, dynamic> params) =>
      _api.request('polls.create', params);

  /// Deletes the current user's vote from the selected answer in the poll.
  Future<Object> deleteVote(Map<String, dynamic> params) =>
      _api.request('polls.deleteVote', params);

  /// Edits created polls
  Future<Object> edit(Map<String, dynamic> params) =>
      _api.request('polls.edit', params);

  /// Returns options for the background image for surveys.
  Future<Object> getBackgrounds(Map<String, dynamic> params) =>
      _api.request('polls.getBackgrounds', params);

  /// Returns detailed information about a poll by its ID.
  Future<Object> getById(Map<String, dynamic> params) =>
      _api.request('polls.getById', params);

  /// Returns the server address for uploading the background photo to the survey.
  Future<Object> getPhotoUploadServer(Map<String, dynamic> params) =>
      _api.request('polls.getPhotoUploadServer', params);

  /// Returns a list of IDs of users who selected specific answers in the poll.
  Future<Object> getVoters(Map<String, dynamic> params) =>
      _api.request('polls.getVoters', params);

  /// Saves the photo uploaded to the survey.
  Future<Object> savePhoto(Map<String, dynamic> params) =>
      _api.request('polls.savePhoto', params);
}
