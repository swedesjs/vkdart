part of '../../methods.dart';

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
  MethodTypeReturn create(MethodTypeParams params) =>
      _api.request('prettyCards.create', params);

  /// Удаляет карточку.
  MethodTypeReturn delete(MethodTypeParams params) =>
      _api.request('prettyCards.delete', params);

  /// Редактирует карточку карусели.
  MethodTypeReturn edit(MethodTypeParams params) =>
      _api.request('prettyCards.edit', params);

  /// Возвращает неиспользованные карточки владельца.
  MethodTypeReturn get(MethodTypeParams params) =>
      _api.request('prettyCards.get', params);

  /// Возвращает информацию о карточке.
  MethodTypeReturn getById(MethodTypeParams params) =>
      _api.request('prettyCards.getById', params);

  /// Возвращает URL для загрузки фотографии для карточки.
  MethodTypeReturn getUploadURL(MethodTypeParams params) =>
      _api.request('prettyCards.getUploadURL', params);
}
