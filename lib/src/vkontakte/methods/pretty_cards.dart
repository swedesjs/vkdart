part of '../api.dart';

/// Карусель — набор карточек, которые прикрепляются к записи.

/// К каждой карточке можно добавить название и короткое описание, изображение, кнопку.

/// Также можно установить две цены — старую и новую — например, чтобы показать скидку.
class PrettyCards {
  /// Конструктор.
  PrettyCards(this._api);
  final Api _api;

  /// Метод создаёт карточку карусели.
  /// - Созданную карточку необходимо вручную добавить в карусель.
  Future<ApiResponse<T>> create<T>(Map<String, Object> params) =>
      _api.request<T>('prettyCards.create', params);

  /// Удаляет карточку.
  Future<ApiResponse<T>> delete<T>(Map<String, Object> params) =>
      _api.request<T>('prettyCards.delete', params);

  /// Редактирует карточку карусели.
  Future<ApiResponse<T>> edit<T>(Map<String, Object> params) =>
      _api.request<T>('prettyCards.edit', params);

  /// Возвращает неиспользованные карточки владельца.
  Future<ApiResponse<T>> get<T>(Map<String, Object> params) =>
      _api.request<T>('prettyCards.get', params);

  /// Возвращает информацию о карточке.
  Future<ApiResponse<T>> getById<T>(Map<String, Object> params) =>
      _api.request<T>('prettyCards.getById', params);

  /// Возвращает URL для загрузки фотографии для карточки.
  Future<ApiResponse<T>> getUploadURL<T>(Map<String, Object> params) =>
      _api.request<T>('prettyCards.getUploadURL', params);
}
