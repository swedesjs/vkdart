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

  Account get account => Account(this);
  Ads get abs => Ads(this);
  Adsweb get absweb => Adsweb(this);
  Apps get apps => Apps(this);
  AppWidgets get appWidgets => AppWidgets(this);
  Auth get auth => Auth(this);
  Board get board => Board(this);
  Database get database => Database(this);
  Docs get docs => Docs(this);
  Donut get donut => Donut(this);
  DownloadedGames get downloadedGames => DownloadedGames(this);
  Fave get fave => Fave(this);
  Friends get friends => Friends(this);
  Gifts get gifts => Gifts(this);
  Groups get groups => Groups(this);
  LeadForms get leadForms => LeadForms(this);
  Likes get likes => Likes(this);
  Market get market => Market(this);
  Messages get messages => Messages(this);
  Newsfeed get newsfeed => Newsfeed(this);
  Notes get notes => Notes(this);
  Notifications get notifications => Notifications(this);
  Orders get orders => Orders(this);
  Pages get pages => Pages(this);
  Photos get photos => Photos(this);
  Podcasts get podcasts => Podcasts(this);
  Polls get polls => Polls(this);
  PrettyCards get prettyCards => PrettyCards(this);
  Search get search => Search(this);
  Secure get secure => Secure(this);
  Stats get stats => Stats(this);
  Status get status => Status(this);
  Storage get storage => Storage(this);
  Store get store => Store(this);
  Stories get stories => Stories(this);
  Streaming get streaming => Streaming(this);
  Users get users => Users(this);
  Utils get utils => Utils(this);
  Video get video => Video(this);
  Wall get wall => Wall(this);
  Widgets get widgets => Widgets(this);
}
