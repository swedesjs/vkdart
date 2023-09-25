import 'package:dio/dio.dart';
import 'package:vkdart/src/exceptions/api_exception.dart';

import 'methods/account.dart';
import 'methods/adsweb.dart';
import 'methods/apps.dart';
import 'methods/ads.dart';
import 'methods/appWidgets.dart';
import 'methods/auth.dart';
import 'methods/board.dart';
import 'methods/database.dart';
import 'methods/docs.dart';
import 'methods/donut.dart';
import 'methods/downloadedGames.dart';
import 'methods/fave.dart';
import 'methods/friends.dart';
import 'methods/gifts.dart';
import 'methods/groups.dart';
import 'methods/leadForms.dart';
import 'methods/likes.dart';
import 'methods/market.dart';
import 'methods/messages.dart';
import 'methods/newsfeed.dart';
import 'methods/notes.dart';
import 'methods/notifications.dart';
import 'methods/orders.dart';
import 'methods/pages.dart';
import 'methods/photos.dart';
import 'methods/podcasts.dart';
import 'methods/polls.dart';
import 'methods/prettyCards.dart';
import 'methods/search.dart';
import 'methods/secure.dart';
import 'methods/stats.dart';
import 'methods/status.dart';
import 'methods/storage.dart';
import 'methods/store.dart';
import 'methods/stories.dart';
import 'methods/streaming.dart';
import 'methods/users.dart';
import 'methods/utils.dart';
import 'methods/video.dart';
import 'methods/wall.dart';
import 'methods/widgets.dart';

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

  /// Позволяет создавать запросы к Апи Вк
  Future<Map<String, dynamic>> request(
    String methodName,
    Map<String, Object> params,
  ) async {
    final lang = params['lang'];
    Object? requestLang;

    if (lang != null) {
      requestLang = lang is LangApi
          ? lang.index
          : (lang is int || lang is String ? lang : null);

      params.remove('lang');
    }

    requestLang ??= _language.index;

    final requestParams = {
      'access_token': _token,
      'lang': requestLang,
      'v': _version,
      ...params
    };

    final response = await _dio.post<Map<String, dynamic>>(
      _baseUrl + methodName,
      data: requestParams.entries.map((e) => '${e.key}=${e.value}').join('&'),
      options: Options(contentType: 'application/x-www-form-urlencoded'),
    );

    final data = response.data!;

    final error = data['error'];
    if (error != null) throw ApiException.fromJson(error);

    return data;
  }

  /// Методы для работы с аккаунтом.
  Account get account => Account(this);

  /// Рекламный API позволяет автоматизировать работу с рекламными возможностями ВКонтакте и эффективно реализовать специфичные для вашего бизнеса рекламные кампании.
  Ads get abs => Ads(this);
  Adsweb get absweb => Adsweb(this);

  /// Методы для работы с приложениями.
  Apps get apps => Apps(this);

  /// Список методов секции appWidgets
  AppWidgets get appWidgets => AppWidgets(this);

  /// Методы для работы с авторизацией.
  Auth get auth => Auth(this);

  /// Методы для работы с обсуждениями.
  Board get board => Board(this);

  /// Методы этой секции предоставляют доступ к базе данных учебных заведений ВКонтакте. Доступ к данным является бесплатным и не требует авторизации, однако количество запросов с одного IP адреса может быть ограничено, при необходимости делать большое количество запросов рекомендуется выполнять запросы с клиентской стороны, используя JSONP.
  Database get database => Database(this);

  /// Методы для работы с документами.
  Docs get docs => Docs(this);

  /// Методы для работы с VK Donut.
  Donut get donut => Donut(this);
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
  /// Подойдут для записи клиентов, предварительной регистрации, подписки на рассылки, запросов информации, подключения услуг, оформления заказов и многого другого.
  /// Вы создаете формы с заявками, а пользователи оставляют свою контактную информацию. Вам остается завершить оформление заявки, связавшись с ними удобным способом.
  LeadForms get leadForms => LeadForms(this);

  /// Методы для работы с отметками «Мне нравится».
  Likes get likes => Likes(this);

  /// Методы market позволяют работать с товарами в сообществах.
  Market get market => Market(this);

  /// Методы для работы с личными сообщениями.
  /// Для моментального получения входящих сообщений используйте LongPoll сервер.
  /// Обратите внимание: доступ к работе с методами секции с ключом пользователя ограничен.
  /// Информация об ограничении Messages API находится в Roadmap.
  /// Обратите внимание: методы для работы со звонками были перенесены в новую секцию calls. Старые методы звонков из секции messages были помечены устаревшими и могут быть удалены в будущих версиях API.
  Messages get messages => Messages(this);

  /// Методы для работы с новостной лентой пользователя.
  Newsfeed get newsfeed => Newsfeed(this);

  /// Методы для работы с заметками.
  Notes get notes => Notes(this);
  Notifications get notifications => Notifications(this);

  /// Методы этой секции предоставляют дополнительную возможность управления состоянием заказов, которые были сделаны пользователями в приложениях.
  Orders get orders => Orders(this);

  /// Методы для работы с вики-страницами.
  Pages get pages => Pages(this);

  /// Методы для работы с фотографиями.
  Photos get photos => Photos(this);

  /// Методы для работы с подкастами.
  Podcasts get podcasts => Podcasts(this);

  /// Методы для работы с опросами.
  Polls get polls => Polls(this);

  /// Карусель
  /// Карусель — набор карточек, которые прикрепляются к записи. К каждой карточке можно добавить название и короткое описание, изображение, кнопку. Также можно установить две цены — старую и новую — например, чтобы показать скидку.
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

  ///
  Store get store => Store(this);
  Stories get stories => Stories(this);
  Streaming get streaming => Streaming(this);

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
