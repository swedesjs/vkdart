// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ads_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$AdsApiUserSpecificationToJson(
        AdsApiUserSpecification instance) =>
    <String, dynamic>{
      'user_id': instance.userId,
      'role': _$AdsApiUserSpecificationRoleEnumMap[instance.role]!,
      'client_id': instance.clientId,
      'view_budget': AdsApiUserSpecification._boolToInt(instance.viewBudget),
    };

const _$AdsApiUserSpecificationRoleEnumMap = {
  AdsApiUserSpecificationRole.manager: 'manager',
  AdsApiUserSpecificationRole.reports: 'reports',
};

AdsApiCheckLinkResponse _$AdsApiCheckLinkResponseFromJson(
        Map<String, dynamic> json) =>
    AdsApiCheckLinkResponse(
      status:
          $enumDecode(_$AdsApiCheckLinkResponseStatusEnumMap, json['status']),
      description: json['description'] as String?,
      redirectUrl: json['redirect_url'] as String?,
    );

Map<String, dynamic> _$AdsApiCheckLinkResponseToJson(
        AdsApiCheckLinkResponse instance) =>
    <String, dynamic>{
      'status': _$AdsApiCheckLinkResponseStatusEnumMap[instance.status]!,
      'description': instance.description,
      'redirect_url': instance.redirectUrl,
    };

const _$AdsApiCheckLinkResponseStatusEnumMap = {
  AdsApiCheckLinkResponseStatus.allowed: 'allowed',
  AdsApiCheckLinkResponseStatus.disallowed: 'disallowed',
  AdsApiCheckLinkResponseStatus.inProgress: 'in_progress',
};
