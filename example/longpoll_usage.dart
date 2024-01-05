// ignore_for_file: unnecessary_lambdas

import 'package:vkdart/events.dart';
import 'package:vkdart/vkdart.dart';

Future<void> main() async {
  final vkDart = VkDart(token: '');

  // to receive community events, specify the  groupId parameter
  final longpoll = Longpoll(vkDart.getApi());

  await longpoll.start();

  longpoll.subscribe((event) {
    // ....
    // event - VK server response
  });
}
