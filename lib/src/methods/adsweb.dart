// ignore_for_file: public_member_api_docs

import 'package:vkdart/src/api.dart';

class Adsweb {
  Adsweb(this._api);
  final Api _api;

  Future<Map<String, dynamic>> getAdCategories(Map<String, Object> params) =>
      _api.request('adsweb.getAdCategories', params);

  Future<Map<String, dynamic>> getAdUnitCode(Map<String, Object> params) =>
      _api.request('adsweb.getAdUnitCode', params);

  Future<Map<String, dynamic>> getAdUnits(Map<String, Object> params) =>
      _api.request('adsweb.getAdUnits', params);

  Future<Map<String, dynamic>> getFraudHistory(Map<String, Object> params) =>
      _api.request('adsweb.getFraudHistory', params);

  Future<Map<String, dynamic>> getSites(Map<String, Object> params) =>
      _api.request('adsweb.getSites', params);

  Future<Map<String, dynamic>> getStatistics(Map<String, Object> params) =>
      _api.request('adsweb.getStatistics', params);
}
