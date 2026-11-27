import 'package:vkdart/util.dart';
import 'package:vkdart/vkontakte.dart';

/// Модель сообщения.
///
/// См. https://dev.vk.com/ru/reference/objects/message
class MessageModel {
  /// Данные обновления.
  late final Map<String, dynamic> payload;

  // ignore: public_member_api_docs
  MessageModel(Map<String, dynamic> payload) {
    applyPayload(payload);
  }

  /// Применяет данные.
  void applyPayload(Map<String, dynamic> payload) {
    final checkClientInfo = payload['client_info'] != null;

    this.payload = checkClientInfo
        ? payload
        : {
            'message': payload,
            'client_info': {
              'button_actions': [],
              'keyboard': false,
              'inline_keyboard': false,
              'carousel': false,
              'lang_id': 0
            }
          };
  }

  /// Объект сообщения.
  Map<String, dynamic> get message => payload['message'];

  /// Информация о клиенте.
  Map<String, dynamic> get clientInfo => payload['client_info'];

  /// Идентификатор сообщения.
  int? get id => message['id'];

  /// Время отправки в формате Unix.
  int? get createdAt => message['date'];

  /// Идентификатор получателя.
  int get peerId => message['peer_id'];

  /// Тип получателя.
  MessageSource get peerType => getPeerType(peerId);

  /// Идентификатор отправителя.
  int get senderId => message['from_id'];

  /// Тип отправителя.
  MessageSource get senderType => getPeerType(senderId);

  /// Текст сообщения.
  String get text => message['text'];

  /// Идентификатор, используемый при отправке сообщения.
  /// Возвращается только для исходящих сообщений.
  int? get randomId => message['random_id'];

  /// Произвольный параметр для работы с источниками перехода
  /// [sources](https://dev.vk.com/ru/api/community-messages/getting-started).
  String? get ref => message['ref'];

  /// Произвольный параметр для работы с источниками перехода
  /// [sources](https://dev.vk.com/ru/api/community-messages/getting-started).
  String? get refSource => message['ref_source'];

  /// Медиа-вложения сообщения (фотографии, ссылки и т. п.).
  List<AttachmentModel> get attachments =>
      transformAttachments((message['attachments'] as List?)
              ?.map((e) => (e as Map).cast<String, dynamic>())
              .toList() ??
          const []);

  /// true, если сообщение помечено как важное.
  bool? get isImportant => message['important'];

  /// Информация о местоположении.
  Map<String, dynamic>? get geo => message['geo'];

  /// Служебное поле для сообщений ботам (payload).
  String? get messagePayload => message['payload'];

  /// Объект клавиатуры для ботов.
  Map<String, dynamic>? get keyboard => message['keyboard'];

  /// Список пересланных сообщений (если есть).
  /// Максимальное количество элементов — 100.
  /// Максимальная глубина вложенности пересланных сообщений — 45, а максимальное общее количество в цепочке с учётом вложенности — 500.
  List<MessageModel>? get forwards => (message['fwd_messages'] as List?)
      ?.map((e) => MessageModel((e as Map).cast<String, dynamic>()))
      .toList();

  /// Сообщение, на которое отправлено текущее сообщение.
  MessageModel? get replyMessage => message['reply_message'] != null
      ? MessageModel(message['reply_message'])
      : null;

  /// Информация о служебном действии в чате.
  ///
  /// Если свойство возвращает `null`, вероятно, тип поля в payload — [String].
  /// Попробуйте обратиться к свойству [actionType].
  /// Если и это свойство равно `null`,
  /// значит, **API** не вернуло поле.
  Map<String, dynamic>? get action {
    final actionPayload = message['action'];
    if (actionPayload is String) return null;

    return actionPayload;
  }

  /// Тип действия в чате.
  String? get actionType => action?['type'] ?? message['action'];

  /// ID пользователя, приглашённого в чат или исключённого из него либо закрепившего или открепившего сообщение.
  int? get actionMemberId => action?['member_id'] ?? message['action_mid'];

  /// Новое название беседы.
  String? get actionText => action?['text'] ?? message['action_text'];

  /// Прежнее название беседы.
  String? get actionOldText => action?['old_text'];

  /// Электронная почта приглашённого или исключённого пользователя.
  String? get actionEmail => action?['email'] ?? message['action_email'];

  /// URL копии фотографии беседы шириной 50 пикселей.
  String? get actionPhoto50 =>
      action?['photo']?['photo_50'] ?? message['photo_50'];

  /// URL копии фотографии беседы шириной 100 пикселей.
  String? get actionPhoto100 =>
      action?['photo']?['photo_100'] ?? message['photo_100'];

  /// URL копии фотографии беседы шириной 200 пикселей.
  String? get actionPhoto200 =>
      action?['photo']?['photo_200'] ?? message['photo_200'];

  /// Только для сообщений сообщества. Содержит ID пользователя (администратора сообщества), отправившего сообщение.
  int? get adminAuthorId => message['admin_author_id'];

  /// Уникальный автоматически увеличивающийся номер всех сообщений с этим собеседником.
  int? get conversationMessageId => message['conversation_message_id'];

  /// Это сообщение обрезано для бота.
  bool? get isCropped => message['is_cropped'];

  /// Количество участников.
  int? get membersCount => message['members_count'];

  /// Дата обновления сообщения в формате Unix.
  int? get updateTime => message['update_time'];

  /// Прослушали ли вы прикреплённое голосовое сообщение.
  bool? get isWasListened => message['was_listened'];

  /// Дата закрепления сообщения в формате Unix.
  int? get pinnedAt => message['pinned_at'];

  /// Строка для сопоставления пользователя Notify и ВКонтакте.
  ///
  /// См. https://dev.vk.com/ru/reference/objects/message#message_tag
  String? get messageTag => message['message_tag'];

  /// Флаг указывает, упомянут ли пользователь в этом сообщении.
  /// Добавлено в версии 5.217.
  bool? get isMentionedUser => message['is_mentioned_user'];

  /// Идентификатор беседы.
  int? get chatId {
    if (peerType != MessageSource.chat) {
      return null;
    }

    return peerId - peerChatIdOffset;
  }

  /// ID авторов последних сообщений беседы.
  List<int>? get chatActive => (message['chat_active'] as List?)?.cast<int>();

  /// Настройки уведомлений беседы (если заданы).
  Map<String, dynamic>? get pushSettings => message['push_settings'];

  /// Количество участников беседы.
  int? get usersCount => message['users_count'];

  /// ID создателя беседы.
  int? get adminId => message['admin_id'];
}
