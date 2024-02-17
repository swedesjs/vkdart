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
        final users = await vkdart.request('users.get', {'user_id': 'durov'});

        users.should.beOfType<List<dynamic>>();
      });

      test('should display an error', () async {
        await Should.throwAsync<ApiException>(
            () => vkdart.request('users.report', {}));
      });
    });
  });
}
