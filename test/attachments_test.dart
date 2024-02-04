import 'package:shouldly/shouldly.dart';
import 'package:test/test.dart';
import 'package:vkdart/vkontakte.dart';

void main() {
  group('Testing attachments', () {
    final photoCustomAttachment = CustomAttachmentModel(
        {'owner_id': 1, 'id': 2, 'access_key': 'ACCESS_KEY'},
        attachType: 'photo');

    final photoAttachmentNative = PhotoAttachmentModel(
        {'owner_id': 1, 'id': 2, 'access_key': 'ACCESS_KEY'});

    test('Testing photo attachment', () {
      photoCustomAttachment
        ..attachType.should.be('photo')
        ..ownerId.should.be(1)
        ..id.should.be(2)
        ..accessKey.should.be('ACCESS_KEY')
        ..toString().should.be('photo1_2_ACCESS_KEY');

      photoAttachmentNative
        ..attachType.should.be('photo')
        ..ownerId.should.be(1)
        ..id.should.be(2)
        ..accessKey.should.be('ACCESS_KEY')
        ..toString().should.be('photo1_2_ACCESS_KEY');
    });

    group('Testing function #fromString', () {
      test('should produce a positive result', () {
        CustomAttachmentModel.fromString('photo-1_2_ACCESS_KEY')
          ..ownerId.should.be(-1)
          ..id.should.be(2)
          ..accessKey.should.be('ACCESS_KEY')
          ..toString().should.be('photo-1_2_ACCESS_KEY');
      });

      test('should be exception', () {
        Should.throwException(() => CustomAttachmentModel.fromString('1234'));
        Should.throwException(
            () => CustomAttachmentModel.fromString('doc_ACCESS_KEY'));
      });
    });
  });
}
