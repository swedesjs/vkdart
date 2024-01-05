// ignore_for_file: unnecessary_lambdas

import 'package:vkdart/events.dart';
import 'package:vkdart/vkdart.dart';

Future<void> main() async {
  final vkDart = VkDart(token: '');

  final callback = Callback(vkDart.getApi());

  // ignore: cascade_invocations
  callback.subscribe((event) {
    // ....
    // event - VK server response
  });

  await callback.start(port: 80);
}
