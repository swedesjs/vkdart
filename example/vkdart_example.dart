import 'package:vkdart/vkdart.dart';

void main() async {
  var vk = VkDart(token: '');
  var api = vk.getApi();

  var response = await api.request('users.get', {});

  print(response);
}
