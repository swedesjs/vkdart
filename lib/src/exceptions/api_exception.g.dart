// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_exception.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiException _$ApiExceptionFromJson(Map<String, dynamic> json) => ApiException(
      code: json['error_code'] as int,
      message: json['error_msg'] as String,
      requestParams: (json['request_params'] as List<dynamic>)
          .map((e) => RequestParams.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ApiExceptionToJson(ApiException instance) =>
    <String, dynamic>{
      'error_code': instance.code,
      'error_msg': instance.message,
      'request_params': instance.requestParams.map((e) => e.toJson()).toList(),
    };

RequestParams _$RequestParamsFromJson(Map<String, dynamic> json) =>
    RequestParams(
      key: json['key'] as String,
      value: json['value'] as Object,
    );

Map<String, dynamic> _$RequestParamsToJson(RequestParams instance) =>
    <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
    };
