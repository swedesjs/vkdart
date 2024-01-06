part of '../../methods.dart';

/// Методы для работы с аудиозаписями.
class Asr {
  /// Конструктор.
  Asr(this._api);
  final Api _api;

  /// Метод проверяет статус задачи на обработку аудиозаписи и возвращает текстовую расшифровку аудиозаписи.
  Future<ApiResponse<T>> checkStatus<T>(MethodTypeParams params) =>
      _api.request<T>('asr.checkStatus', params);

  /// Метод возвращает ссылку на адрес сервера для загрузки аудиозаписи.
  Future<ApiResponse<T>> getUploadUrl<T>(MethodTypeParams params) =>
      _api.request<T>('asr.getUploadUrl', params);

  /// Метод выполняет распознавание речи из загруженного файла аудиозаписи.
  Future<ApiResponse<T>> process<T>(MethodTypeParams params) =>
      _api.request<T>('asr.process', params);
}
