import 'package:dio/dio.dart';

enum LangApi {
  /// Русский
  ru,

  /// Украинский
  uk,

  /// Белорусский
  be,

  /// Английский
  en,

  /// Финский
  fi,

  /// Немецкий
  de,

  /// Итальянский
  it
}

class Api {
  static const _baseUrl = 'https://api.vk.com/method/';
  static final _dio = Dio();

  final String _token;
  final LangApi _language;
  final String _version;

  /// Основной конструктор для создания экземпляра класс [Api]
  ///
  /// Что-бы получать данные от некоторых методов на определенном языке - укажите параметр [language]
  ///
  /// Для того что-б указать необходимую версию укажите [version]
  /// ([Самая актуальная версия на данный момент](https://dev.vk.com/reference/versions))
  Api({
    required String token,
    required LangApi language,
    required String version,
  })  : _token = token,
        _language = language,
        _version = version;
}
