<!-- @formatter:off -->

<div align="center">

# VkDart

[![Pub Version](https://img.shields.io/pub/v/vkdart?style=flat-square)](https://pub.dev/packages/vkdart)
[![Pub Popularity](https://img.shields.io/pub/popularity/vkdart?style=flat-square)](https://pub.dev/packages/vkdart)
[![Pub Points](https://img.shields.io/pub/points/vkdart?style=flat-square)](https://pub.dev/packages/vkdart)

Удобный Dart-клиент для VK API: запросы к методам, события Long Poll и Callback API, клавиатуры и модели вложений.

</div>

---

## Возможности

- **Два способа получения событий** — Long Poll для сообществ и Callback API для собственного сервера.
- **Типизированные потоки событий** — сообщения, реакции, комментарии, записи, оплаты и другие обновления.
- **Прямые запросы к VK API** — единый метод `request` для всех доступных методов.
- **Модели VK** — сообщения, вложения, заказы и другие объекты с удобными свойствами.
- **Конструктор клавиатур** — обычные и встроенные клавиатуры с разными типами кнопок.
- **Обработка новых типов событий** — поток `onUnsupportedEvent` для неизвестных обновлений.

## Установка

```shell
dart pub add vkdart
```

Или добавьте пакет вручную в `pubspec.yaml`:

```yaml
dependencies:
  vkdart: ^2.3.1
```

```shell
dart pub get
```

## Быстрый старт

```dart
import 'package:vkdart/vkdart.dart';

Future<void> main() async {
  const token = 'ВАШ_КЛЮЧ_ДОСТУПА';
  const groupId = 123456;

  final vkdart = VkDart(
    token,
    fetcher: Longpoll(groupId),
  );

  vkdart
      .onMessage()
      .where((event) => event.isInbox)
      .listen((event) async {
        await event.replySendMessage(message: 'Привет!');
      });

  await vkdart.start();
  print('VkDart запущен');
}
```

Действуйте в разных местах программы через один экземпляр `VkDart`:

```dart
await vkdart.request(
  'groups.getById',
  {'group_id': 123456},
);
```

Метод `request` возвращает поле `response` ответа VK API. Формат ответа зависит от вызываемого метода.

## Получение событий

Пакет поддерживает оба варианта получения обновлений сообщества.

### Long Poll

`Longpoll` запрашивает события через сервер событий VK. Для запуска нужен только `groupId`.

```dart
final vkdart = VkDart(
  token,
  fetcher: Longpoll(groupId),
);

await vkdart.start();
```

Остановить получатель можно методом `stop`:

```dart
await vkdart.stop();
```

Long Poll повторяет сетевые ошибки до 5 раз с интервалом в 1 секунду. Если
повторы исчерпаны, ошибка передаётся в `onUpdate()` и типизированные потоки;
обрабатывайте её через `listen(..., onError: ...)`. `stop()` останавливает цикл
и игнорирует результат уже выполняющегося запроса.

Когда экземпляр больше не нужен, вызовите `dispose()` — он остановит получатель
обновлений и закроет внутренние потоки. После этого повторно запустить экземпляр
нельзя.

### Callback API

`Webhook` запускает HTTP или HTTPS-сервер и принимает POST-запросы от VK:

```dart
final webhook = await Webhook.createHttpServer(
  port: 80,
  confirmationToken: 'СТРОКА_ПОДТВЕРЖДЕНИЯ',
  secretKey: 'СЕКРЕТНЫЙ_КЛЮЧ',
);

final vkdart = VkDart(token, fetcher: webhook);
await vkdart.start();
```

Для HTTPS можно передать файлы сертификата и приватного ключа:

```dart
final webhook = await Webhook.createHttpsServer(
  port: 443,
  privateKey: File('private.key'),
  certificate: File('certificate.pem'),
  confirmationToken: 'СТРОКА_ПОДТВЕРЖДЕНИЯ',
  secretKey: 'СЕКРЕТНЫЙ_КЛЮЧ',
);
```

> Callback-сервер должен быть доступен из сети и отвечать на запросы VK.

## События

Все обработчики в `VkDart` возвращают `Stream`. Подписаться на несколько обработчиков можно одновременно.

```dart
vkdart.onMessage().listen((event) {
  print('Сообщение от ${event.senderId}: ${event.text}');
});

vkdart.onComment().listen((event) {
  print('Новое событие комментария: ${event.update.type.name}');
});

vkdart.onUnsupportedEvent().listen((event) {
  print('Неподдерживаемое событие: ${event.eventType}');
  print(event.object);
});
```

Поток сообщений объединяет `message_new`, `message_edit` и `message_reply`. Конкретный тип проверяется свойствами модели:

```dart
vkdart.onMessage().listen((event) {
  if (event.isNew) {
    // Новое сообщение.
  } else if (event.isEdit) {
    // Сообщение изменено.
  } else if (event.isReply) {
    // Ответ сообщества.
  }

  if (event.isChat) {
    // Сообщение получено в беседе.
  }
});
```

Используйте стандартные методы Dart Streams для фильтрации:

```dart
vkdart
    .onMessage()
    .where((event) => event.isInbox && event.isChat)
    .listen((event) {
      // Входящее сообщение из беседы.
    });
```

Основные обработчики:

| Обработчик | События |
| --- | --- |
| `onMessage()` | Новое, изменённое или исходящее сообщение |
| `onMessageEvent()` | Нажатие кнопки Callback |
| `onMessageAllow()` / `onMessageDeny()` | Разрешение или запрет сообщений |
| `onMessageTypingState()` | Состояние набора текста |
| `onChatCreate()` / `onChatTitle()` | Создание беседы и изменение названия |
| `onChatPhoto()` / `onChatPin()` / `onChatUser()` | Фото, закрепление и участники беседы |
| `onAttachmentNew()` | Новая фотография, видео или аудиозапись |
| `onComment()` | Комментарии к объектам сообщества |
| `onWall()` | Новая запись или репост |
| `onLike()` | Добавление и удаление отметки «Нравится» |
| `onMarketOrder()` | Новый или изменённый заказ |
| `onGroup()` / `onUser()` | Вступление и выход или блокировка пользователя |
| `onPollVoteNew()` | Голос в опросе |
| `onGroupChange()` | Изменение сообщества |
| `onVkpayTransaction()` | Транзакция VK Pay |
| `onAppPayload()` | Payload приложения |
| `onDonut()` | События VK Donut |
| `onUnsupportedEvent()` | События без специальной модели |

Полный список доступен в документации [`VkDart`](https://pub.dev/documentation/vkdart/latest/vkdart/VkDart-class.html).

## Ответы на сообщения

Модель `VkDartMessageUpdate` умеет отправлять сообщение в исходный диалог:

```dart
vkdart.onMessage().listen((event) async {
  await event.sendMessage(message: 'Получил ваше сообщение');
});
```

Для ответа с ссылкой на исходное сообщение используйте `replySendMessage`:

```dart
vkdart.onMessage().listen((event) async {
  await event.replySendMessage(
    message: 'Ответ на сообщение',
  );
});
```

Сообщение можно отправить в несколько диалогов:

```dart
await event.sendMessage(
  peerIds: [123456, 654321],
  message: 'Рассылка',
);
```

Для обратной связи с Callback-кнопкой используйте `onMessageEvent`:

```dart
vkdart.onMessageEvent().listen((event) async {
  await event.answer(
    type: 'show_snackbar',
    text: 'Готово',
  );
});
```

Поддерживаемые действия: `show_snackbar`, `open_link` и `open_app`.

## Клавиатуры

Создайте клавиатуру и добавьте нужные кнопки:

```dart
import 'package:vkdart/util.dart';

final keyboard = VkDartKeyboard(
  oneTime: true,
  inline: false,
);

keyboard
  ..addButtonText(
    'Подтвердить',
    color: VkDartKeyboardColor.positive,
    payload: {'action': 'confirm'},
  )
  ..nextRow()
  ..addButtonText(
    'Отменить',
    color: VkDartKeyboardColor.negative,
  );
```

Отправьте клавиатуру вместе с сообщением:

```dart
await event.sendMessage(
  message: 'Выберите действие',
  keyboard: keyboard,
);
```

Другие типы кнопок:

```dart
keyboard.addButtonLink('https://example.com', 'Открыть сайт');
keyboard.addButtonLocation(payload: {'action': 'location'});
keyboard.addButtonVkPay('action=transfer-to-group&group_id=123456');
keyboard.addButtonApp(
  6232540,
  -157525928,
  hash: '123',
  appName: 'Приложение',
);
keyboard.addButtonCallback(
  'Callback',
  color: VkDartKeyboardColor.primary,
  payload: {'action': 'callback'},
);
```

Ограничения сетки VK:

- обычная клавиатура: максимум 10 строк по 5 кнопок, всего 40 кнопок;
- встроенная клавиатура: максимум 6 строк по 5 кнопок, всего 10 кнопок.

Цвета кнопок:

| Значение | Назначение | Цвет |
| --- | --- | --- |
| `VkDartKeyboardColor.primary` | Основное действие | Синий |
| `VkDartKeyboardColor.secondary` | Обычное действие | Белый |
| `VkDartKeyboardColor.negative` | Отказ или опасное действие | Красный |
| `VkDartKeyboardColor.positive` | Подтверждение | Зелёный |

## Вложения

Вложение можно преобразовать из строки формата VK:

```dart
final attachment = CustomAttachmentModel.fromString('photo-123456_789');

print(attachment.attachType); // photo
print(attachment.ownerId); // -123456
print(attachment.id); // 789
print(attachment.toString()); // photo-123456_789
```

Создать вложение из объекта карты можно через `AttachmentModel.fromSpecificModel`:

```dart
final attachment = AttachmentModel.fromSpecificModel(
  {
    'owner_id': 123456,
    'id': 789,
  },
  'photo',
);
```

Поддерживаемые вложения представлены в библиотеке [`vkdart.vkontakte`](https://pub.dev/documentation/vkdart/latest/vkdart.vkontakte/vkdart.vkontakte-library.html): фотографии, видео, аудио, документы, опросы, товары, записи и другие объекты.

Для отправки вложений передайте их строковое представление:

```dart
await event.sendMessage(
  attachment: [attachment.toString()],
);
```

## Обработка ошибок

Ошибки VK API выбрасываются в виде `ApiException`:

```dart
import 'package:vkdart/vkontakte.dart';

try {
  await vkdart.request('users.get', {'user_ids': 'durov'});
} on ApiException catch (error) {
  print('VK API ${error.code}: ${error.message}');
}
```

Для неподдерживаемых вложений и некорректных настроек доступны `VkDartException`, `VkDartKeyboardException`, `LongpollException` и `WebhookException`.

## Документация API

- [`VkDart`](https://pub.dev/documentation/vkdart/latest/vkdart/VkDart-class.html) — получение событий и запросы к API.
- [`Модели событий`](https://pub.dev/documentation/vkdart/latest/vkdart.model/vkdart.model-library.html) — типы обновлений и их свойства.
- [`Модели VK`](https://pub.dev/documentation/vkdart/latest/vkdart.vkontakte/vkdart.vkontakte-library.html) — сообщения, вложения и объекты API.
- [`Клавиатуры`](https://pub.dev/documentation/vkdart/latest/vkdart.util/VkDartKeyboard-class.html) — конструктор интерактивных кнопок.

## Сообщество и обратная связь

- Telegram: https://t.me/vk_dart
- Репозиторий: https://github.com/swedests/vkdart
- Сообщить о проблеме: https://github.com/swedests/vkdart/issues

## Лицензия

Проект распространяется по лицензии [MIT](LICENSE).
