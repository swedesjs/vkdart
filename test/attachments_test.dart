import 'package:test/test.dart';
import 'package:vkdart/src/structures/attachements/attachments.dart';
import 'package:shouldly/shouldly.dart';

void main() {
  group('Attachments', () {
    final audioScheme = AudioAttachments(id: 987, owner_id: 1234);
    final docScheme = DocAttachment(id: 543, owner_id: 1234, access_key: 'asd');
    final giftScheme = GiftAttachment();
    final linkScheme = LinkAttachment();
    final marketAlbumScheme = MarketAlbumAttachment(id: 1, owner_id: 1234);
    final marketScheme = MarketAttachment(
      id: 789,
      owner_id: 1234,
      access_key: 'bsd',
    );
    final photoScheme = PhotoAttachment(id: 567, owner_id: 1234);
    final stickerScheme = StickerAttachment();
    final videoScheme =
        VideoAttachment(id: 234, owner_id: 1234, access_key: 'or');
    final wallReplySheme = WallReplyAttachment();
    final wallScheme = WallAttachment(id: 345, owner_id: -1234);

    test('types must match the interface', () {
      audioScheme.attachType.should.be(AttachmentType.audio);
      docScheme.attachType.should.be(AttachmentType.doc);
      giftScheme.attachType.should.be(AttachmentType.gift);
      linkScheme.attachType.should.be(AttachmentType.link);
      marketAlbumScheme.attachType.should.be(AttachmentType.market_album);
      marketScheme.attachType.should.be(AttachmentType.market);
      photoScheme.attachType.should.be(AttachmentType.photo);
      stickerScheme.attachType.should.be(AttachmentType.sticker);
      videoScheme.attachType.should.be(AttachmentType.video);
      wallReplySheme.attachType.should.be(AttachmentType.wall_reply);
      wallScheme.attachType.should.be(AttachmentType.wall);
    });

    group('checking function `attachTypeFromString`', () {
      test('must be a positive result', () {
        attachTypeFromString('audio').should.be(AttachmentType.audio);
        attachTypeFromString('doc').should.be(AttachmentType.doc);
        attachTypeFromString('gift').should.be(AttachmentType.gift);
        attachTypeFromString('link').should.be(AttachmentType.link);
        attachTypeFromString('market_album')
            .should
            .be(AttachmentType.market_album);
        attachTypeFromString('market').should.be(AttachmentType.market);
        attachTypeFromString('photo').should.be(AttachmentType.photo);
        attachTypeFromString('sticker').should.be(AttachmentType.sticker);
        attachTypeFromString('video').should.be(AttachmentType.video);
        attachTypeFromString('wall_reply').should.be(AttachmentType.wall_reply);
        attachTypeFromString('wall').should.be(AttachmentType.wall);
      });

      test('should give an error', () {
        Should.throwException(() => attachTypeFromString('doc123'));
        Should.throwException(() => attachTypeFromString('1234'));
        Should.throwException(() => attachTypeFromString('\$^53375'));
      });
    });

    group('checking function `fromString`', () {
      test('must be a positive result', () {
        final attach1 = Attachment.fromString('audio1234_5678');
        final attach2 = Attachment.fromString('photo3456_7891_accesskey');

        attach1
          ..attachType.should.be(AttachmentType.audio)
          ..owner_id.should.be(1234)
          ..id.should.be(5678)
          ..access_key.should.beNull();

        attach2
          ..attachType.should.be(AttachmentType.photo)
          ..owner_id.should.be(3456)
          ..id.should.be(7891)
          ..access_key.should.be('accesskey');
      });

      test('should give an error', () {
        Should.throwException(() => Attachment.fromString('audio_2_3_4'));
        Should.throwException(() => Attachment.fromString('12345_'));
        Should.throwException(() => Attachment.fromString('a1_2'));
        Should.throwException(() => Attachment.fromString('doc_2_2'));
      });
    });

    group('checking function `toString`', () {
      test('audio', () {
        audioScheme.toString().should.be('audio1234_987');
      });
      test('doc', () {
        docScheme.toString().should.be('doc1234_543_asd');
      });
      test('marketAlbum', () {
        marketAlbumScheme.toString().should.be('market_album1234_1');
      });
      test('market', () {
        marketScheme.toString().should.be('market1234_789_bsd');
      });
      test('photo', () {
        photoScheme.toString().should.be('photo1234_567');
      });
      test('video', () {
        videoScheme.toString().should.be('video1234_234_or');
      });
      test('wall', () {
        wallScheme.toString().should.be('wall-1234_345');
      });
    });
  });
}
