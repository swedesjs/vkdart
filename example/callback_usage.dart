// ignore_for_file: unnecessary_lambdas, cascade_invocations, avoid_print, discarded_futures

import 'package:vkdart/events.dart';
import 'package:vkdart/vkdart.dart';

void main() {
  final vk = VkDart(token: '');
  final callback = Callback(vk.getApi());

  callback.subscribe(
    (event) {
      if (event['type'] == 'message_new') {
        print('new message!');
      }
    },
    errorHandler: (error) {
      print('new error: $error');
    },
  );

  callback.start().then((_) => print('CallbackAPI run!'));
}
