part of vkdart.methods;

/// Методы для работы с аудиозаписями.
class Asr {
  /// Конструктор.
  Asr(this._api);
  final Api _api;

  // ignore: lines_longer_than_80_chars
  /// Метод проверяет статус задачи на обработку аудиозаписи и возвращает текстовую расшифровку аудиозаписи.
  MethodTypeReturn checkStatus(MethodTypeParams params) =>
      _api.request('asr.checkStatus', params);

  /// Метод возвращает ссылку на адрес сервера для загрузки аудиозаписи.
  MethodTypeReturn getUploadUrl(MethodTypeParams params) =>
      _api.request('asr.getUploadUrl', params);

  /// Метод выполняет распознавание речи из загруженного файла аудиозаписи.
  MethodTypeReturn process(MethodTypeParams params) =>
      _api.request('asr.process', params);
}
