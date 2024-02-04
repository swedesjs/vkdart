import 'package:vkdart/vkontakte.dart';

/// Methods for working with audio recordings.
///
/// See https://dev.vk.com/ru/method/asr
class Asr {
  // ignore: public_member_api_docs
  Asr(this._api);
  final Api _api;

  /// The method checks the status of the audio recording processing task and returns a text transcript of the audio recording.
  Future<ApiResponse<T>> checkStatus<T>(Map<String, Object> params) =>
      _api.request<T>('asr.checkStatus', params);

  /// This returns a link to the server address to download the audio recording.
  Future<ApiResponse<T>> getUploadUrl<T>(Map<String, Object> params) =>
      _api.request<T>('asr.getUploadUrl', params);

  /// The method performs speech recognition from the uploaded audio recording file.
  Future<ApiResponse<T>> process<T>(Map<String, Object> params) =>
      _api.request<T>('asr.process', params);
}
