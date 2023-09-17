import 'package:vkdart/vkdart.dart';

void main() {
  final vkDart = VkDart(token: "");
  final userLongpoll = UserLongpoll(vkDart.getApi());

  userLongpoll
    ..start()
    ..onEvent().listen((event) {
      print(event);
    });

  final groupLongpoll = GroupLogpoll(0, vkDart.getApi());

  groupLongpoll
    ..start()
    ..onEvent().listen((event) {
      print(event);
    });
}
