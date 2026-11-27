export 'account_api.dart';
export 'ads_api.dart';

/// Временный класс для пометки методов, которые ещё не реализованы. Используется в [AdsApi] и других разделах API.
class Todo {
  /// Описание задачи.
  final String task;

  /// Создаёт экземпляр [Todo].
  const Todo([this.task = '']);
}
