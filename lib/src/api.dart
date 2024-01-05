import 'package:dio/dio.dart';
import 'package:vkdart/src/exceptions/api_exception.dart';
import 'package:vkdart/src/methods/account.dart';
import 'package:vkdart/src/methods/ads.dart';
import 'package:vkdart/src/methods/app_widgets.dart';
import 'package:vkdart/src/methods/apps.dart';
import 'package:vkdart/src/methods/asr.dart';
import 'package:vkdart/src/methods/auth.dart';
import 'package:vkdart/src/methods/board.dart';
import 'package:vkdart/src/methods/bugtracker.dart';
import 'package:vkdart/src/methods/calls.dart';
import 'package:vkdart/src/methods/database.dart';
import 'package:vkdart/src/methods/docs.dart';
import 'package:vkdart/src/methods/donut.dart';
import 'package:vkdart/src/methods/downloaded_games.dart';
import 'package:vkdart/src/methods/fave.dart';
import 'package:vkdart/src/methods/friends.dart';
import 'package:vkdart/src/methods/gifts.dart';
import 'package:vkdart/src/methods/groups.dart';
import 'package:vkdart/src/methods/lead_forms.dart';
import 'package:vkdart/src/methods/likes.dart';
import 'package:vkdart/src/methods/market.dart';
import 'package:vkdart/src/methods/messages.dart';
import 'package:vkdart/src/methods/newsfeed.dart';
import 'package:vkdart/src/methods/notes.dart';
import 'package:vkdart/src/methods/notifications.dart';
import 'package:vkdart/src/methods/orders.dart';
import 'package:vkdart/src/methods/pages.dart';
import 'package:vkdart/src/methods/photos.dart';
import 'package:vkdart/src/methods/places.dart';
import 'package:vkdart/src/methods/podcasts.dart';
import 'package:vkdart/src/methods/polls.dart';
import 'package:vkdart/src/methods/pretty_cards.dart';
import 'package:vkdart/src/methods/search.dart';
import 'package:vkdart/src/methods/secure.dart';
import 'package:vkdart/src/methods/stats.dart';
import 'package:vkdart/src/methods/status.dart';
import 'package:vkdart/src/methods/storage.dart';
import 'package:vkdart/src/methods/store.dart';
import 'package:vkdart/src/methods/stories.dart';
import 'package:vkdart/src/methods/streaming.dart';
import 'package:vkdart/src/methods/translations.dart';
import 'package:vkdart/src/methods/users.dart';
import 'package:vkdart/src/methods/utils.dart';
import 'package:vkdart/src/methods/video.dart';
import 'package:vkdart/src/methods/wall.dart';
import 'package:vkdart/src/methods/widgets.dart';

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
      ...params,
    };

    final response = await _dio.post<Map<String, dynamic>>(
      _baseUrl + methodName,
      data: requestParams.entries.map((e) => '${e.key}=${e.value}').join('&'),
      options: Options(contentType: 'application/x-www-form-urlencoded'),
    );

    final data = response.data!;

    final error = data['error'];
    if (error != null) {
      throw ApiException.fromJson((error as Map).cast<String, dynamic>());
    }

    return data;
  }

  /// Методы для работы с аккаунтом.
  Account get account => Account(this);

  // ignore: lines_longer_than_80_chars
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

  // ignore: lines_longer_than_80_chars
  /// Методы этой секции предоставляют доступ к базе данных учебных заведений ВКонтакте.
  ///
  /// Доступ к данным является бесплатным и не требует авторизации,
  /// однако количество запросов с одного IP адреса может быть ограничено,
  // ignore: lines_longer_than_80_chars
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
  // ignore: lines_longer_than_80_chars
  /// Подойдут для записи клиентов, предварительной регистрации, подписки на рассылки, запросов информации, подключения услуг, оформления заказов и многого другого.
  // ignore: lines_longer_than_80_chars
  /// Вы создаете формы с заявками, а пользователи оставляют свою контактную информацию.
  // ignore: lines_longer_than_80_chars
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
  // ignore: lines_longer_than_80_chars
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
  // ignore: lines_longer_than_80_chars
  /// К каждой карточке можно добавить название и короткое описание, изображение, кнопку.
  // ignore: lines_longer_than_80_chars
  /// Также можно установить две цены — старую и новую — например, чтобы показать скидку.
  // ignore: lines_longer_than_80_chars
  /// На текущий момент карусель поддерживается только в скрытых рекламных записях (см. wall.postAdsStealth).
  PrettyCards get prettyCards => PrettyCards(this);

  /// Методы для работы с поиском.
  Search get search => Search(this);

  // ignore: lines_longer_than_80_chars
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
