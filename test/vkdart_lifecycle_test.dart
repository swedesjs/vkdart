import 'package:test/test.dart';
import 'package:vkdart/model.dart';
import 'package:vkdart/vkdart.dart';

class _FakeFetcher extends AbstractUpdateFetcher {
  bool isRunning = false;
  bool failStart = false;

  @override
  Future<void> start() async {
    if (failStart || isRunning) {
      throw StateError('Cannot start');
    }
    isRunning = true;
  }

  @override
  Future<void> stop() async {
    isRunning = false;
  }

  void emitUnknownUpdate() {
    emitUpdate(VkDartUpdate({'type': 'unsupported'}));
  }
}

void main() {
  group('VkDart lifecycle', () {
    test('stop and restart do not duplicate update dispatch', () async {
      final fetcher = _FakeFetcher();
      final vkdart = VkDart('token', fetcher: fetcher);
      var updateCount = 0;
      final subscription =
          vkdart.onUnsupportedEvent().listen((_) => updateCount++);

      await vkdart.start();
      fetcher.emitUnknownUpdate();
      await Future<void>.delayed(Duration.zero);
      expect(updateCount, 1);

      await vkdart.stop();
      fetcher.emitUnknownUpdate();
      await Future<void>.delayed(Duration.zero);
      expect(updateCount, 1);

      await vkdart.start();
      fetcher.emitUnknownUpdate();
      await Future<void>.delayed(Duration.zero);
      expect(updateCount, 2);

      await vkdart.dispose();
      await subscription.cancel();
    });

    test('failed start does not leave an update subscription attached',
        () async {
      final fetcher = _FakeFetcher()..failStart = true;
      final vkdart = VkDart('token', fetcher: fetcher);
      var updateCount = 0;
      final subscription =
          vkdart.onUnsupportedEvent().listen((_) => updateCount++);

      await expectLater(vkdart.start(), throwsA(isA<StateError>()));

      fetcher.failStart = false;
      await vkdart.start();
      fetcher.emitUnknownUpdate();
      await Future<void>.delayed(Duration.zero);
      expect(updateCount, 1);

      await vkdart.dispose();
      await subscription.cancel();
    });

    test('dispose closes event streams and prevents restart', () async {
      final vkdart = VkDart('token', fetcher: _FakeFetcher());
      final streamClosed = expectLater(vkdart.onUnsupportedEvent(), emitsDone);

      await vkdart.dispose();
      await streamClosed;

      await expectLater(vkdart.start(), throwsA(isA<StateError>()));
    });
  });
}
