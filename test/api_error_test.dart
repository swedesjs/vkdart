import 'package:test/test.dart';
import 'package:vkdart/vkontakte.dart';

void main() {
  group('ApiErrorModel tests', () {
    test('parses error code and message correctly', () {
      final errorPayload = {
        'error_code': 5,
        'error_msg': 'Access denied',
        'request_params': [],
      };

      final apiError = ApiErrorModel(errorPayload);

      expect(apiError.code, ApiErrorCode.authorizationFailed);
      expect(apiError.message, 'Access denied');
      expect(apiError.requestParams, isEmpty);
    });

    test('parses request parameters correctly', () {
      final errorPayload = {
        'error_code': 5,
        'error_msg': 'Access denied',
        'request_params': [
          {'key': 'param1', 'value': 'value1'},
          {'key': 'param2', 'value': 'value2'},
        ],
      };

      final apiError = ApiErrorModel(errorPayload);

      expect(apiError.requestParams.length, 2);
      expect(apiError.requestParams[0].key, 'param1');
      expect(apiError.requestParams[0].value, 'value1');
      expect(apiError.requestParams[1].key, 'param2');
      expect(apiError.requestParams[1].value, 'value2');
    });

    test('ApiErrorCode equality and hashCode', () {
      const errorCode1 = ApiErrorCode.authorizationFailed;
      final errorCode2 = ApiErrorCode.fromCode(5);
      final errorCode3 = ApiErrorCode.fromCode(6);

      expect(errorCode1, equals(errorCode2));
      expect(errorCode1.hashCode, equals(errorCode2.hashCode));
      expect(errorCode1, isNot(equals(errorCode3)));
    });
  });
}
