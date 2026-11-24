import 'package:meta/meta.dart';
import 'package:vkdart/vkontakte.dart';

/// Раздел API для работы с аккаунтом пользователя ВКонтакте.
/// https://dev.vk.com/ru/method/account
/// see [Vkontakte.account] for usage.
@immutable
class AccountApi {
  /// Создает экземпляр [AccountApi].
  const AccountApi(this._api);

  final Vkontakte _api;

  /// Метод получает настройки пользователя вашего приложения.
  /// https://dev.vk.com/method/account.getAppPermissions
  Future<int> getAppPermissions({required int userId}) async {
    final response =
        await _api.request('account.getAppPermissions', {'user_id': userId});
    return response as int;
  }
}
