import 'package:json_annotation/json_annotation.dart';

part 'api_exception.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class ApiException implements Exception {
  @JsonKey(name: 'error_code')
  final int code;

  @JsonKey(name: 'error_msg')
  final String message;

  final List<RequestParams> requestParams;

  ApiException({
    required this.code,
    required this.message,
    required this.requestParams,
  });

  factory ApiException.fromJson(Map<String, dynamic> json) =>
      _$ApiExceptionFromJson(json);

  Map<String, dynamic> toJson() => _$ApiExceptionToJson(this);

  @override
  String toString() => 'ApiException[$code]: $message';
}

@JsonSerializable()
class RequestParams {
  final String key;
  final Object value;

  RequestParams({required this.key, required this.value});

  factory RequestParams.fromJson(Map<String, dynamic> json) =>
      _$RequestParamsFromJson(json);

  Map<String, dynamic> toJson() => _$RequestParamsToJson(this);
}
