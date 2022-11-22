import 'package:vkdart/vkdart.dart';

void main() async {
  var vk = VkDart(token: '');
  var api = vk.getApi();

  var response = await api.users.get({'user_id': 1});

  /// Second way
  var response2 = await api.request('users.get', {'user_id': 1});

  print(response);
  print(response2);
}
