import 'package:vkdart/src/api.dart';

/// Карусель — набор карточек, которые прикрепляются к записи.
// ignore: lines_longer_than_80_chars
/// К каждой карточке можно добавить название и короткое описание, изображение, кнопку.
// ignore: lines_longer_than_80_chars
/// Также можно установить две цены — старую и новую — например, чтобы показать скидку.
class PrettyCards {
  /// Конструктор.
  PrettyCards(this._api);
  final Api _api;

  /// Метод создаёт карточку карусели.
  /// - Созданную карточку необходимо вручную добавить в карусель.
  Future<Map<String, dynamic>> create(Map<String, Object> params) =>
      _api.request('prettyCards.create', params);

  /// Удаляет карточку.
  Future<Map<String, dynamic>> delete(Map<String, Object> params) =>
      _api.request('prettyCards.delete', params);

  /// Редактирует карточку карусели.
  Future<Map<String, dynamic>> edit(Map<String, Object> params) =>
      _api.request('prettyCards.edit', params);

  /// Возвращает неиспользованные карточки владельца.
  Future<Map<String, dynamic>> get(Map<String, Object> params) =>
      _api.request('prettyCards.get', params);

  /// Возвращает информацию о карточке.
  Future<Map<String, dynamic>> getById(Map<String, Object> params) =>
      _api.request('prettyCards.getById', params);

  /// Возвращает URL для загрузки фотографии для карточки.
  Future<Map<String, dynamic>> getUploadURL(Map<String, Object> params) =>
      _api.request('prettyCards.getUploadURL', params);
}
