import '../api.dart';

class Polls {
  final Api _api;

  Polls(this._api);

  /// Adds the current user's vote to the selected answer in the poll.
  Future<Map<String, dynamic>> addVote(Map<String, Object> params) {
    return _api.request('polls.addVote', params);
  }

  /// Creates polls that can be attached to the users' or communities' posts.
  Future<Map<String, dynamic>> create(Map<String, Object> params) {
    return _api.request('polls.create', params);
  }

  /// Deletes the current user's vote from the selected answer in the poll.
  Future<Map<String, dynamic>> deleteVote(Map<String, Object> params) {
    return _api.request('polls.deleteVote', params);
  }

  /// Edits created polls
  Future<Map<String, dynamic>> edit(Map<String, Object> params) {
    return _api.request('polls.edit', params);
  }

  Future<Map<String, dynamic>> getBackgrounds(Map<String, Object> params) {
    return _api.request('polls.getBackgrounds', params);
  }

  /// Returns detailed information about a poll by its ID.
  Future<Map<String, dynamic>> getById(Map<String, Object> params) {
    return _api.request('polls.getById', params);
  }

  Future<Map<String, dynamic>> getPhotoUploadServer(Map<String, Object> params) {
    return _api.request('polls.getPhotoUploadServer', params);
  }

  /// Returns a list of IDs of users who selected specific answers in the poll.
  Future<Map<String, dynamic>> getVoters(Map<String, Object> params) {
    return _api.request('polls.getVoters', params);
  }

  Future<Map<String, dynamic>> savePhoto(Map<String, Object> params) {
    return _api.request('polls.savePhoto', params);
  }
}
