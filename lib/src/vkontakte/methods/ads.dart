import 'package:vkdart/vkontakte.dart';

/// Methods for working with advertising.
///
/// See https://dev.vk.com/ru/method/ads
class Ads {
  // ignore: public_member_api_docs
  Ads(this._api);
  final Api _api;

  /// Adds managers and/or supervisors to advertising account.
  Future<Object> addOfficeUsers(Map<String, dynamic> params) =>
      _api.request('ads.addOfficeUsers', params);

  /// Allows to check the ad link.
  Future<Object> checkLink(Map<String, dynamic> params) =>
      _api.request('ads.checkLink', params);

  /// Creates ads.
  Future<Object> createAds(Map<String, dynamic> params) =>
      _api.request('ads.createAds', params);

  /// Creates advertising campaigns.
  Future<Object> createCampaigns(Map<String, dynamic> params) =>
      _api.request('ads.createCampaigns', params);

  /// Creates clients of an advertising agency.
  Future<Object> createClients(Map<String, dynamic> params) =>
      _api.request('ads.createClients', params);

  /// Creates a query to find similar audiences.
  Future<Object> createLookalikeRequest(Map<String, dynamic> params) =>
      _api.request('ads.createLookalikeRequest', params);

  /// Creates a group to re-target ads for users who visited advertiser's site
  /// (viewed information about the product, registered, etc.).
  Future<Object> createTargetGroup(Map<String, dynamic> params) =>
      _api.request('ads.createTargetGroup', params);

  /// Creates a retargeting pixel.
  Future<Object> createTargetPixel(Map<String, dynamic> params) =>
      _api.request('ads.createTargetPixel', params);

  /// Archives ads.
  Future<Object> deleteAds(Map<String, dynamic> params) =>
      _api.request('ads.deleteAds', params);

  /// Archives advertising campaigns.
  Future<Object> deleteCampaigns(Map<String, dynamic> params) =>
      _api.request('ads.deleteCampaigns', params);

  /// Archives clients of an advertising agency.
  Future<Object> deleteClients(Map<String, dynamic> params) =>
      _api.request('ads.deleteClients', params);

  /// Deletes a retarget group.
  Future<Object> deleteTargetGroup(Map<String, dynamic> params) =>
      _api.request('ads.deleteTargetGroup', params);

  /// Removes the retargeting pixel.
  Future<Object> deleteTargetPixel(Map<String, dynamic> params) =>
      _api.request('ads.deleteTargetPixel', params);

  /// Returns a list of advertising accounts.
  Future<Object> getAccounts(Map<String, dynamic> params) =>
      _api.request('ads.getAccounts', params);

  /// Returns number of ads.
  Future<Object> getAds(Map<String, dynamic> params) =>
      _api.request('ads.getAds', params);

  /// Returns descriptions of ad layouts.
  Future<Object> getAdsLayout(Map<String, dynamic> params) =>
      _api.request('ads.getAdsLayout', params);

  /// Returns detailed information about the coverage of advertising records.
  Future<Object> getAdsPostsReach(Map<String, dynamic> params) =>
      _api.request('ads.getAdsPostsReach', params);

  /// Returns ad targeting parameters.
  Future<Object> getAdsTargeting(Map<String, dynamic> params) =>
      _api.request('ads.getAdsTargeting', params);

  /// Returns current budget of the advertising account.
  Future<Object> getBudget(Map<String, dynamic> params) =>
      _api.request('ads.getBudget', params);

  /// Returns a list of campaigns in an advertising account.
  Future<Object> getCampaigns(Map<String, dynamic> params) =>
      _api.request('ads.getCampaigns', params);

  /// Returns a list of possible ad categories.
  Future<Object> getCategories(Map<String, dynamic> params) =>
      _api.request('ads.getCategories', params);

  /// Returns a list of advertising agency's clients.
  Future<Object> getClients(Map<String, dynamic> params) =>
      _api.request('ads.getClients', params);

  /// Returns demographics for ads or campaigns.
  Future<Object> getDemographics(Map<String, dynamic> params) =>
      _api.request('ads.getDemographics', params);

  /// Returns information about current state of a counter — number of remaining
  ///  runs of methods and time to the next counter nulling in seconds.
  Future<Object> getFloodStats(Map<String, dynamic> params) =>
      _api.request('ads.getFloodStats', params);

  /// Returns a list of search queries for a similar audience.
  Future<Object> getLookalikeRequests(Map<String, dynamic> params) =>
      _api.request('ads.getLookalikeRequests', params);

  /// Returns information about the musicians whose listeners are targeted.
  Future<Object> getMusicians(Map<String, dynamic> params) =>
      _api.request('ads.getMusicians', params);

  /// Returns information about musicians to listeners for whom targeting is available.
  Future<Object> getMusiciansByIds(Map<String, dynamic> params) =>
      _api.request('ads.getMusiciansByIds', params);

  /// Returns a list of managers and supervisors of advertising account.
  Future<Object> getOfficeUsers(Map<String, dynamic> params) =>
      _api.request('ads.getOfficeUsers', params);

  /// Returns detailed statistics of promoted posts reach from campaigns and ads.
  Future<Object> getPostsReach(Map<String, dynamic> params) =>
      _api.request('ads.getPostsReach', params);

  /// Returns a reason of ad rejection for pre-moderation.
  Future<Object> getRejectionReason(Map<String, dynamic> params) =>
      _api.request('ads.getRejectionReason', params);

  /// Returns statistics of performance indicators for ads, campaigns, clients
  ///  or the whole account.
  Future<Object> getStatistics(Map<String, dynamic> params) =>
      _api.request('ads.getStatistics', params);

  /// Returns a set of auto-suggestions for various targeting parameters.
  Future<Object> getSuggestions(Map<String, dynamic> params) =>
      _api.request('ads.getSuggestions', params);

  /// Returns a list of target groups.
  Future<Object> getTargetGroups(Map<String, dynamic> params) =>
      _api.request('ads.getTargetGroups', params);

  /// Returns a list of retargeting pixels.
  Future<Object> getTargetPixels(Map<String, dynamic> params) =>
      _api.request('ads.getTargetPixels', params);

  /// Returns the size of targeting audience, and also recommended values for
  ///  CPC and CPM.
  Future<Object> getTargetingStats(Map<String, dynamic> params) =>
      _api.request('ads.getTargetingStats', params);

  /// Returns URL to upload an ad photo to.
  Future<Object> getUploadURL(Map<String, dynamic> params) =>
      _api.request('ads.getUploadURL', params);

  /// Returns URL to upload an ad video to.
  Future<Object> getVideoUploadURL(Map<String, dynamic> params) =>
      _api.request('ads.getVideoUploadURL', params);

  /// Imports a list of advertiser's contacts to count VK registered users again
  /// st the target group.
  Future<Object> importTargetContacts(Map<String, dynamic> params) =>
      _api.request('ads.importTargetContacts', params);

  /// Removes managers and/or supervisors from advertising account.
  Future<Object> removeOfficeUsers(Map<String, dynamic> params) =>
      _api.request('ads.removeOfficeUsers', params);

  /// Accepts a request to exclude the advertiser's contacts from the retargeting audience.
  Future<Object> removeTargetContacts(Map<String, dynamic> params) =>
      _api.request('ads.removeTargetContacts', params);

  /// Saves the search result for a similar audience.
  Future<Object> saveLookalikeRequestResult(Map<String, dynamic> params) =>
      _api.request('ads.saveLookalikeRequestResult', params);

  /// Provides access to the retargeting audience to another advertising account.
  Future<Object> shareTargetGroup(Map<String, dynamic> params) =>
      _api.request('ads.shareTargetGroup', params);

  /// Edits ads.
  Future<Object> updateAds(Map<String, dynamic> params) =>
      _api.request('ads.updateAds', params);

  /// Edits advertising campaigns.
  Future<Object> updateCampaigns(Map<String, dynamic> params) =>
      _api.request('ads.updateCampaigns', params);

  /// Edits clients of an advertising agency.
  Future<Object> updateClients(Map<String, dynamic> params) =>
      _api.request('ads.updateClients', params);

  /// Adds managers and/or supervisors to advertising account.
  Future<Object> updateOfficeUsers(Map<String, dynamic> params) =>
      _api.request('ads.updateOfficeUsers', params);

  /// Edits a retarget group.
  Future<Object> updateTargetGroup(Map<String, dynamic> params) =>
      _api.request('ads.updateTargetGroup', params);

  /// Edits the retargeting pixel.
  Future<Object> updateTargetPixel(Map<String, dynamic> params) =>
      _api.request('ads.updateTargetPixel', params);
}
