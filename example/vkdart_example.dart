import 'package:vkdart/vkdart.dart';

void main() async {
  final vk = VkDart(token: '');
  final api = vk.getApi();

  await api.users.get({'user_id': 1});

  await api.request('users.get', {'user_id': 1});
}
