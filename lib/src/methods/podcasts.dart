import 'package:vkdart/src/api.dart';
import 'package:vkdart/src/types/methods.dart';

/// Методы для работы с подкастами.
class Podcasts {
  /// Конструктор.
  Podcasts(this._api);
  final Api _api;

  /// Выполняет поиск подкастов по ключевым фразам.
  MethodTypeReturn searchPodcast(MethodTypeParams params) =>
      _api.request('podcasts.searchPodcast', params);
}
