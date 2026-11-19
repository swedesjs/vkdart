/// Модель ошибки VK API.
class ApiErrorModel {
  /// Данные.
  final Map<String, dynamic> payload;

  // ignore: public_member_api_docs
  ApiErrorModel(this.payload);

  /// Код ошибки.
  int get code => payload['error_code'];

  /// Текст ошибки.
  String get message => payload['error_msg'];

  /// Параметры запроса.
  List<ApiErrorParamModel> get requestParams =>
      (payload['request_params'] as List)
          .map((e) => ApiErrorParamModel((e as Map).cast<String, dynamic>()))
          .toList();
}

/// Модель параметров запроса ошибки VK API.
class ApiErrorParamModel {
  /// Данные.
  final Map<String, dynamic> payload;

  // ignore: public_member_api_docs
  ApiErrorParamModel(this.payload);

  /// Ключ.
  String get key => payload['key'];

  /// Значение.
  String get value => payload['value'];
}
