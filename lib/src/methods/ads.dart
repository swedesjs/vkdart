part of '../../methods.dart';

/// Методы для работы с рекламой.
class Ads {
  /// Конструктор.
  Ads(this._api);
  final Api _api;

  /// Adds managers and/or supervisors to advertising account.
  Future<ApiResponse<T>> addOfficeUsers<T>(MethodTypeParams params) =>
      _api.request<T>('ads.addOfficeUsers', params);

  /// Allows to check the ad link.
  Future<ApiResponse<T>> checkLink<T>(MethodTypeParams params) =>
      _api.request<T>('ads.checkLink', params);

  /// Creates ads.
  Future<ApiResponse<T>> createAds<T>(MethodTypeParams params) =>
      _api.request<T>('ads.createAds', params);

  /// Creates advertising campaigns.
  Future<ApiResponse<T>> createCampaigns<T>(MethodTypeParams params) =>
      _api.request<T>('ads.createCampaigns', params);

  /// Creates clients of an advertising agency.
  Future<ApiResponse<T>> createClients<T>(MethodTypeParams params) =>
      _api.request<T>('ads.createClients', params);

  /// Creates a group to re-target ads for users who visited advertiser's site
  /// (viewed information about the product, registered, etc.).
  Future<ApiResponse<T>> createTargetGroup<T>(MethodTypeParams params) =>
      _api.request<T>('ads.createTargetGroup', params);

  /// Archives ads.
  Future<ApiResponse<T>> deleteAds<T>(MethodTypeParams params) =>
      _api.request<T>('ads.deleteAds', params);

  /// Archives advertising campaigns.
  Future<ApiResponse<T>> deleteCampaigns<T>(MethodTypeParams params) =>
      _api.request<T>('ads.deleteCampaigns', params);

  /// Archives clients of an advertising agency.
  Future<ApiResponse<T>> deleteClients<T>(MethodTypeParams params) =>
      _api.request<T>('ads.deleteClients', params);

  /// Deletes a retarget group.
  Future<ApiResponse<T>> deleteTargetGroup<T>(MethodTypeParams params) =>
      _api.request<T>('ads.deleteTargetGroup', params);

  /// Returns a list of advertising accounts.
  Future<ApiResponse<T>> getAccounts<T>(MethodTypeParams params) =>
      _api.request<T>('ads.getAccounts', params);

  /// Returns number of ads.
  Future<ApiResponse<T>> getAds<T>(MethodTypeParams params) =>
      _api.request<T>('ads.getAds', params);

  /// Returns descriptions of ad layouts.
  Future<ApiResponse<T>> getAdsLayout<T>(MethodTypeParams params) =>
      _api.request<T>('ads.getAdsLayout', params);

  /// Возвращает подробную информацию об охвате рекламных записей.
  Future<ApiResponse<T>> getAdsPostsReach<T>(MethodTypeParams params) =>
      _api.request<T>('ads.getAdsPostsReach', params);

  /// Returns ad targeting parameters.
  Future<ApiResponse<T>> getAdsTargeting<T>(MethodTypeParams params) =>
      _api.request<T>('ads.getAdsTargeting', params);

  /// Returns current budget of the advertising account.
  Future<ApiResponse<T>> getBudget<T>(MethodTypeParams params) =>
      _api.request<T>('ads.getBudget', params);

  /// Returns a list of campaigns in an advertising account.
  Future<ApiResponse<T>> getCampaigns<T>(MethodTypeParams params) =>
      _api.request<T>('ads.getCampaigns', params);

  /// Returns a list of possible ad categories.
  Future<ApiResponse<T>> getCategories<T>(MethodTypeParams params) =>
      _api.request<T>('ads.getCategories', params);

  /// Returns a list of advertising agency's clients.
  Future<ApiResponse<T>> getClients<T>(MethodTypeParams params) =>
      _api.request<T>('ads.getClients', params);

  /// Returns demographics for ads or campaigns.
  Future<ApiResponse<T>> getDemographics<T>(MethodTypeParams params) =>
      _api.request<T>('ads.getDemographics', params);

  /// Returns information about current state of a counter — number of remaining
  ///  runs of methods and time to the next counter nulling in seconds.
  Future<ApiResponse<T>> getFloodStats<T>(MethodTypeParams params) =>
      _api.request<T>('ads.getFloodStats', params);

  /// Возвращает список запросов на поиск похожей аудитории.
  Future<ApiResponse<T>> getLookalikeRequests<T>(MethodTypeParams params) =>
      _api.request<T>('ads.getLookalikeRequests', params);

  /// Возвращает информацию о музыкантах, на слушателей которых доступно таргетирование.
  Future<ApiResponse<T>> getMusicians<T>(MethodTypeParams params) =>
      _api.request<T>('ads.getMusicians', params);

  /// Возвращает информацию о музыкантах на слушателей, для которых доступно таргетирование.
  Future<ApiResponse<T>> getMusiciansByIds<T>(MethodTypeParams params) =>
      _api.request<T>('ads.getMusiciansByIds', params);

  /// Returns a list of managers and supervisors of advertising account.
  Future<ApiResponse<T>> getOfficeUsers<T>(MethodTypeParams params) =>
      _api.request<T>('ads.getOfficeUsers', params);

  /// Returns detailed statistics of promoted posts reach from campaigns and ads.
  Future<ApiResponse<T>> getPostsReach<T>(MethodTypeParams params) =>
      _api.request<T>('ads.getPostsReach', params);

  /// Returns a reason of ad rejection for pre-moderation.
  Future<ApiResponse<T>> getRejectionReason<T>(MethodTypeParams params) =>
      _api.request<T>('ads.getRejectionReason', params);

  /// Returns statistics of performance indicators for ads, campaigns, clients
  ///  or the whole account.
  Future<ApiResponse<T>> getStatistics<T>(MethodTypeParams params) =>
      _api.request<T>('ads.getStatistics', params);

  /// Returns a set of auto-suggestions for various targeting parameters.
  Future<ApiResponse<T>> getSuggestions<T>(MethodTypeParams params) =>
      _api.request<T>('ads.getSuggestions', params);

  /// Returns a list of target groups.
  Future<ApiResponse<T>> getTargetGroups<T>(MethodTypeParams params) =>
      _api.request<T>('ads.getTargetGroups', params);

  /// Возвращает список пикселей ретаргетинга.
  Future<ApiResponse<T>> getTargetPixels<T>(MethodTypeParams params) =>
      _api.request<T>('ads.getTargetPixels', params);

  /// Returns the size of targeting audience, and also recommended values for
  ///  CPC and CPM.
  Future<ApiResponse<T>> getTargetingStats<T>(MethodTypeParams params) =>
      _api.request<T>('ads.getTargetingStats', params);

  /// Returns URL to upload an ad photo to.
  Future<ApiResponse<T>> getUploadURL<T>(MethodTypeParams params) =>
      _api.request<T>('ads.getUploadURL', params);

  /// Returns URL to upload an ad video to.
  Future<ApiResponse<T>> getVideoUploadURL<T>(MethodTypeParams params) =>
      _api.request<T>('ads.getVideoUploadURL', params);

  /// Imports a list of advertiser's contacts to count VK registered users again
  /// st the target group.
  Future<ApiResponse<T>> importTargetContacts<T>(MethodTypeParams params) =>
      _api.request<T>('ads.importTargetContacts', params);

  /// Removes managers and/or supervisors from advertising account.
  Future<ApiResponse<T>> removeOfficeUsers<T>(MethodTypeParams params) =>
      _api.request<T>('ads.removeOfficeUsers', params);

  /// Принимает запрос на исключение контактов рекламодателя из аудитории ретаргетинга.
  Future<ApiResponse<T>> removeTargetContacts<T>(MethodTypeParams params) =>
      _api.request<T>('ads.removeTargetContacts', params);

  /// Сохраняет результат поиска похожей аудитории.
  Future<ApiResponse<T>> saveLookalikeRequestResult<T>(
          MethodTypeParams params) =>
      _api.request<T>('ads.saveLookalikeRequestResult', params);

  /// Предоставляет доступ к аудитории ретаргетинга другому рекламному кабинету.

  /// В результате выполнения метода возвращается идентификатор аудитории для указанного кабинета.
  Future<ApiResponse<T>> shareTargetGroup<T>(MethodTypeParams params) =>
      _api.request<T>('ads.shareTargetGroup', params);

  /// Edits ads.
  Future<ApiResponse<T>> updateAds<T>(MethodTypeParams params) =>
      _api.request<T>('ads.updateAds', params);

  /// Edits advertising campaigns.
  Future<ApiResponse<T>> updateCampaigns<T>(MethodTypeParams params) =>
      _api.request<T>('ads.updateCampaigns', params);

  /// Edits clients of an advertising agency.
  Future<ApiResponse<T>> updateClients<T>(MethodTypeParams params) =>
      _api.request<T>('ads.updateClients', params);

  /// Adds managers and/or supervisors to advertising account.
  Future<ApiResponse<T>> updateOfficeUsers<T>(MethodTypeParams params) =>
      _api.request<T>('ads.updateOfficeUsers', params);

  /// Edits a retarget group.
  Future<ApiResponse<T>> updateTargetGroup<T>(MethodTypeParams params) =>
      _api.request<T>('ads.updateTargetGroup', params);

  /// Редактирует пиксель ретаргетинга.
  Future<ApiResponse<T>> updateTargetPixel<T>(MethodTypeParams params) =>
      _api.request<T>('ads.updateTargetPixel', params);
}
