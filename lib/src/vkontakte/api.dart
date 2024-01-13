import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';

part 'methods/account.dart';
part 'methods/ads.dart';
part 'methods/app_widgets.dart';
part 'methods/apps.dart';
part 'methods/asr.dart';
part 'methods/auth.dart';
part 'methods/board.dart';
part 'methods/bugtracker.dart';
part 'methods/calls.dart';
part 'methods/database.dart';
part 'methods/docs.dart';
part 'methods/donut.dart';
part 'methods/downloaded_games.dart';
part 'methods/fave.dart';
part 'methods/friends.dart';
part 'methods/gifts.dart';
part 'methods/groups.dart';
part 'methods/lead_forms.dart';
part 'methods/likes.dart';
part 'methods/market.dart';
part 'methods/messages.dart';
part 'methods/newsfeed.dart';
part 'methods/notes.dart';
part 'methods/notifications.dart';
part 'methods/orders.dart';
part 'methods/pages.dart';
part 'methods/photos.dart';
part 'methods/places.dart';
part 'methods/podcasts.dart';
part 'methods/polls.dart';
part 'methods/pretty_cards.dart';
part 'methods/search.dart';
part 'methods/widgets.dart';
part 'methods/wall.dart';
part 'methods/video.dart';
part 'methods/users.dart';
part 'methods/streaming.dart';
part 'methods/storage.dart';
part 'methods/secure.dart';
part 'methods/stats.dart';
part 'methods/utils.dart';
part 'methods/store.dart';
part 'methods/stories.dart';
part 'methods/translations.dart';
part 'methods/status.dart';

part 'api.g.dart';

/// Перечисление языков поддерживаемых VK API
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

/// Класс для взаимодействия с Vk API
class Api {
  /// Основной конструктор для создания экземпляра класс [Api]
  ///
  /// Что-бы получать данные от некоторых методов на определенном языке
  /// укажите параметр [language]
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

  static const _baseUrl = 'https://api.vk.com/method/';
  static final _dio = Dio();

  final String _token;
  final LangApi _language;
  final String _version;

  /// Позволяет создавать запросы к Апи Вк
  /// В [T] указываем возвращаемый тип результата выполнения запроса.
  Future<ApiResponse<T>> request<T>(
    String methodName,
    Map<String, Object> params,
  ) async {
    final langConclusion = switch (params['lang']) {
      LangApi() => (params['lang']! as LangApi).index,
      int() || String() => params['lang']!,
      _ => _language.index
    };

    params.remove('lang');

    final requestOptions = {
      'access_token': _token,
      'lang': langConclusion,
      'v': _version,
      ...params,
    };

    // ignore: unnecessary_null_checks
    final Response(:data!) = await _dio.post<Map<String, dynamic>>(
      _baseUrl + methodName,
      data: requestOptions.entries.map((e) => '${e.key}=${e.value}').join('&'),
      options: Options(contentType: 'application/x-www-form-urlencoded'),
    );

    final error = (data['error'] as Map?)?.cast<String, dynamic>();
    final response = data['response'] as Object?;

    if (error != null) {
      throw ApiException.fromJson(error);
    }

    return ApiResponse<T>(
      data: response as T,
      requestOptions: requestOptions..remove('access_token'),
    );
  }

  /// Методы для работы с аккаунтом.
  Account get account => Account(this);

  /// Рекламный API позволяет автоматизировать работу с рекламными возможностямиы ВКонтакте и эффективно реализовать специфичные для вашего бизнеса рекламные кампании.
  Ads get abs => Ads(this);

  /// Методы для работы с приложениями.
  Apps get apps => Apps(this);

  /// Методы для работы с аудиозаписями.
  Asr get asr => Asr(this);

  /// Список методов секции appWidgets
  AppWidgets get appWidgets => AppWidgets(this);

  /// Методы для работы с авторизацией.
  Auth get auth => Auth(this);

  /// Методы для работы с обсуждениями.
  Board get board => Board(this);

  /// Методы для работы с платформой тестирования VK Testers.
  Bugtracker get bugtracker => Bugtracker(this);

  /// Методы для работы со звонками.
  Calls get calls => Calls(this);

  /// Методы этой секции предоставляют доступ к базе данных учебных заведений ВКонтакте.
  ///
  /// Доступ к данным является бесплатным и не требует авторизации,
  /// однако количество запросов с одного IP адреса может быть ограничено,
  /// при необходимости делать большое количество запросов рекомендуется выполнять запросы с клиентской стороны, используя JSONP.
  Database get database => Database(this);

  /// Методы для работы с документами.
  Docs get docs => Docs(this);

  /// Методы для работы с VK Donut.
  Donut get donut => Donut(this);

  /// Методы для работы с играми ВК
  DownloadedGames get downloadedGames => DownloadedGames(this);

  /// Методы для работы с закладками.
  Fave get fave => Fave(this);

  /// Методы для работы с друзьями.
  Friends get friends => Friends(this);

  /// Методы для работы с подарками.
  Gifts get gifts => Gifts(this);

  /// Методы для работы с сообществами.
  Groups get groups => Groups(this);

  /// Формы сбора заявок
  ///
  /// Подойдут для записи клиентов, предварительной регистрации, подписки на рассылки, запросов информации, подключения услуг, оформления заказов и многого другого.
  /// Вы создаете формы с заявками, а пользователи оставляют свою контактную информацию.
  /// Вам остается завершить оформление заявки, связавшись с ними удобным способом.
  LeadForms get leadForms => LeadForms(this);

  /// Методы для работы с отметками «Мне нравится».
  Likes get likes => Likes(this);

  /// Методы market позволяют работать с товарами в сообществах.
  Market get market => Market(this);

  /// Методы для работы с личными сообщениями.
  ///
  /// Для получения входящих сообщений используйте LongPoll сервер.
  /// Внимание: доступ к методами секции с ключом пользователя ограничен.
  /// Информация об ограничении Messages API находится в Roadmap.
  /// Обратите внимание: методы для работы со звонками были перенесены в новую секцию calls. Старые методы звонков из секции messages были помечены устаревшими и могут быть удалены в будущих версиях API.
  Messages get messages => Messages(this);

  /// Методы для работы с новостной лентой пользователя.
  Newsfeed get newsfeed => Newsfeed(this);

  /// Методы для работы с заметками.
  Notes get notes => Notes(this);

  /// Методы для работы с оповещениями
  Notifications get notifications => Notifications(this);

  /// Методы этой секции предоставляют дополнительную возможность управления
  /// состоянием заказов, которые были сделаны пользователями в приложениях.
  Orders get orders => Orders(this);

  /// Методы для работы с вики-страницами.
  Pages get pages => Pages(this);

  /// Методы для работы с фотографиями.
  Photos get photos => Photos(this);

  /// Методы для работы с местами.
  Places get places => Places(this);

  /// Методы для работы с подкастами.
  Podcasts get podcasts => Podcasts(this);

  /// Методы для работы с опросами.
  Polls get polls => Polls(this);

  /// Карусель — набор карточек, которые прикрепляются к записи.
  ///
  /// К каждой карточке можно добавить название и короткое описание, изображение, кнопку.
  /// Также можно установить две цены — старую и новую — например, чтобы показать скидку.
  /// На текущий момент карусель поддерживается только в скрытых рекламных записях (см. wall.postAdsStealth).
  PrettyCards get prettyCards => PrettyCards(this);

  /// Методы для работы с поиском.
  Search get search => Search(this);

  /// В этой секции представлены административные методы, предназначенные для вызова от имени приложения с использованием стороннего сервера. Для использования этих методов необходимо применять сервисный ключ из настроек приложения.
  Secure get secure => Secure(this);

  /// Методы для работы со статистикой.
  Stats get stats => Stats(this);

  /// Методы для работы со статусом.
  Status get status => Status(this);

  /// Методы для работы с переменными в приложении.
  Storage get storage => Storage(this);

  /// Методы для работы со стикерами.
  Store get store => Store(this);

  /// Методы для работы с историями.
  Stories get stories => Stories(this);

  /// Методы для работы с Streaming API.
  Streaming get streaming => Streaming(this);

  /// Методы для работы с переводом.
  Translations get translations => Translations(this);

  /// Методы для работы с данными пользователей.
  Users get users => Users(this);

  /// Служебные методы.
  Utils get utils => Utils(this);

  /// Методы для работы с видеозаписями.
  Video get video => Video(this);

  /// Методы для работы с записями на стене.
  Wall get wall => Wall(this);

  /// Методы для работы с виджетами на внешних сайтах.
  Widgets get widgets => Widgets(this);
}

/// Класс [ApiResponse] содержит полезную нагрузку.
/// Предосталяет информацию к опциям запроса к метода, а так же результат запроса.
class ApiResponse<T> {
  /// Конструктор.
  ApiResponse({required this.data, required this.requestOptions});

  /// Результат выполнения запроса
  final T data;

  /// Опции запроса.
  final Map<String, dynamic> requestOptions;
}

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
