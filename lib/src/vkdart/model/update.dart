// ignore_for_file: constant_identifier_names

/// [UpdateType] — перечисление возможных типов событий.
enum UpdateType {
  /// Представляет событие нового сообщения.
  message_new,

  /// Представляет событие ответа на сообщение.
  message_reply,

  /// Представляет событие изменения сообщения.
  message_edit,

  /// Подписка на сообщения сообщества. Пользователь нажал кнопку «Разрешить сообщения» или написал сообществу первое сообщение.
  message_allow,

  /// Новый запрет на сообщения сообщества. Пользователь нажал кнопку «Запретить сообщения».
  message_deny,

  /// Статус набора текста. Пользователь набирает сообщение в беседе или записывает голосовое сообщение.
  message_typing_state,

  /// Действие с сообщением. Пользователь нажал [кнопку Callback](https://dev.vk.com/ru/api/bots/development/keyboard#Callback-%D0%BA%D0%BD%D0%BE%D0%BF%D0%BA%D0%B8).
  message_event,

  /// Событие реакции.
  message_reaction_event,

  /// Добавление фотографии.
  photo_new,

  /// Добавление комментария к фотографии.
  photo_comment_new,

  /// Изменение комментария к фотографии.
  photo_comment_edit,

  /// Восстановление комментария к фотографии.
  photo_comment_restore,

  /// Удаление комментария к фотографии.
  photo_comment_delete,

  /// Добавление аудиозаписи.
  audio_new,

  /// Добавление видео.
  video_new,

  /// Добавление комментария к видео.
  video_comment_new,

  /// Изменение комментария к видео.
  video_comment_edit,

  /// Восстановление комментария к видео.
  video_comment_restore,

  /// Удаление комментария к видео.
  video_comment_delete,

  /// Добавление записи.
  wall_post_new,

  /// Репост записи.
  wall_repost,

  /// Восстановление комментария на стене.
  wall_reply_new,

  /// Изменение комментария на стене.
  wall_reply_edit,

  /// Восстановление комментария на стене.
  wall_reply_restore,

  /// Удаление комментария на стене.
  wall_reply_delete,

  /// Событие добавления отметки «Нравится».
  like_add,

  /// Событие удаления отметки «Нравится».
  like_remove,

  /// Создание комментария в обсуждении.
  board_post_new,

  /// Изменение комментария в обсуждении.
  board_post_edit,

  /// Восстановление комментария на стене.
  board_post_restore,

  /// Удаление комментария на стене.
  board_post_delete,

  /// Новый комментарий к товару.
  market_comment_new,

  /// Изменение комментария к товару.
  market_comment_edit,

  /// Восстановление комментария к товару.
  market_comment_restore,

  /// Удаление комментария к товару.
  market_comment_delete,

  /// Новый заказ. Чтобы включить событие, активируйте расширенные товары в настройках сообщества.
  market_order_new,

  /// Изменение заказа.
  market_order_edit,

  /// Добавление пользователя или приложения в сообщество.
  group_join,

  /// Удаление пользователя или приложения из сообщества.
  group_leave,

  /// Добавление пользователя в чёрный список.
  user_block,

  /// Удаление пользователя из чёрного списка.
  user_unblock,

  /// Добавление голоса в публичный опрос.
  poll_vote_new,

  /// Изменение списка руководителей.
  group_officers_edit,

  /// Изменение настроек сообщества.
  group_change_settings,

  /// Изменение фотографии сообщества.
  group_change_photo,

  /// Оплата через VK Pay.
  vkpay_transaction,

  /// Событие из VK Mini Apps добавлено в сообщество.
  app_payload,

  /// Создание подписки VK Donut.
  donut_subscription_create,

  /// Продление подписки VK Donut.
  donut_subscription_prolonged,

  /// Срок действия подписки истёк.
  donut_subscription_expired,

  /// Подписка отменена.
  donut_subscription_cancelled,

  /// Стоимость подписки изменилась.
  donut_subscription_price_changed,

  /// Вывод средств из VK Donut.
  donut_money_withdraw,

  /// Ошибка вывода средств из VK Donut.
  donut_money_withdraw_error,

  /// Неизвестное событие.
  unknown_event;
}

/// Класс [VkDartUpdate] представляет событие обновления.
///
/// Он содержит данные события и предоставляет методы для получения его типа
/// и связанного с ним объекта.
class VkDartUpdate {
  /// Данные этого обновления.
  final Map<String, dynamic> data;

  /// Создаёт экземпляр [VkDartUpdate] с указанными данными события.
  VkDartUpdate(this.data);

  /// Возвращает тип события обновления.
  UpdateType get type => UpdateType.values.firstWhere(
        (element) => element.name == data['type'],
        // ignore: missing_whitespace_between_adjacent_strings
        orElse: () => UpdateType.unknown_event,
      );

  /// Возвращает объект, связанный с событием обновления.
  Map<String, dynamic> get object => data['object'];
}
