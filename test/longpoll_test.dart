import 'dart:async';
import 'dart:io';

import 'package:test/test.dart';
import 'package:vkdart/vkdart.dart';
import 'package:vkdart/vkontakte.dart';

class _FakeVkontakte extends Vkontakte {
  _FakeVkontakte(this.onRequest)
      : super(token: 'token', language: LangApi.ru, version: '5.131');

  final Future<Object> Function(String methodName) onRequest;
  var serverRequests = 0;

  @override
  Future<Object> request(
    String methodName, [
    Map<String, dynamic> body = const {},
  ]) {
    serverRequests++;
    return onRequest(methodName);
  }
}

void main() {
  group('Longpoll', () {
    test('updates timestamp and server URL during recovery', () async {
      final thirdPollStarted = Completer<void>();
      final pendingPoll = Completer<dynamic>();
      final urls = <String>[];
      final bodies = <Map<String, dynamic>>[];
      var serverNumber = 0;

      final vkontakte = _FakeVkontakte((_) async {
        serverNumber++;
        return {
          'server': 'https://poll-$serverNumber.example',
          'key': 'key-$serverNumber',
          'ts': '10',
        };
      });
      final fetcher = Longpoll(
        123,
        retryDelay: Duration.zero,
        request: (url, {body}) async {
          urls.add(url);
          bodies.add(body!);
          if (urls.length == 1) return {'failed': 1, 'ts': '11'};
          if (urls.length == 2) return {'failed': 2};
          if (urls.length == 3) {
            thirdPollStarted.complete();
            return pendingPoll.future;
          }
          fail('Unexpected poll request');
        },
      )..vkontakte = vkontakte;

      await fetcher.start();
      await thirdPollStarted.future.timeout(const Duration(seconds: 1));

      expect(urls, [
        'https://poll-1.example',
        'https://poll-1.example',
        'https://poll-2.example',
      ]);
      expect(bodies[1]['ts'], 11);
      expect(bodies[2]['ts'], 11);
      expect(bodies[2]['key'], 'key-2');

      await fetcher.stop();
      pendingPoll.complete({'ts': '12', 'updates': []});
      await Future<void>.delayed(Duration.zero);
      expect(urls, hasLength(3));

      await fetcher.dispose();
    });

    test('retries server initialization and surfaces the final error',
        () async {
      var attempts = 0;
      final vkontakte = _FakeVkontakte((_) async {
        attempts++;
        throw const SocketException('network unavailable');
      });
      final fetcher = Longpoll(
        123,
        maxRetries: 2,
        retryDelay: Duration.zero,
      )..vkontakte = vkontakte;

      await expectLater(fetcher.start(), throwsA(isA<LongpollException>()));

      expect(attempts, 3);
      expect(fetcher.isStart, isFalse);
      await fetcher.dispose();
    });

    test('emits an error after poll retries are exhausted', () async {
      var pollAttempts = 0;
      final vkontakte = _FakeVkontakte((_) async => {
            'server': 'https://poll.example',
            'key': 'key',
            'ts': '10',
          });
      final fetcher = Longpoll(
        123,
        maxRetries: 1,
        retryDelay: Duration.zero,
        request: (_, {body}) async {
          pollAttempts++;
          throw const SocketException('network unavailable');
        },
      )..vkontakte = vkontakte;
      final errorReceived = Completer<Object>();

      fetcher.onUpdate().listen(
            (_) {},
            onError: (Object error, StackTrace _) =>
                errorReceived.complete(error),
          );

      await fetcher.start();
      final error =
          await errorReceived.future.timeout(const Duration(seconds: 1));

      expect(error, isA<LongpollException>());
      expect(pollAttempts, 2);
      expect(vkontakte.serverRequests, 2);
      expect(fetcher.isStart, isFalse);

      await fetcher.dispose();
    });
  });
}
