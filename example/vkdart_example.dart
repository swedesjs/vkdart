// ignore_for_file: prefer_const_declarations, avoid_dynamic_calls, avoid_print

import 'package:vkdart/vkdart.dart';

void main() async {
  final accessToken = ''; // Group Token, User Token.
  final vk = VkDart(token: accessToken);
  final api = vk.getApi();

  final user = await api.users.get({'user_id': 'durov'});

  final name = user.data[0]['first_name'];
  // surname
  final surname = user.data[0]['last_name'];

  print('User details: Name = $name, Surname = $surname');
}
