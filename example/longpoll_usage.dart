// ignore_for_file: unnecessary_lambdas, avoid_print, avoid_dynamic_calls, discarded_futures, cascade_invocations, prefer_const_declarations

import 'package:vkdart/events.dart';
import 'package:vkdart/vkdart.dart';

void main() {
  final groupId = 1;

  final vk = VkDart(token: '');
  final longpoll = Longpoll(vk.getApi(), groupId: groupId);

  longpoll.subscribe((event) {
    /* event is Map<String, dynamic> and List<dynamic> */

    if (event['type'] == 'message_new') {
      print('new message!');
    }
  });

  longpoll.start().then((_) => print('Polling start!'));
}
