import 'package:vkdart/src/api.dart';

/// Методы для работы с рекламой.
class Ads {
  /// Конструктор.
  Ads(this._api);
  final Api _api;

  /// Adds managers and/or supervisors to advertising account.
  Future<Map<String, dynamic>> addOfficeUsers(Map<String, Object> params) =>
      _api.request('ads.addOfficeUsers', params);

  /// Allows to check the ad link.
  Future<Map<String, dynamic>> checkLink(Map<String, Object> params) =>
      _api.request('ads.checkLink', params);

  /// Creates ads.
  Future<Map<String, dynamic>> createAds(Map<String, Object> params) =>
      _api.request('ads.createAds', params);

  /// Creates advertising campaigns.
  Future<Map<String, dynamic>> createCampaigns(Map<String, Object> params) =>
      _api.request('ads.createCampaigns', params);

  /// Creates clients of an advertising agency.
  Future<Map<String, dynamic>> createClients(Map<String, Object> params) =>
      _api.request('ads.createClients', params);

  /// Creates a group to re-target ads for users who visited advertiser's site
  /// (viewed information about the product, registered, etc.).
  Future<Map<String, dynamic>> createTargetGroup(Map<String, Object> params) =>
      _api.request('ads.createTargetGroup', params);

  /// Archives ads.
  Future<Map<String, dynamic>> deleteAds(Map<String, Object> params) =>
      _api.request('ads.deleteAds', params);

  /// Archives advertising campaigns.
  Future<Map<String, dynamic>> deleteCampaigns(Map<String, Object> params) =>
      _api.request('ads.deleteCampaigns', params);

  /// Archives clients of an advertising agency.
  Future<Map<String, dynamic>> deleteClients(Map<String, Object> params) =>
      _api.request('ads.deleteClients', params);

  /// Deletes a retarget group.
  Future<Map<String, dynamic>> deleteTargetGroup(Map<String, Object> params) =>
      _api.request('ads.deleteTargetGroup', params);

  /// Returns a list of advertising accounts.
  Future<Map<String, dynamic>> getAccounts(Map<String, Object> params) =>
      _api.request('ads.getAccounts', params);

  /// Returns number of ads.
  Future<Map<String, dynamic>> getAds(Map<String, Object> params) =>
      _api.request('ads.getAds', params);

  /// Returns descriptions of ad layouts.
  Future<Map<String, dynamic>> getAdsLayout(Map<String, Object> params) =>
      _api.request('ads.getAdsLayout', params);

  /// Возвращает подробную информацию об охвате рекламных записей.
  Future<Map<String, dynamic>> getAdsPostsReach(Map<String, Object> params) =>
      _api.request('ads.getAdsPostsReach', params);

  /// Returns ad targeting parameters.
  Future<Map<String, dynamic>> getAdsTargeting(Map<String, Object> params) =>
      _api.request('ads.getAdsTargeting', params);

  /// Returns current budget of the advertising account.
  Future<Map<String, dynamic>> getBudget(Map<String, Object> params) =>
      _api.request('ads.getBudget', params);

  /// Returns a list of campaigns in an advertising account.
  Future<Map<String, dynamic>> getCampaigns(Map<String, Object> params) =>
      _api.request('ads.getCampaigns', params);

  /// Returns a list of possible ad categories.
  Future<Map<String, dynamic>> getCategories(Map<String, Object> params) =>
      _api.request('ads.getCategories', params);

  /// Returns a list of advertising agency's clients.
  Future<Map<String, dynamic>> getClients(Map<String, Object> params) =>
      _api.request('ads.getClients', params);

  /// Returns demographics for ads or campaigns.
  Future<Map<String, dynamic>> getDemographics(Map<String, Object> params) =>
      _api.request('ads.getDemographics', params);

  /// Returns information about current state of a counter — number of remaining
  ///  runs of methods and time to the next counter nulling in seconds.
  Future<Map<String, dynamic>> getFloodStats(Map<String, Object> params) =>
      _api.request('ads.getFloodStats', params);

  /// Возвращает список запросов на поиск похожей аудитории.
  Future<Map<String, dynamic>> getLookalikeRequests(
    Map<String, Object> params,
  ) =>
      _api.request('ads.getLookalikeRequests', params);

  // ignore: lines_longer_than_80_chars
  /// Возвращает информацию о музыкантах, на слушателей которых доступно таргетирование.
  Future<Map<String, dynamic>> getMusicians(Map<String, Object> params) =>
      _api.request('ads.getMusicians', params);

  // ignore: lines_longer_than_80_chars
  /// Возвращает информацию о музыкантах на слушателей, для которых доступно таргетирование.
  Future<Map<String, dynamic>> getMusiciansByIds(Map<String, Object> params) =>
      _api.request('ads.getMusiciansByIds', params);

  /// Returns a list of managers and supervisors of advertising account.
  Future<Map<String, dynamic>> getOfficeUsers(Map<String, Object> params) =>
      _api.request('ads.getOfficeUsers', params);

  // ignore: lines_longer_than_80_chars
  /// Returns detailed statistics of promoted posts reach from campaigns and ads.
  Future<Map<String, dynamic>> getPostsReach(Map<String, Object> params) =>
      _api.request('ads.getPostsReach', params);

  /// Returns a reason of ad rejection for pre-moderation.
  Future<Map<String, dynamic>> getRejectionReason(Map<String, Object> params) =>
      _api.request('ads.getRejectionReason', params);

  /// Returns statistics of performance indicators for ads, campaigns, clients
  ///  or the whole account.
  Future<Map<String, dynamic>> getStatistics(Map<String, Object> params) =>
      _api.request('ads.getStatistics', params);

  /// Returns a set of auto-suggestions for various targeting parameters.
  Future<Map<String, dynamic>> getSuggestions(Map<String, Object> params) =>
      _api.request('ads.getSuggestions', params);

  /// Returns a list of target groups.
  Future<Map<String, dynamic>> getTargetGroups(Map<String, Object> params) =>
      _api.request('ads.getTargetGroups', params);

  /// Возвращает список пикселей ретаргетинга.
  Future<Map<String, dynamic>> getTargetPixels(Map<String, Object> params) =>
      _api.request('ads.getTargetPixels', params);

  /// Returns the size of targeting audience, and also recommended values for
  ///  CPC and CPM.
  Future<Map<String, dynamic>> getTargetingStats(Map<String, Object> params) =>
      _api.request('ads.getTargetingStats', params);

  /// Returns URL to upload an ad photo to.
  Future<Map<String, dynamic>> getUploadURL(Map<String, Object> params) =>
      _api.request('ads.getUploadURL', params);

  /// Returns URL to upload an ad video to.
  Future<Map<String, dynamic>> getVideoUploadURL(Map<String, Object> params) =>
      _api.request('ads.getVideoUploadURL', params);

  /// Imports a list of advertiser's contacts to count VK registered users again
  /// st the target group.
  Future<Map<String, dynamic>> importTargetContacts(
    Map<String, Object> params,
  ) =>
      _api.request('ads.importTargetContacts', params);

  /// Removes managers and/or supervisors from advertising account.
  Future<Map<String, dynamic>> removeOfficeUsers(Map<String, Object> params) =>
      _api.request('ads.removeOfficeUsers', params);

  // ignore: lines_longer_than_80_chars
  /// Принимает запрос на исключение контактов рекламодателя из аудитории ретаргетинга.
  Future<Map<String, dynamic>> removeTargetContacts(
    Map<String, Object> params,
  ) =>
      _api.request('ads.removeTargetContacts', params);

  /// Сохраняет результат поиска похожей аудитории.
  Future<Map<String, dynamic>> saveLookalikeRequestResult(
    Map<String, Object> params,
  ) =>
      _api.request('ads.saveLookalikeRequestResult', params);

  /// Предоставляет доступ к аудитории ретаргетинга другому рекламному кабинету.
  // ignore: lines_longer_than_80_chars
  /// В результате выполнения метода возвращается идентификатор аудитории для указанного кабинета.
  Future<Map<String, dynamic>> shareTargetGroup(Map<String, Object> params) =>
      _api.request('ads.shareTargetGroup', params);

  /// Edits ads.
  Future<Map<String, dynamic>> updateAds(Map<String, Object> params) =>
      _api.request('ads.updateAds', params);

  /// Edits advertising campaigns.
  Future<Map<String, dynamic>> updateCampaigns(Map<String, Object> params) =>
      _api.request('ads.updateCampaigns', params);

  /// Edits clients of an advertising agency.
  Future<Map<String, dynamic>> updateClients(Map<String, Object> params) =>
      _api.request('ads.updateClients', params);

  /// Adds managers and/or supervisors to advertising account.
  Future<Map<String, dynamic>> updateOfficeUsers(Map<String, Object> params) =>
      _api.request('ads.updateOfficeUsers', params);

  /// Edits a retarget group.
  Future<Map<String, dynamic>> updateTargetGroup(Map<String, Object> params) =>
      _api.request('ads.updateTargetGroup', params);

  /// Редактирует пиксель ретаргетинга.
  Future<Map<String, dynamic>> updateTargetPixel(Map<String, Object> params) =>
      _api.request('ads.updateTargetPixel', params);
}
