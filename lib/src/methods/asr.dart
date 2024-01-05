import 'package:vkdart/src/api.dart';

/// Методы для работы с аудиозаписями.
class Asr {
  /// Конструктор.
  Asr(this._api);
  final Api _api;

  // ignore: lines_longer_than_80_chars
  /// Метод проверяет статус задачи на обработку аудиозаписи и возвращает текстовую расшифровку аудиозаписи.
  Future<Map<String, dynamic>> checkStatus(Map<String, Object> params) =>
      _api.request('asr.checkStatus', params);

  /// Метод возвращает ссылку на адрес сервера для загрузки аудиозаписи.
  Future<Map<String, dynamic>> getUploadUrl(Map<String, Object> params) =>
      _api.request('asr.getUploadUrl', params);

  /// Метод выполняет распознавание речи из загруженного файла аудиозаписи.
  Future<Map<String, dynamic>> process(Map<String, Object> params) =>
      _api.request('asr.process', params);
}
