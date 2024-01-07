import 'package:json_annotation/json_annotation.dart';

part 'api_exception.g.dart';

/// Класс предназначенный для ошибок связанных с API VK
@JsonSerializable(fieldRename: FieldRename.snake)
class ApiException implements Exception {
  /// Конструктор класса [ApiException]
  ApiException({
    required this.code,
    required this.message,
    required this.requestParams,
  });

  /// Преобразует JSON в экземпляр класса
  factory ApiException.fromJson(Map<String, dynamic> json) =>
      _$ApiExceptionFromJson(json);

  /// Код ошибки
  @JsonKey(name: 'error_code')
  final int code;

  /// Сообщение ошибки
  @JsonKey(name: 'error_msg')
  final String message;

  /// Параметры запроса
  final List<RequestParams> requestParams;

  /// Преобразует экземпляр в JSON
  Map<String, dynamic> toJson() => _$ApiExceptionToJson(this);

  @override
  String toString() => 'ApiException[$code]: $message';
}

/// Интерфейс request_params
@JsonSerializable()
class RequestParams {
  /// Экземляр интерфейса request_params
  RequestParams({required this.key, required this.value});

  /// Преобразует JSON в экземпляр класса
  factory RequestParams.fromJson(Map<String, dynamic> json) =>
      _$RequestParamsFromJson(json);

  /// Key
  final String key;

  /// Value
  final Object value;

  /// Преобразует экземпляр в JSON
  Map<String, dynamic> toJson() => _$RequestParamsToJson(this);
}
