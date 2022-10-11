import 'api.dart';

class VkDart {
  final String token;

  VkDart({required this.token});

  API getApi() => API();
}
