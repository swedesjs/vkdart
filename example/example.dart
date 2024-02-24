import 'package:vkdart/vkdart.dart';

void main() async {
  const groupId = 123456;
  final myFetcher = Longpoll(groupId);

  // Use callback API
  // final myFetcher = await Webhook.createHttpServer(
  //  secretKey: 'mySecretKey',
  //  confirmation: 'confirmationCode',
  // );

  final vkdart = VkDart('accessToken', fetcher: myFetcher);

  // message_new, message_edit, message_reply
  vkdart
      .onMessage()
      .where((event) => event.isUser)
      .listen((event) => event.sendMessage(message: 'hello world!'));

  // ignore: avoid_print
  await vkdart.start().then((_) => print('Longpoll API started!'));

  // use API
  // await vkdart.request('groups.getById', {'group_id': 1}); // List<Map<String, dynamic>>
}
