import 'package:vkdart/vkontakte.dart';

/// Methods for working with audio recordings.
///
/// See https://dev.vk.com/ru/method/asr
class Asr {
  // ignore: public_member_api_docs
  Asr(this._api);
  final Api _api;

  /// The method checks the status of the audio recording processing task and returns a text transcript of the audio recording.
  Future<Object> checkStatus(Map<String, dynamic> params) =>
      _api.request('asr.checkStatus', params);

  /// This returns a link to the server address to download the audio recording.
  Future<Object> getUploadUrl(Map<String, dynamic> params) =>
      _api.request('asr.getUploadUrl', params);

  /// The method performs speech recognition from the uploaded audio recording file.
  Future<Object> process(Map<String, dynamic> params) =>
      _api.request('asr.process', params);
}
