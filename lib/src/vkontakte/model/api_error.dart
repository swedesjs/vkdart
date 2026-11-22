import 'package:meta/meta.dart';

/// Модель ошибки VK API.
class ApiErrorModel {
  /// Данные.
  final Map<String, dynamic> payload;

  // ignore: public_member_api_docs
  ApiErrorModel(this.payload);

  /// Код ошибки.
  ApiErrorCode get code => ApiErrorCode.fromCode(payload['error_code']);

  /// Текст ошибки.
  String get message => payload['error_msg'];

  /// Параметры запроса.
  List<ApiErrorParamModel> get requestParams =>
      (payload['request_params'] as List)
          .map((e) => ApiErrorParamModel((e as Map).cast<String, dynamic>()))
          .toList();
}

/// Код ошибки VK API.
@immutable
class ApiErrorCode {
  /// Произошла неизвестная ошибка.
  /// Попробуйте повторить запрос позже.
  static const unknownError = ApiErrorCode._(1);

  /// Приложение выключено.
  /// Необходимо включить приложение в настройках https://vk.com/editapp?id={Ваш API_ID} или использовать тестовый режим (test_mode=1)
  static const appDisabled = ApiErrorCode._(2);

  /// Передан неизвестный метод.
  /// Проверьте, правильно ли указано название вызываемого метода: vk.com/dev/methods.
  static const unknownMethod = ApiErrorCode._(3);

  /// Авторизация пользователя не удалась.
  /// Убедитесь, что Вы используете верную схему авторизации.
  static const authorizationFailed = ApiErrorCode._(5);

  /// Слишком много запросов в секунду.
  /// Задайте больший интервал между вызовами или используйте метод execute. Подробнее об ограничениях на частоту вызовов см. на странице vk.com/dev/api_requests.
  static const tooManyRequests = ApiErrorCode._(6);

  /// Нет прав для выполнения этого действия.
  /// Проверьте, получены ли нужные права доступа при авторизации. Это можно сделать с помощью метода account.getAppPermissions.
  static const accessDenied = ApiErrorCode._(7);

  /// Неверный запрос.
  /// Проверьте синтаксис запроса и список используемых параметров (его можно найти на странице с описанием метода).
  static const invalidRequest = ApiErrorCode._(8);

  /// Слишком много однотипных действий.
  /// Нужно сократить число однотипных обращений. Для более эффективной работы Вы можете использовать execute или JSONP.
  static const tooManySameTypeActions = ApiErrorCode._(9);

  /// Произошла внутренняя ошибка сервера.
  /// Попробуйте повторить запрос позже.
  static const internalServerError = ApiErrorCode._(10);

  /// В тестовом режиме приложение должно быть выключено или пользователь должен быть залогинен.
  /// Выключите приложение в настройках https://vk.com/editapp?id={Ваш API_ID}
  static const testModeAppDisabled = ApiErrorCode._(11);

  /// Требуется ввод кода с картинки (Captcha).
  /// Процесс обработки этой ошибки подробно описан на отдельной странице.
  static const captchaRequired = ApiErrorCode._(14);

  /// Доступ запрещён.
  /// Убедитесь, что Вы используете верные идентификаторы, и доступ к контенту для текущего пользователя есть в полной версии сайта.
  static const accessForbidden = ApiErrorCode._(15);

  /// Требуется выполнение запросов по протоколу HTTPS, т.к. пользователь включил настройку, требующую работу через безопасное соединение.
  /// Чтобы избежать появления такой ошибки, в Standalone-приложении Вы можете предварительно проверять состояние этой настройки у пользователя методом account.getInfo.
  static const httpsRequired = ApiErrorCode._(16);

  /// Требуется валидация пользователя
  /// Действие требует подтверждения — необходимо перенаправить пользователя на служебную страницу для валидации.
  static const validationRequired = ApiErrorCode._(17);

  /// Страница удалена или заблокирована.
  /// Страница пользователя была удалена или заблокирована
  static const pageDeletedOrBlocked = ApiErrorCode._(18);

  /// Данное действие запрещено для не Standalone приложений.
  /// Если ошибка возникает несмотря на то, что Ваше приложение имеет тип Standalone, убедитесь, что при авторизации Вы используете redirect_uri=https://oauth.vk.com/blank.html. Подробнее см. vk.com/dev/auth_mobile.
  static const actionForbiddenForNonStandaloneApps = ApiErrorCode._(20);

  /// Данное действие разрешено только для Standalone и Open API приложений.
  static const actionAllowedOnlyForStandaloneAndOpenApiApps =
      ApiErrorCode._(21);

  /// Метод был выключен.
  /// Все актуальные методы ВК API, которые доступны в настоящий момент, перечислены здесь: vk.com/dev/methods.
  static const methodDisabled = ApiErrorCode._(23);

  /// Требуется подтверждение со стороны пользователя
  static const userConfirmationRequired = ApiErrorCode._(24);

  /// Ключ доступа сообщества недействителен.
  static const invalidCommunityAccessToken = ApiErrorCode._(27);

  /// Ключ доступа приложения недействителен.
  static const invalidAppAccessToken = ApiErrorCode._(28);

  /// Достигнут количественный лимит на вызов метода
  /// Подробнее об ограничениях на количество вызовов см. на странице
  static const methodCallLimitReached = ApiErrorCode._(29);

  /// Профиль является приватным
  /// Информация, запрашиваемая о профиле, недоступна с используемым ключом доступа
  static const profileIsPrivate = ApiErrorCode._(30);

  /// Неверный API ID приложения.
  /// Найдите приложение в списке администрируемых на странице http://vk.com/apps?act=settings и укажите в запросе верный API_ID (идентификатор приложения).
  static const invalidAppId = ApiErrorCode._(101);

  /// Неверный идентификатор пользователя.
  /// Убедитесь, что Вы используете верный идентификатор. Получить ID по короткому имени можно методом utils.resolveScreenName.
  static const invalidUserId = ApiErrorCode._(113);

  /// Неверный timestamp.
  /// Получить актуальное значение Вы можете методом utils.getServerTime.
  static const invalidTimestamp = ApiErrorCode._(150);

  /// Доступ к альбому запрещён.
  /// Убедитесь, что Вы используете верные идентификаторы (для пользователей owner_id положительный, для сообществ — отрицательный), и доступ к запрашиваемому контенту для текущего пользователя есть в полной версии сайта.
  static const accessToAlbumForbidden = ApiErrorCode._(200);

  /// Доступ к аудио запрещён.
  /// Убедитесь, что Вы используете верные идентификаторы (для пользователей owner_id положительный, для сообществ — отрицательный), и доступ к запрашиваемому контенту для текущего пользователя есть в полной версии сайта.
  static const accessToAudioForbidden = ApiErrorCode._(201);

  /// Доступ к группе запрещён.
  /// Убедитесь, что текущий пользователь является участником или руководителем сообщества (для закрытых и частных групп и встреч).
  static const accessToGroupForbidden = ApiErrorCode._(203);

  /// Альбом переполнен.
  /// Перед продолжением работы нужно удалить лишние объекты из альбома или использовать другой альбом.
  static const albumOverflow = ApiErrorCode._(300);

  /// Действие запрещено.
  /// Вы должны включить переводы голосов в настройках приложения.
  /// Проверьте настройки приложения: https://vk.com/editapp?id={Ваш API_ID}&section=payments
  static const actionForbidden = ApiErrorCode._(500);

  /// Нет прав на выполнение данных операций с рекламным кабинетом.
  static const noRightsToPerformOperationsWithAdAccount = ApiErrorCode._(600);

  /// Произошла ошибка при работе с рекламным кабинетом.
  static const adAccountError = ApiErrorCode._(603);

  static const Map<int, ApiErrorCode> _byCodes = {
    1: unknownError,
    2: appDisabled,
    3: unknownMethod,
    5: authorizationFailed,
    6: tooManyRequests,
    7: accessDenied,
    8: invalidRequest,
    9: tooManySameTypeActions,
    10: internalServerError,
    11: testModeAppDisabled,
    14: captchaRequired,
    15: accessForbidden,
    16: httpsRequired,
    17: validationRequired,
    18: pageDeletedOrBlocked,
    20: actionForbiddenForNonStandaloneApps,
    21: actionAllowedOnlyForStandaloneAndOpenApiApps,
    23: methodDisabled,
    24: userConfirmationRequired,
    27: invalidCommunityAccessToken,
    28: invalidAppAccessToken,
    29: methodCallLimitReached,
    30: profileIsPrivate,
    101: invalidAppId,
    113: invalidUserId,
    150: invalidTimestamp,
    200: accessToAlbumForbidden,
    201: accessToAudioForbidden,
    203: accessToGroupForbidden,
    300: albumOverflow,
    500: actionForbidden,
    600: noRightsToPerformOperationsWithAdAccount,
    603: adAccountError
  };

  /// Код ошибки.
  final int code;
  const ApiErrorCode._(this.code);

  /// Получить код ошибки по числовому значению.
  static ApiErrorCode fromCode(int code) =>
      _byCodes[code] ?? ApiErrorCode._(code);

  @override
  bool operator ==(Object other) => other is ApiErrorCode && code == other.code;

  @override
  int get hashCode => code.hashCode;

  @override
  String toString() => '$code';
}

/// Модель параметров запроса ошибки VK API.
class ApiErrorParamModel {
  /// Данные.
  final Map<String, dynamic> payload;

  // ignore: public_member_api_docs
  ApiErrorParamModel(this.payload);

  /// Ключ.
  String get key => payload['key'];

  /// Значение.
  String get value => payload['value'];
}
