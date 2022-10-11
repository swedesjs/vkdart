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
  final LangApi _language;
  final String _version;

  /// Основной конструктор для создания экземпляра класс [Api]
  ///
  /// Что-бы получать данные от некоторых методов на определенном языке - укажите параметр [language]
  ///
  /// Для того что-б указать необходимую версию укажите [version]
  /// ([Самая актуальная версия на данный момент](https://dev.vk.com/reference/versions))
  Api({
    required LangApi language,
    required String version,
  })  : _language = language,
        _version = version;
}
