import 'package:json_annotation/json_annotation.dart';

part 'api_exception.g.dart';

/// Класс предназначенный для ошибок связанных с API VK
@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class ApiException implements Exception {
  /// Код ошибки
  @JsonKey(name: 'error_code')
  final int code;

  /// Сообщение ошибки
  @JsonKey(name: 'error_msg')
  final String message;

  /// Параметры запроса
  final List<RequestParams> requestParams;

  /// Конструктор класса [ApiException]
  ApiException({
    required this.code,
    required this.message,
    required this.requestParams,
  });

  /// Преобразует JSON в экземпляр класса
  factory ApiException.fromJson(Map<String, dynamic> json) =>
      _$ApiExceptionFromJson(json);

  /// Преобразует экземпляр в JSON
  Map<String, dynamic> toJson() => _$ApiExceptionToJson(this);

  @override
  String toString() => 'ApiException[$code]: $message';
}

/// Интерфейс request_params
@JsonSerializable()
class RequestParams {
  /// Key
  final String key;

  /// Value
  final Object value;

  RequestParams({required this.key, required this.value});

  factory RequestParams.fromJson(Map<String, dynamic> json) =>
      _$RequestParamsFromJson(json);

  Map<String, dynamic> toJson() => _$RequestParamsToJson(this);
}
