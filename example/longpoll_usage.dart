// ignore_for_file: unnecessary_lambdas

import 'package:vkdart/vkdart.dart';

Future<void> main() async {
  final vkDart = VkDart(token: '');
  final userLongpoll = UserLongpoll(vkDart.getApi());

  await userLongpoll.start();
  userLongpoll.onEvent().listen((event) {
    // ...
  });

  final groupLongpoll = GroupLogpoll(0, vkDart.getApi());

  await groupLongpoll.start();
  groupLongpoll.onEvent().listen((event) {
    // ..
  });
}
