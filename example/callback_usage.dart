// ignore_for_file: unnecessary_lambdas, cascade_invocations, avoid_print, discarded_futures, avoid_dynamic_calls

import 'package:vkdart/events.dart';
import 'package:vkdart/vkdart.dart';

void main() async {
  final vk = VkDart(token: '');
  final api = vk.getApi();

  final callback = Callback(
    secretKey: 'mySecretKey', // optional
    confirmationHandler: (groupId) async {
      final response =
          await api.groups.getCallbackConfirmationCode<Map<String, dynamic>>({
        'group_id': groupId,
      });

      return response.data['code'];
    },
  );

  callback.updates.listen((event) {
    if (event.type == UpdateType.message_new) {
      print('new message!');
      print('message text: ${event.object['message']['text']}');
    }
  });

  await callback.start().then((_) => print('Callback API run!'));
}
