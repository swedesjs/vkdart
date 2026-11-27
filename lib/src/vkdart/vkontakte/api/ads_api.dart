import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';
import 'package:vkdart/src/vkdart/vkontakte/api/api.dart' show Todo;
import 'package:vkdart/src/vkdart/vkontakte/vkontakte.dart' show Vkontakte;
import 'package:vkdart/vkontakte.dart';

part 'ads_api.g.dart';

/// Раздел API для работы с рекламой.
/// https://dev.vk.com/ru/method/ads
/// see [Vkontakte.ads] for usage.
@immutable
@Todo('Реализовать методы раздела Ads для работы с рекламой.\n'
    'Сейчас реализованы только методы addOfficeUsers и checkLink.')
class AdsApi {
  /// Создает экземпляр [AdsApi].
  const AdsApi(this._api);

  final Vkontakte _api;

  /// Добавляет администраторов и/или наблюдателей в рекламный кабинет.
  /// https://dev.vk.com/ru/method/ads.addOfficeUsers
  Future<List<bool>> addOfficeUsers(
      {required int accountId,
      required List<AdsApiUserSpecification> data}) async {
    final params = {
      'account_id': accountId,
      'data': jsonEncode(data.map((e) => e.toJson())),
    };

    return _api
        .request('ads.addOfficeUsers', params)
        .then((response) => (response as List).cast<bool>());
  }

  /// Проверяет ссылку на рекламируемый объект.
  /// https://dev.vk.com/ru/method/ads.checkLink
  Future<AdsApiCheckLinkResponse> checkLink(
      {required int accountId,
      required AdsApiCheckLinkType linkType,
      required String linkUrl,
      int? campaignId}) {
    final params = {
      'account_id': accountId,
      'link_type': linkType.name,
      'link_url': linkUrl,
      if (campaignId != null) 'campaign_id': campaignId,
    };

    return _api.request('ads.checkLink', params).then((response) =>
        AdsApiCheckLinkResponse.fromJson(
            (response as Map).cast<String, dynamic>()));
  }

  /// Создает рекламное объявление.
  /// https://dev.vk.com/ru/method/ads.createAds
  void createAds() {
    throw UnimplementedError('createAds is not implemented yet');
  }

  /// Создает рекламные кампании.
  /// https://dev.vk.com/ru/method/ads.createCampaigns

  void createCampaigns() {
    throw UnimplementedError('createCampaigns is not implemented yet');
  }

  /// Создает клиентов рекламного агества. Доступен только рекламным агентствам.
  /// https://dev.vk.com/ru/method/ads.createClients
  void createClients() {
    throw UnimplementedError('createClients is not implemented yet');
  }

  /// Создает запрос на поиск похожей аудитории.
  /// https://dev.vk.com/ru/method/ads.createLookalikeRequest
  void createLookalikeRequest() {
    throw UnimplementedError('createLookalikeRequest is not implemented yet');
  }

  /// https://dev.vk.com/ru/method/ads.createTargetGroup
  void createTargetGroup() {
    throw UnimplementedError('createTargetGroup is not implemented yet');
  }

  /// https://dev.vk.com/ru/method/ads.createTargetPixel
  void createTargetPixel() {
    throw UnimplementedError('createTargetPixel is not implemented yet');
  }

  /// https://dev.vk.com/ru/method/ads.deleteAds
  void deleteAds() {
    throw UnimplementedError('deleteAds is not implemented yet');
  }

  /// https://dev.vk.com/ru/method/ads.deleteCampaigns
  void deleteCampaigns() {
    throw UnimplementedError('deleteCampaigns is not implemented yet');
  }

  /// https://dev.vk.com/ru/method/ads.deleteClients
  void deleteClients() {
    throw UnimplementedError('deleteClients is not implemented yet');
  }

  /// https://dev.vk.com/ru/method/ads.deleteTargetGroup
  void deleteTargetGroup() {
    throw UnimplementedError('deleteTargetGroup is not implemented yet');
  }

  /// https://dev.vk.com/ru/method/ads.deleteTargetPixel
  void deleteTargetPixel() {
    throw UnimplementedError('deleteTargetPixel is not implemented yet');
  }

  /// https://dev.vk.com/ru/method/ads.getAccounts
  void getAccounts() {
    throw UnimplementedError('getAccounts is not implemented yet');
  }

  /// https://dev.vk.com/ru/method/ads.getAds
  void getAds() {
    throw UnimplementedError('getAds is not implemented yet');
  }

  /// https://dev.vk.com/ru/method/ads.getAdsLayout
  void getAdsLayout() {
    throw UnimplementedError('getAdsLayout is not implemented yet');
  }

  /// https://dev.vk.com/ru/method/ads.getAdsTargeting
  void getAdsTargeting() {
    throw UnimplementedError('getAdsTargeting is not implemented yet');
  }

  /// https://dev.vk.com/ru/method/ads.getBudget
  void getBudget() {
    throw UnimplementedError('getBudget is not implemented yet');
  }

  /// https://dev.vk.com/ru/method/ads.getCampaigns
  void getCampaigns() {
    throw UnimplementedError('getCampaigns is not implemented yet');
  }

  /// https://dev.vk.com/ru/method/ads.getCategories
  void getCategories() {
    throw UnimplementedError('getCategories is not implemented yet');
  }

  /// https://dev.vk.com/ru/method/ads.getClients
  void getClients() {
    throw UnimplementedError('getClients is not implemented yet');
  }

  /// https://dev.vk.com/ru/method/ads.getDemographics
  void getDemographics() {
    throw UnimplementedError('getDemographics is not implemented yet');
  }

  /// https://dev.vk.com/ru/method/ads.getFloodStats
  void getFloodStats() {
    throw UnimplementedError('getFloodStats is not implemented yet');
  }

  /// https://dev.vk.com/ru/method/ads.getLookalikeRequests
  void getLookalikeRequests() {
    throw UnimplementedError('getLookalikeRequests is not implemented yet');
  }

  /// https://dev.vk.com/ru/method/ads.getMusicians
  void getMusicians() {
    throw UnimplementedError('getMusicians is not implemented yet');
  }

  /// https://dev.vk.com/ru/method/ads.getMusiciansByIds
  void getMusiciansByIds() {
    throw UnimplementedError('getMusiciansByIds is not implemented yet');
  }

  /// https://dev.vk.com/ru/method/ads.getOfficeUsers
  void getOfficeUsers() {
    throw UnimplementedError('getOfficeUsers is not implemented yet');
  }

  /// https://dev.vk.com/ru/method/ads.getPostsReach
  void getPostsReach() {
    throw UnimplementedError('getPostsReach is not implemented yet');
  }

  /// https://dev.vk.com/ru/method/ads.getRejectionReason
  void getRejectionReason() {
    throw UnimplementedError('getRejectionReason is not implemented yet');
  }

  /// https://dev.vk.com/ru/method/ads.getStatistics
  void getStatistics() {
    throw UnimplementedError('getStatistics is not implemented yet');
  }

  /// https://dev.vk.com/ru/method/ads.getSuggestions
  void getSuggestions() {
    throw UnimplementedError('getSuggestions is not implemented yet');
  }

  /// https://dev.vk.com/ru/method/ads.getTargetGroups
  void getTargetGroups() {
    throw UnimplementedError('getTargetGroups is not implemented yet');
  }

  /// https://dev.vk.com/ru/method/ads.getTargetPixels
  void getTargetPixels() {
    throw UnimplementedError('getTargetPixels is not implemented yet');
  }

  /// https://dev.vk.com/ru/method/ads.getTargetingStats
  void getTargetingStats() {
    throw UnimplementedError('getTargetingStats is not implemented yet');
  }

  /// https://dev.vk.com/ru/method/ads.getUploadURL
  void getUploadURL() {
    throw UnimplementedError('getUploadURL is not implemented yet');
  }

  /// https://dev.vk.com/ru/method/ads.getVideoUploadURL
  void getVideoUploadURL() {
    throw UnimplementedError('getVideoUploadURL is not implemented yet');
  }

  /// https://dev.vk.com/ru/method/ads.importTargetContacts
  void importTargetContacts() {
    throw UnimplementedError('importTargetContacts is not implemented yet');
  }

  /// https://dev.vk.com/ru/method/ads.removeOfficeUsers
  void removeOfficeUsers() {
    throw UnimplementedError('removeOfficeUsers is not implemented yet');
  }

  /// https://dev.vk.com/ru/method/ads.removeTargetContacts
  void removeTargetContacts() {
    throw UnimplementedError('removeTargetContacts is not implemented yet');
  }

  /// https://dev.vk.com/ru/method/ads.saveLookalikeRequestResult
  void saveLookalikeRequestResult() {
    throw UnimplementedError(
        'saveLookalikeRequestResult is not implemented yet');
  }

  /// https://dev.vk.com/ru/method/ads.shareTargetGroup
  void shareTargetGroup() {
    throw UnimplementedError('shareTargetGroup is not implemented yet');
  }

  /// https://dev.vk.com/ru/method/ads.updateAds
  void updateAds() {
    throw UnimplementedError('updateAds is not implemented yet');
  }

  /// https://dev.vk.com/ru/method/ads.updateCampaigns
  void updateCampaigns() {
    throw UnimplementedError('updateCampaigns is not implemented yet');
  }

  /// https://dev.vk.com/ru/method/ads.updateClients
  void updateClients() {
    throw UnimplementedError('updateClients is not implemented yet');
  }

  /// https://dev.vk.com/ru/method/ads.updateOfficeUsers
  void updateOfficeUsers() {
    throw UnimplementedError('updateOfficeUsers is not implemented yet');
  }

  /// https://dev.vk.com/ru/method/ads.updateTargetGroup
  void updateTargetGroup() {
    throw UnimplementedError('updateTargetGroup is not implemented yet');
  }

  /// https://dev.vk.com/ru/method/ads.updateTargetPixel
  void updateTargetPixel() {
    throw UnimplementedError('updateTargetPixel is not implemented yet');
  }
}

/// JSON-объект, описывающих добавляемых администраторов или наблюдателей рекламного кабинета.
/// Используется в методе [AdsApi.addOfficeUsers] как параметр data.
@immutable
@JsonSerializable(createFactory: false)
class AdsApiUserSpecification {
  /// Идентификатор пользователя, добавляемого как администратор или наблюдатель.
  final int userId;

  /// Роль пользователя в рекламном кабинете.
  final AdsApiUserSpecificationRole role;

  /// Идентификатор клиента, к которому будет привязан пользователь.
  final int clientId;

  /// Может ли пользователь видеть бюджет рекламного кабинета.
  /// Если true, то пользователь сможет видеть бюджет рекламного кабинета,
  /// если false — не сможет.
  @JsonKey(toJson: _boolToInt)
  final bool viewBudget;

  static int _boolToInt(bool value) => value ? 1 : 0;

  /// JSON-объект, описывающий добавляемого пользователя.
  /// [userId] — идентификатор пользователя, добавляемого как администратор или наблюдатель.
  /// [role] — роль пользователя в рекламном кабинете.
  /// [clientId] — идентификатор клиента, к которому будет привязан пользователь.
  /// [viewBudget] — может ли пользователь видеть бюджет рекламного кабинета.
  const AdsApiUserSpecification({
    required this.userId,
    required this.role,
    required this.clientId,
    this.viewBudget = false,
  });

  /// Преобразует объект в JSON-формат.
  Map<String, dynamic> toJson() => _$AdsApiUserSpecificationToJson(this);
}

/// Флаги, определяющие роль пользователя в рекламном кабинете.
@JsonEnum()
enum AdsApiUserSpecificationRole {
  /// Администратор рекламного кабинета.
  manager,

  /// Наблюдатель рекламного кабинета.
  reports
}

/// Типы ссылок, которые можно проверить.
/// Используется в методе [AdsApi.checkLink] как параметр link_type.
@JsonEnum()
enum AdsApiCheckLinkType {
  /// Ссылка на сообщество.
  community,

  /// Ссылка на запись.
  post,

  /// Ссылка на приложение.
  application,

  /// Ссылка на видео.
  video,

  /// Ссылка на внешний сайт.
  site
}

/// JSON-объект проверки ссылки на рекламируемый объект.
/// Используется в методе [AdsApi.checkLink] как возвращаемое значение.
@JsonSerializable()
class AdsApiCheckLinkResponse {
  /// Статус проверки ссылки.
  /// allowed - разрешено использовать ссылку в рекламе.
  /// disallowed - запрещено использовать ссылку в рекламе.
  /// in_progress - проверка ссылки в процессе.
  final AdsApiCheckLinkResponseStatus status;

  /// Описание статуса проверки ссылки.
  /// Если [status] = disallowed, то [description] может отсутствовать.
  final String? description;

  /// URL перенаправления, если ссылка может быть использована.
  final String? redirectUrl;

  /// JSON-объект проверки ссылки на рекламируемый объект.
  /// [status] — статус проверки ссылки.
  /// [description] — описание статуса проверки ссылки.
  /// если [status] = disallowed, то [description] может отсутствовать.
  /// [redirectUrl] — URL перенаправления, если ссылка может быть использована.
  AdsApiCheckLinkResponse(
      {required this.status, this.description, this.redirectUrl});

  /// Создает объект из JSON-формата.
  factory AdsApiCheckLinkResponse.fromJson(Map<String, dynamic> json) =>
      _$AdsApiCheckLinkResponseFromJson(json);

  /// Преобразует объект в JSON-формат.
  Map<String, dynamic> toJson() => _$AdsApiCheckLinkResponseToJson(this);
}

/// Типы статусов проверки ссылки.
/// Используется в методе [AdsApi.checkLink] как возвращаемое значение.
@JsonEnum()
enum AdsApiCheckLinkResponseStatus {
  /// Разрешено использовать ссылку в рекламе.
  allowed,

  /// Запрещено использовать ссылку в рекламе.
  disallowed,

  /// Проверка ссылки в процессе.
  @JsonValue('in_progress')
  inProgress
}
