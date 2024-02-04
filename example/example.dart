// ignore_for_file: prefer_const_declarations, avoid_print

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

  // message_new, message_edit, message_reply
  vkdart.onMessage().where((event) => event.isNew).listen((event) {
    print('A new message has arrived!\n\n'
        'From ID: ${event.senderId}\n'
        'From Type: ${event.senderType.name}\n'
        'Dialog ID: ${event.peerId}\n'
        'Dialog Type: ${event.peerType.name}\n'
        'Outbox: ${event.isOutbox}');
  });

  // message_event
  vkdart.onMessageEvent().listen((event) {
    print('The user clicked on the Callback button!\n'
        'Dialog ID: ${event.peerId}\n'
        'UserID: ${event.userId}'
        '${event.eventPayload != null ? '\nPayload: ${event.eventPayload}' : ''}'
        '\nEventID: ${event.eventId}');
  });

  vkdart.onUnsupportedEvent().listen((event) {
    print('An unsupported event has arrived!\n'
        'It is necessary to inform the chat https://t.me/vk_dart\n\n'
        'Type of event ${event.eventType}\n'
        'Event Object: ${event.object}');
  });

  vkdart
      .onComment()
      .where((event) => event.isPhotoComment && event.isNew)
      .listen((event) {
    print('Commented on the photo!\n\n'
        'Owner ID: ${event.ownerId}\n'
        'Photo ID: ${event.objectId}'
        '${event.attachments.isNotEmpty ? '\nAttachments: ${event.attachments}' : ''}');
  });

  await vkdart.start().then((_) => print('Longpoll API run!'));

  // use API
  // await vkdart.users.get({'user_id': 'durov'});
}
