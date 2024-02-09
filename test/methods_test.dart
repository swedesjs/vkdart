import 'package:dotenv/dotenv.dart';
import 'package:shouldly/shouldly.dart';
import 'package:test/test.dart';
import 'package:vkdart/vkdart.dart';
import 'package:vkdart/vkontakte.dart';

void main() {
  final env = DotEnv(includePlatformEnvironment: true)..load();
  final vkdart = VkDart(env['TOKEN']!, groupId: int.parse(env['GROUP_ID']!));

  group('Testing methods VK', () {
    group('check `request` function', () {
      test('should produce a positive result', () async {
        final dataUser =
            await vkdart.request('users.get', {'user_id': 'durov'});

        dataUser.should.beOfType<List<dynamic>>();
      });

      test('should display an error', () async {
        await Should.throwAsync<ApiException>(
          () => vkdart.request('users.report', {}),
        );
      });
    });
    group('check functionality of the created interfaces.', () {
      test('should produce a positive result', () async {
        final dataUser = await vkdart.users.get({'user_id': 'durov'});

        dataUser.should.beOfType<List<dynamic>>();
      });
      test('should display an error', () async {
        await Should.throwAsync(() => vkdart.users.report({}));
      });
    });
  });
}
