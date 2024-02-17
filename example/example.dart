import 'package:vkdart/vkdart.dart';

void main() async {
  // Group ID is indicated if Longpoll API is used
  // if the fetcher parameter is not specified, Longpoll will be used by default
  final vkdart = VkDart('accessToken', groupId: 123);

  // Use callback API
  // final webhook = await Webhook.createHttpServer(
  //  secretKey: 'mySecretKey',
  //  confirmation: 'confirmationCode',
  // );
  //
  // final vkdart = VkDart('accessToken', event: Event(), fetcher: webhook);

  // message_new, message_edit, message_reply
  vkdart.onMessage().where((event) => event.isUser).listen((event) {
    vkdart.request('messages.send', {
      'peer_id': 1,
      'message': 'Hello world!',
      'random_id': 0,
    });
  });

  // ignore: avoid_print
  await vkdart.start().then((_) => print('Longpoll API run!'));

  // use API
  // await vkdart.request('groups.getById', {'group_id': 1}); // List<Map<String, dynamic>>
}
