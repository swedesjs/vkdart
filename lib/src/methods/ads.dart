part of '../../methods.dart';

/// Методы для работы с рекламой.
class Ads {
  /// Конструктор.
  Ads(this._api);
  final Api _api;

  /// Adds managers and/or supervisors to advertising account.
  MethodTypeReturn addOfficeUsers(MethodTypeParams params) =>
      _api.request('ads.addOfficeUsers', params);

  /// Allows to check the ad link.
  MethodTypeReturn checkLink(MethodTypeParams params) =>
      _api.request('ads.checkLink', params);

  /// Creates ads.
  MethodTypeReturn createAds(MethodTypeParams params) =>
      _api.request('ads.createAds', params);

  /// Creates advertising campaigns.
  MethodTypeReturn createCampaigns(MethodTypeParams params) =>
      _api.request('ads.createCampaigns', params);

  /// Creates clients of an advertising agency.
  MethodTypeReturn createClients(MethodTypeParams params) =>
      _api.request('ads.createClients', params);

  /// Creates a group to re-target ads for users who visited advertiser's site
  /// (viewed information about the product, registered, etc.).
  MethodTypeReturn createTargetGroup(MethodTypeParams params) =>
      _api.request('ads.createTargetGroup', params);

  /// Archives ads.
  MethodTypeReturn deleteAds(MethodTypeParams params) =>
      _api.request('ads.deleteAds', params);

  /// Archives advertising campaigns.
  MethodTypeReturn deleteCampaigns(MethodTypeParams params) =>
      _api.request('ads.deleteCampaigns', params);

  /// Archives clients of an advertising agency.
  MethodTypeReturn deleteClients(MethodTypeParams params) =>
      _api.request('ads.deleteClients', params);

  /// Deletes a retarget group.
  MethodTypeReturn deleteTargetGroup(MethodTypeParams params) =>
      _api.request('ads.deleteTargetGroup', params);

  /// Returns a list of advertising accounts.
  MethodTypeReturn getAccounts(MethodTypeParams params) =>
      _api.request('ads.getAccounts', params);

  /// Returns number of ads.
  MethodTypeReturn getAds(MethodTypeParams params) =>
      _api.request('ads.getAds', params);

  /// Returns descriptions of ad layouts.
  MethodTypeReturn getAdsLayout(MethodTypeParams params) =>
      _api.request('ads.getAdsLayout', params);

  /// Возвращает подробную информацию об охвате рекламных записей.
  MethodTypeReturn getAdsPostsReach(MethodTypeParams params) =>
      _api.request('ads.getAdsPostsReach', params);

  /// Returns ad targeting parameters.
  MethodTypeReturn getAdsTargeting(MethodTypeParams params) =>
      _api.request('ads.getAdsTargeting', params);

  /// Returns current budget of the advertising account.
  MethodTypeReturn getBudget(MethodTypeParams params) =>
      _api.request('ads.getBudget', params);

  /// Returns a list of campaigns in an advertising account.
  MethodTypeReturn getCampaigns(MethodTypeParams params) =>
      _api.request('ads.getCampaigns', params);

  /// Returns a list of possible ad categories.
  MethodTypeReturn getCategories(MethodTypeParams params) =>
      _api.request('ads.getCategories', params);

  /// Returns a list of advertising agency's clients.
  MethodTypeReturn getClients(MethodTypeParams params) =>
      _api.request('ads.getClients', params);

  /// Returns demographics for ads or campaigns.
  MethodTypeReturn getDemographics(MethodTypeParams params) =>
      _api.request('ads.getDemographics', params);

  /// Returns information about current state of a counter — number of remaining
  ///  runs of methods and time to the next counter nulling in seconds.
  MethodTypeReturn getFloodStats(MethodTypeParams params) =>
      _api.request('ads.getFloodStats', params);

  /// Возвращает список запросов на поиск похожей аудитории.
  MethodTypeReturn getLookalikeRequests(MethodTypeParams params) =>
      _api.request('ads.getLookalikeRequests', params);

  // ignore: lines_longer_than_80_chars
  /// Возвращает информацию о музыкантах, на слушателей которых доступно таргетирование.
  MethodTypeReturn getMusicians(MethodTypeParams params) =>
      _api.request('ads.getMusicians', params);

  // ignore: lines_longer_than_80_chars
  /// Возвращает информацию о музыкантах на слушателей, для которых доступно таргетирование.
  MethodTypeReturn getMusiciansByIds(MethodTypeParams params) =>
      _api.request('ads.getMusiciansByIds', params);

  /// Returns a list of managers and supervisors of advertising account.
  MethodTypeReturn getOfficeUsers(MethodTypeParams params) =>
      _api.request('ads.getOfficeUsers', params);

  // ignore: lines_longer_than_80_chars
  /// Returns detailed statistics of promoted posts reach from campaigns and ads.
  MethodTypeReturn getPostsReach(MethodTypeParams params) =>
      _api.request('ads.getPostsReach', params);

  /// Returns a reason of ad rejection for pre-moderation.
  MethodTypeReturn getRejectionReason(MethodTypeParams params) =>
      _api.request('ads.getRejectionReason', params);

  /// Returns statistics of performance indicators for ads, campaigns, clients
  ///  or the whole account.
  MethodTypeReturn getStatistics(MethodTypeParams params) =>
      _api.request('ads.getStatistics', params);

  /// Returns a set of auto-suggestions for various targeting parameters.
  MethodTypeReturn getSuggestions(MethodTypeParams params) =>
      _api.request('ads.getSuggestions', params);

  /// Returns a list of target groups.
  MethodTypeReturn getTargetGroups(MethodTypeParams params) =>
      _api.request('ads.getTargetGroups', params);

  /// Возвращает список пикселей ретаргетинга.
  MethodTypeReturn getTargetPixels(MethodTypeParams params) =>
      _api.request('ads.getTargetPixels', params);

  /// Returns the size of targeting audience, and also recommended values for
  ///  CPC and CPM.
  MethodTypeReturn getTargetingStats(MethodTypeParams params) =>
      _api.request('ads.getTargetingStats', params);

  /// Returns URL to upload an ad photo to.
  MethodTypeReturn getUploadURL(MethodTypeParams params) =>
      _api.request('ads.getUploadURL', params);

  /// Returns URL to upload an ad video to.
  MethodTypeReturn getVideoUploadURL(MethodTypeParams params) =>
      _api.request('ads.getVideoUploadURL', params);

  /// Imports a list of advertiser's contacts to count VK registered users again
  /// st the target group.
  MethodTypeReturn importTargetContacts(MethodTypeParams params) =>
      _api.request('ads.importTargetContacts', params);

  /// Removes managers and/or supervisors from advertising account.
  MethodTypeReturn removeOfficeUsers(MethodTypeParams params) =>
      _api.request('ads.removeOfficeUsers', params);

  // ignore: lines_longer_than_80_chars
  /// Принимает запрос на исключение контактов рекламодателя из аудитории ретаргетинга.
  MethodTypeReturn removeTargetContacts(MethodTypeParams params) =>
      _api.request('ads.removeTargetContacts', params);

  /// Сохраняет результат поиска похожей аудитории.
  MethodTypeReturn saveLookalikeRequestResult(MethodTypeParams params) =>
      _api.request('ads.saveLookalikeRequestResult', params);

  /// Предоставляет доступ к аудитории ретаргетинга другому рекламному кабинету.
  // ignore: lines_longer_than_80_chars
  /// В результате выполнения метода возвращается идентификатор аудитории для указанного кабинета.
  MethodTypeReturn shareTargetGroup(MethodTypeParams params) =>
      _api.request('ads.shareTargetGroup', params);

  /// Edits ads.
  MethodTypeReturn updateAds(MethodTypeParams params) =>
      _api.request('ads.updateAds', params);

  /// Edits advertising campaigns.
  MethodTypeReturn updateCampaigns(MethodTypeParams params) =>
      _api.request('ads.updateCampaigns', params);

  /// Edits clients of an advertising agency.
  MethodTypeReturn updateClients(MethodTypeParams params) =>
      _api.request('ads.updateClients', params);

  /// Adds managers and/or supervisors to advertising account.
  MethodTypeReturn updateOfficeUsers(MethodTypeParams params) =>
      _api.request('ads.updateOfficeUsers', params);

  /// Edits a retarget group.
  MethodTypeReturn updateTargetGroup(MethodTypeParams params) =>
      _api.request('ads.updateTargetGroup', params);

  /// Редактирует пиксель ретаргетинга.
  MethodTypeReturn updateTargetPixel(MethodTypeParams params) =>
      _api.request('ads.updateTargetPixel', params);
}
