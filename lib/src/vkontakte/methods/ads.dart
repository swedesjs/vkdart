import 'package:vkdart/vkontakte.dart';

/// Methods for working with advertising.
///
/// See https://dev.vk.com/ru/method/ads
class Ads {
  // ignore: public_member_api_docs
  Ads(this._api);
  final Api _api;

  /// Adds managers and/or supervisors to advertising account.
  Future<ApiResponse<T>> addOfficeUsers<T>(Map<String, Object> params) =>
      _api.request<T>('ads.addOfficeUsers', params);

  /// Allows to check the ad link.
  Future<ApiResponse<T>> checkLink<T>(Map<String, Object> params) =>
      _api.request<T>('ads.checkLink', params);

  /// Creates ads.
  Future<ApiResponse<T>> createAds<T>(Map<String, Object> params) =>
      _api.request<T>('ads.createAds', params);

  /// Creates advertising campaigns.
  Future<ApiResponse<T>> createCampaigns<T>(Map<String, Object> params) =>
      _api.request<T>('ads.createCampaigns', params);

  /// Creates clients of an advertising agency.
  Future<ApiResponse<T>> createClients<T>(Map<String, Object> params) =>
      _api.request<T>('ads.createClients', params);

  /// Creates a group to re-target ads for users who visited advertiser's site
  /// (viewed information about the product, registered, etc.).
  Future<ApiResponse<T>> createTargetGroup<T>(Map<String, Object> params) =>
      _api.request<T>('ads.createTargetGroup', params);

  /// Archives ads.
  Future<ApiResponse<T>> deleteAds<T>(Map<String, Object> params) =>
      _api.request<T>('ads.deleteAds', params);

  /// Archives advertising campaigns.
  Future<ApiResponse<T>> deleteCampaigns<T>(Map<String, Object> params) =>
      _api.request<T>('ads.deleteCampaigns', params);

  /// Archives clients of an advertising agency.
  Future<ApiResponse<T>> deleteClients<T>(Map<String, Object> params) =>
      _api.request<T>('ads.deleteClients', params);

  /// Deletes a retarget group.
  Future<ApiResponse<T>> deleteTargetGroup<T>(Map<String, Object> params) =>
      _api.request<T>('ads.deleteTargetGroup', params);

  /// Returns a list of advertising accounts.
  Future<ApiResponse<T>> getAccounts<T>(Map<String, Object> params) =>
      _api.request<T>('ads.getAccounts', params);

  /// Returns number of ads.
  Future<ApiResponse<T>> getAds<T>(Map<String, Object> params) =>
      _api.request<T>('ads.getAds', params);

  /// Returns descriptions of ad layouts.
  Future<ApiResponse<T>> getAdsLayout<T>(Map<String, Object> params) =>
      _api.request<T>('ads.getAdsLayout', params);

  /// Returns detailed information about the coverage of advertising records.
  Future<ApiResponse<T>> getAdsPostsReach<T>(Map<String, Object> params) =>
      _api.request<T>('ads.getAdsPostsReach', params);

  /// Returns ad targeting parameters.
  Future<ApiResponse<T>> getAdsTargeting<T>(Map<String, Object> params) =>
      _api.request<T>('ads.getAdsTargeting', params);

  /// Returns current budget of the advertising account.
  Future<ApiResponse<T>> getBudget<T>(Map<String, Object> params) =>
      _api.request<T>('ads.getBudget', params);

  /// Returns a list of campaigns in an advertising account.
  Future<ApiResponse<T>> getCampaigns<T>(Map<String, Object> params) =>
      _api.request<T>('ads.getCampaigns', params);

  /// Returns a list of possible ad categories.
  Future<ApiResponse<T>> getCategories<T>(Map<String, Object> params) =>
      _api.request<T>('ads.getCategories', params);

  /// Returns a list of advertising agency's clients.
  Future<ApiResponse<T>> getClients<T>(Map<String, Object> params) =>
      _api.request<T>('ads.getClients', params);

  /// Returns demographics for ads or campaigns.
  Future<ApiResponse<T>> getDemographics<T>(Map<String, Object> params) =>
      _api.request<T>('ads.getDemographics', params);

  /// Returns information about current state of a counter — number of remaining
  ///  runs of methods and time to the next counter nulling in seconds.
  Future<ApiResponse<T>> getFloodStats<T>(Map<String, Object> params) =>
      _api.request<T>('ads.getFloodStats', params);

  /// Returns a list of search queries for a similar audience.
  Future<ApiResponse<T>> getLookalikeRequests<T>(Map<String, Object> params) =>
      _api.request<T>('ads.getLookalikeRequests', params);

  /// Returns information about the musicians whose listeners are targeted.
  Future<ApiResponse<T>> getMusicians<T>(Map<String, Object> params) =>
      _api.request<T>('ads.getMusicians', params);

  /// Returns information about musicians to listeners for whom targeting is available.
  Future<ApiResponse<T>> getMusiciansByIds<T>(Map<String, Object> params) =>
      _api.request<T>('ads.getMusiciansByIds', params);

  /// Returns a list of managers and supervisors of advertising account.
  Future<ApiResponse<T>> getOfficeUsers<T>(Map<String, Object> params) =>
      _api.request<T>('ads.getOfficeUsers', params);

  /// Returns detailed statistics of promoted posts reach from campaigns and ads.
  Future<ApiResponse<T>> getPostsReach<T>(Map<String, Object> params) =>
      _api.request<T>('ads.getPostsReach', params);

  /// Returns a reason of ad rejection for pre-moderation.
  Future<ApiResponse<T>> getRejectionReason<T>(Map<String, Object> params) =>
      _api.request<T>('ads.getRejectionReason', params);

  /// Returns statistics of performance indicators for ads, campaigns, clients
  ///  or the whole account.
  Future<ApiResponse<T>> getStatistics<T>(Map<String, Object> params) =>
      _api.request<T>('ads.getStatistics', params);

  /// Returns a set of auto-suggestions for various targeting parameters.
  Future<ApiResponse<T>> getSuggestions<T>(Map<String, Object> params) =>
      _api.request<T>('ads.getSuggestions', params);

  /// Returns a list of target groups.
  Future<ApiResponse<T>> getTargetGroups<T>(Map<String, Object> params) =>
      _api.request<T>('ads.getTargetGroups', params);

  /// Returns a list of retargeting pixels.
  Future<ApiResponse<T>> getTargetPixels<T>(Map<String, Object> params) =>
      _api.request<T>('ads.getTargetPixels', params);

  /// Returns the size of targeting audience, and also recommended values for
  ///  CPC and CPM.
  Future<ApiResponse<T>> getTargetingStats<T>(Map<String, Object> params) =>
      _api.request<T>('ads.getTargetingStats', params);

  /// Returns URL to upload an ad photo to.
  Future<ApiResponse<T>> getUploadURL<T>(Map<String, Object> params) =>
      _api.request<T>('ads.getUploadURL', params);

  /// Returns URL to upload an ad video to.
  Future<ApiResponse<T>> getVideoUploadURL<T>(Map<String, Object> params) =>
      _api.request<T>('ads.getVideoUploadURL', params);

  /// Imports a list of advertiser's contacts to count VK registered users again
  /// st the target group.
  Future<ApiResponse<T>> importTargetContacts<T>(Map<String, Object> params) =>
      _api.request<T>('ads.importTargetContacts', params);

  /// Removes managers and/or supervisors from advertising account.
  Future<ApiResponse<T>> removeOfficeUsers<T>(Map<String, Object> params) =>
      _api.request<T>('ads.removeOfficeUsers', params);

  /// Accepts a request to exclude the advertiser's contacts from the retargeting audience.
  Future<ApiResponse<T>> removeTargetContacts<T>(Map<String, Object> params) =>
      _api.request<T>('ads.removeTargetContacts', params);

  /// Saves the search result for a similar audience.
  Future<ApiResponse<T>> saveLookalikeRequestResult<T>(
    Map<String, Object> params,
  ) =>
      _api.request<T>('ads.saveLookalikeRequestResult', params);

  /// Provides access to the retargeting audience to another advertising account.
  Future<ApiResponse<T>> shareTargetGroup<T>(Map<String, Object> params) =>
      _api.request<T>('ads.shareTargetGroup', params);

  /// Edits ads.
  Future<ApiResponse<T>> updateAds<T>(Map<String, Object> params) =>
      _api.request<T>('ads.updateAds', params);

  /// Edits advertising campaigns.
  Future<ApiResponse<T>> updateCampaigns<T>(Map<String, Object> params) =>
      _api.request<T>('ads.updateCampaigns', params);

  /// Edits clients of an advertising agency.
  Future<ApiResponse<T>> updateClients<T>(Map<String, Object> params) =>
      _api.request<T>('ads.updateClients', params);

  /// Adds managers and/or supervisors to advertising account.
  Future<ApiResponse<T>> updateOfficeUsers<T>(Map<String, Object> params) =>
      _api.request<T>('ads.updateOfficeUsers', params);

  /// Edits a retarget group.
  Future<ApiResponse<T>> updateTargetGroup<T>(Map<String, Object> params) =>
      _api.request<T>('ads.updateTargetGroup', params);

  /// Edits the retargeting pixel.
  Future<ApiResponse<T>> updateTargetPixel<T>(Map<String, Object> params) =>
      _api.request<T>('ads.updateTargetPixel', params);
}
