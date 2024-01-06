import 'package:dotenv/dotenv.dart';
import 'package:shouldly/shouldly.dart';
import 'package:test/test.dart';
import 'package:vkdart/vkdart.dart';

void main() {
  final env = DotEnv()..load();
  final vk = VkDart(token: env['TOKEN']!);
  final api = vk.getApi();

  group('Testing methods VK', () {
    group('check `request` function', () {
      test('should produce a positive result', () async {
        final dataUser =
            await api.request<List<dynamic>>('users.get', {'user_id': 'durov'});

        dataUser
          ..data.length.should.be(1)
          ..requestOptions
              .should
              .be({'lang': 0, 'v': '5.131', 'user_id': 'durov'});
      });

      test('should display an error', () async {
        await Should.throwAsync<ApiException>(
          () => api.request('users.report', {}),
        );
      });
    });
    group('check functionality of the created interfaces.', () {
      test('should produce a positive result', () async {
        final dataUser =
            await api.users.get<List<dynamic>>({'user_id': 'durov'});

        dataUser
          ..data.length.should.be(1)
          ..requestOptions
              .should
              .be({'lang': 0, 'v': '5.131', 'user_id': 'durov'});
      });
      test('should display an error', () async {
        await Should.throwAsync(() => api.users.report({}));
      });
    });
  });
}
