/// The model VK API Error.
class ApiErrorModel {
  /// Payload.
  final Map<String, dynamic> payload;

  // ignore: public_member_api_docs
  ApiErrorModel(this.payload);

  /// Error Code.
  int get code => payload['error_code'];

  /// Error message.
  String get message => payload['error_msg'];

  /// Request params.
  List<ApiErrorParamModel> get requestParams =>
      (payload['request_params'] as List)
          .map((e) => ApiErrorParamModel((e as Map).cast<String, dynamic>()))
          .toList();
}

/// The model Request Params VK API Error.
class ApiErrorParamModel {
  /// Payload.
  final Map<String, dynamic> payload;

  // ignore: public_member_api_docs
  ApiErrorParamModel(this.payload);

  /// Key.
  String get key => payload['key'];

  /// Value.
  String get value => payload['value'];
}
