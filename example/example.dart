// ignore_for_file: prefer_const_declarations, avoid_dynamic_calls, avoid_print

import 'package:vkdart/vkdart.dart';

void main() async {
  // Group ID is indicated if Longpoll API is used
  // if the fetcher parameter is not specified, Longpoll will be used by default
  final vkdart = VkDart('accessToken', groupId: 123);

  // Use callback
  // final callback = Callback(
  //  secretKey: 'mySecretKey', // optional
  //  confirmationHandler: (_) async => 'confirimationCode',
  //  );
  // final vkdart = VkDart('accessToken', Event(), fetcher: callback);

  vkdart.onMessage().listen((event) {
    print('new message!');
    print('message text: ${event.object['message']['text']}');
  });

  await vkdart.start().then((_) => print('Longpoll API run!'));

  // use API
  // await vkdart.users.get({'user_id': 'durov'});
}
