import 'package:vkdart/src/api.dart';
import 'package:vkdart/src/types/methods.dart';

/// Методы для работы с опросами.
class Polls {
  /// Конструктор.
  Polls(this._api);
  final Api _api;

  /// Adds the current user's vote to the selected answer in the poll.
  MethodTypeReturn addVote(MethodTypeParams params) =>
      _api.request('polls.addVote', params);

  /// Creates polls that can be attached to the users' or communities' posts.
  MethodTypeReturn create(MethodTypeParams params) =>
      _api.request('polls.create', params);

  /// Deletes the current user's vote from the selected answer in the poll.
  MethodTypeReturn deleteVote(MethodTypeParams params) =>
      _api.request('polls.deleteVote', params);

  /// Edits created polls
  MethodTypeReturn edit(MethodTypeParams params) =>
      _api.request('polls.edit', params);

  /// Возвращает варианты фонового изображения для опросов.
  MethodTypeReturn getBackgrounds(MethodTypeParams params) =>
      _api.request('polls.getBackgrounds', params);

  /// Returns detailed information about a poll by its ID.
  MethodTypeReturn getById(MethodTypeParams params) =>
      _api.request('polls.getById', params);

  /// Возвращает адрес сервера для загрузки фоновой фотографии в опрос.
  MethodTypeReturn getPhotoUploadServer(MethodTypeParams params) =>
      _api.request('polls.getPhotoUploadServer', params);

  /// Returns a list of IDs of users who selected specific answers in the poll.
  MethodTypeReturn getVoters(MethodTypeParams params) =>
      _api.request('polls.getVoters', params);

  /// Сохраняет фотографию, загруженную в опрос.
  MethodTypeReturn savePhoto(MethodTypeParams params) =>
      _api.request('polls.savePhoto', params);
}
