import 'package:vkdart/vkdart.dart';

void main() async {
  const groupId = 123456;
  final vkdart = VkDart('accessToken', fetcher: Longpoll(groupId));

  // Use callback API
  // final webhook = await Webhook.createHttpServer(
  //  secretKey: 'mySecretKey',
  //  confirmation: 'confirmationCode',
  // );
  //
  // final vkdart = VkDart('accessToken', fetcher: webhook);

  // message_new, message_edit, message_reply
  vkdart.onMessage().where((event) => event.isUser).listen((event) {
    vkdart.request('messages.send', {
      'peer_id': event.peerId,
      'message': 'Hello world!',
      'random_id': 0,
    });
  });

  // ignore: avoid_print
  await vkdart.start().then((_) => print('Longpoll API started!'));

  // use API
  // await vkdart.request('groups.getById', {'group_id': 1}); // List<Map<String, dynamic>>
}
