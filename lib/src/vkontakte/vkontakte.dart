import 'package:vkdart/util.dart';
import 'package:vkdart/vkontakte.dart';

/// Listing of languages supported by VK API.
enum LangApi {
  /// Russian.
  ru,

  /// Ukrainian
  uk,

  /// Belarusian
  be,

  /// English
  en,

  /// Finnish
  fi,

  /// German
  de,

  /// Italian
  it
}

/// The class of interaction with the VK API.
class Vkontakte {
  static const _baseUrl = 'https://api.vk.com/method/';

  final String _token;
  final LangApi _language;
  final String _version;

  /// Creating a base instance of the [Api] class.
  ///
  /// [token] - access key.
  /// [language] - defines the language in which various data will be returned,
  /// such as the names of countries and cities.
  /// [version] - API version used.
  Vkontakte({
    required String token,
    required LangApi language,
    required String version,
  })  : _token = token,
        _language = language,
        _version = version;

  /// Allows you to create requests to the VK Api.
  Future<Object> request(String methodName,
      [Map<String, dynamic> body = const {}]) async {
    final requestBody = {
      ...body,
      'v': _version,
      'lang': _language.index,
    };

    final headers = {'Authorization': 'Bearer $_token'};

    return HttpClient.httpPost(
      _baseUrl + methodName,
      body: requestBody,
      headers: headers,
    ).then((data) {
      final error = (data['error'] as Map?)?.cast<String, dynamic>();
      final response = data['response'] as Object?;

      if (error != null) return Future.error(ApiException(error));

      return response!;
    });
  }
}

// ignore: public_member_api_docs
class ApiException extends ApiErrorModel implements Exception {
  // ignore: public_member_api_docs
  ApiException(super.payload);

  @override
  String toString() => 'ApiException[$code]: $message';
}
