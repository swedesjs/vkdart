import 'package:dio/dio.dart';
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
class Api {
  /// Creating a base instance of the [Api] class.
  ///
  /// [token] - access key.
  /// [language] - defines the language in which various data will be returned,
  /// such as the names of countries and cities.
  /// [version] - API version used.
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

  /// Allows you to create requests to the VK Api.
  /// In [T] we specify the return type of the query result.
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
      throw ApiException(error);
    }

    return ApiResponse<T>(
      data: response as T,
      requestOptions: requestOptions..remove('access_token'),
    );
  }

  /// Methods for working with the account.
  ///
  /// See https://dev.vk.com/ru/method/account
  Account get account => Account(this);

  /// The advertising API allows you to automate work with VKontakte
  /// advertising opportunities and effectively implement advertising campaigns specific to your business.
  ///
  /// See https://dev.vk.com/ru/method/abs
  Ads get abs => Ads(this);

  /// Methods for working with applications.
  ///
  /// See https://dev.vk.com/ru/method/apps
  Apps get apps => Apps(this);

  /// Methods for working with audio recordings.
  ///
  /// See https://dev.vk.com/ru/method/asr
  Asr get asr => Asr(this);

  /// List of methods in the AppWidgets section
  ///
  /// See https://dev.vk.com/ru/method/appWidgets
  AppWidgets get appWidgets => AppWidgets(this);

  /// Methods for working with authorization.
  ///
  /// See https://dev.vk.com/ru/method/auth
  Auth get auth => Auth(this);

  /// Methods for working with discussions.
  ///
  /// See https://dev.vk.com/ru/method/board
  Board get board => Board(this);

  /// Methods for working with the VK Testers testing platform.
  ///
  /// See https://dev.vk.com/ru/method/bugtracker
  Bugtracker get bugtracker => Bugtracker(this);

  /// Methods for working with calls.
  ///
  /// See https://dev.vk.com/ru/method/calls
  Calls get calls => Calls(this);

  /// The methods of this section provide access to the VKontakte database of educational institutions.
  ///
  /// See https://dev.vk.com/ru/method/database
  Database get database => Database(this);

  /// Methods for working with documents.
  ///
  /// See https://dev.vk.com/ru/method/docs
  Docs get docs => Docs(this);

  /// Methods for working with VK Donut.
  ///
  /// See https://dev.vk.com/ru/method/donut
  Donut get donut => Donut(this);

  /// Methods for working with VK games
  ///
  /// See https://dev.vk.com/ru/method/downloadedGames
  DownloadedGames get downloadedGames => DownloadedGames(this);

  /// Methods for working with bookmarks.
  ///
  /// See https://dev.vk.com/ru/method/fave
  Fave get fave => Fave(this);

  /// Methods for working with friends.
  ///
  /// See https://dev.vk.com/ru/method/friends
  Friends get friends => Friends(this);

  /// Methods for working with gifts.
  ///
  /// See https://dev.vk.com/ru/method/gifts
  Gifts get gifts => Gifts(this);

  /// Methods for working with communities.
  ///
  /// See https://dev.vk.com/ru/method/groups
  Groups get groups => Groups(this);

  /// Application collection forms
  ///
  /// See https://dev.vk.com/ru/method/leadForms
  LeadForms get leadForms => LeadForms(this);

  /// Methods for working with "I like" marks.
  ///
  /// See https://dev.vk.com/ru/method/likes
  Likes get likes => Likes(this);

  /// Market methods allow you to work with products in communities.
  ///
  /// See https://dev.vk.com/ru/method/market
  Market get market => Market(this);

  /// Methods for working with personal messages.
  ///
  /// See https://dev.vk.com/ru/method/messages
  Messages get messages => Messages(this);

  /// Methods for working with the user's news feed.
  ///
  /// See https://dev.vk.com/ru/method/newsfeed
  Newsfeed get newsfeed => Newsfeed(this);

  /// Methods for working with notes.
  ///
  /// See https://dev.vk.com/ru/method/notes
  Notes get notes => Notes(this);

  /// Methods for working with alerts.
  ///
  /// See https://dev.vk.com/ru/method/notifications
  Notifications get notifications => Notifications(this);

  /// The methods in this section provide an additional opportunity to manage the
  /// status of orders that have been made by users in applications.
  ///
  /// See https://dev.vk.com/ru/method/orders
  Orders get orders => Orders(this);

  /// Methods for working with wiki pages.
  ///
  /// See https://dev.vk.com/ru/method/pages
  Pages get pages => Pages(this);

  /// Methods for working with photos.
  ///
  /// See https://dev.vk.com/ru/method/photos
  Photos get photos => Photos(this);

  /// Methods for working with places.
  ///
  /// See https://dev.vk.com/ru/method/places
  Places get places => Places(this);

  /// Methods for working with photos.
  ///
  /// See https://dev.vk.com/ru/method/podcasts
  Podcasts get podcasts => Podcasts(this);

  /// Methods for working with surveys.
  ///
  /// See https://dev.vk.com/ru/method/polls
  Polls get polls => Polls(this);

  /// A carousel is a set of cards that are attached to a record.
  ///
  /// See https://dev.vk.com/ru/method/prettyCards
  PrettyCards get prettyCards => PrettyCards(this);

  /// Methods for working with the search.
  ///
  /// See https://dev.vk.com/ru/method/search
  Search get search => Search(this);

  /// This section presents administrative methods designed to be invoked on behalf
  /// of an application using a third-party server.
  /// To use these methods, you must apply the service key from the application settings.
  ///
  /// See https://dev.vk.com/ru/method/secure
  Secure get secure => Secure(this);

  /// Methods for working with statistics.
  ///
  /// See https://dev.vk.com/ru/method/stats
  Stats get stats => Stats(this);

  /// Methods for working with the status.
  ///
  /// See https://dev.vk.com/ru/method/status
  Status get status => Status(this);

  /// Methods for working with variables in the application.
  ///
  /// See https://dev.vk.com/ru/method/storage
  Storage get storage => Storage(this);

  /// Methods for working with stickers.
  ///
  /// See https://dev.vk.com/ru/method/store
  Store get store => Store(this);

  /// Methods for working with stories.
  ///
  /// See https://dev.vk.com/ru/method/stories
  Stories get stories => Stories(this);

  /// Methods for working with the Streaming API.
  ///
  /// See https://dev.vk.com/ru/method/streaming
  Streaming get streaming => Streaming(this);

  /// Methods for working with translation.
  ///
  /// See https://dev.vk.com/ru/method/translations
  Translations get translations => Translations(this);

  /// Methods for working with user data.
  ///
  /// See https://dev.vk.com/ru/method/users
  Users get users => Users(this);

  /// Service methods.
  ///
  /// See https://dev.vk.com/ru/method/utils
  Utils get utils => Utils(this);

  /// Methods for working with video recordings.
  ///
  /// See https://dev.vk.com/ru/method/video
  Video get video => Video(this);

  /// Methods for working with wall posts.
  ///
  /// See https://dev.vk.com/ru/method/wall
  Wall get wall => Wall(this);

  /// Methods for working with widgets on external sites.
  ///
  /// See https://dev.vk.com/ru/method/widgets
  Widgets get widgets => Widgets(this);
}

/// The [ApiResponse] class contains a payload.
/// Provides information about the options of the method request, as well as the result of the request.
class ApiResponse<T> {
  // ignore: public_member_api_docs
  ApiResponse({required this.data, required this.requestOptions});

  /// The result of the query execution.
  final T data;

  /// Request options.
  final Map<String, dynamic> requestOptions;
}

// ignore: public_member_api_docs
class ApiException extends ApiErrorModel implements Exception {
  // ignore: public_member_api_docs
  ApiException(super.payload);

  @override
  String toString() => 'ApiException[$code]: $message';
}
