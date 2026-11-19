import 'package:vkdart/util.dart';
import 'package:vkdart/vkontakte.dart';

/// Модель комментария на стене.
///
/// См. https://dev.vk.com/ru/reference/objects/comment
class WallReplyAttachmentModel extends CustomAttachmentModel {
  // ignore: public_member_api_docs
  WallReplyAttachmentModel(super.payload) : super(attachType: 'wall_reply');

  @override
  int get id => payload['id'] ?? payload['cid'];

  /// ID автора комментария.
  int get fromId => payload['from_id'];

  /// Дата создания комментария в формате Unix.
  int get createdAt => payload['date'];

  /// Текст комментария.
  String? get text => payload['text'];

  /// является ли автор комментария подписчиком VK Donut.
  bool? get isDon => payload['donut']?['is_don'];

  /// заглушка для пользователей, не оформивших подписку VK Donut.
  String? get donutPlacholder => payload['donut']?['placeholder'];

  /// ID пользователя или сообщества, которому адресован текущий комментарий (если применимо).
  bool? get isReplyToUser => checkBoolInProperty('reply_to_user');

  /// ID комментария, на который отвечает текущий комментарий (если применимо).
  bool? get isReplyToComment => checkBoolInProperty('reply_to_comment');

  /// Медиа-вложения комментария (фотографии, ссылки и т. п.).
  /// См. https://dev.vk.com/ru/reference/objects/comment#attachments
  List<AttachmentModel> get attachments =>
      transformAttachments((payload['attachments'] as List?)
              ?.map((e) => (e as Map).cast<String, dynamic>())
              .toList() ??
          const []);

  /// Массив ID родительских комментариев.
  List<int>? get parentsStack => payload['parents_stack'];

  /// количество комментариев в ветке.
  int? get threadCount => payload['thread']?['count'];

  /// массив объектов комментариев к записи (только для метода wall.getComments).
  List<WallReplyAttachmentModel>? get threadItems => payload['thread']?['items']
      ?.map((e) => WallReplyAttachmentModel((e as Map).cast<String, dynamic>()))
      .toList();

  /// может ли текущий пользователь оставлять комментарии в этой ветке.
  bool? get isThreadCanPost => payload['thread']?['can_post'];

  /// нужно ли показывать кнопку ответа в ветке
  bool? get isThreadShowReplyButton => payload['thread']?['show_reply_button'];

  /// могут ли сообщества оставлять комментарии в ветке?
  bool? get isThreadGroupsCanPost => payload['thread']?['groups_can_post'];
}
