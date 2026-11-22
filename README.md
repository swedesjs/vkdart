<!-- @formatter:off -->

<div align="center">

# VkDart 🚀

[![Pub Version](https://img.shields.io/pub/v/vkdart?style=flat-square)](https://pub.dev/packages/vkdart)
[![Pub Likes](https://img.shields.io/pub/likes/vkdart?style=flat-square)](https://pub.dev/packages/vkdart)
[![Pub Points](https://img.shields.io/pub/points/vkdart?style=flat-square)](https://pub.dev/packages/vkdart)

Удобный Dart-клиент для VK API: запросы к методам, события Long Poll и Callback API, клавиатуры и модели вложений. Чтобы вы писали бота, а не вели переговоры с JSON.

</div>

---

## Возможности и преимущества ✨

- **Два способа получения событий** — Long Poll для сообществ и Callback API для собственного сервера.
- **Типизированные потоки событий** — сообщения, реакции, комментарии, записи, оплаты и другие обновления.
- **Прямые запросы к VK API** — единый метод `request` для всех доступных методов.
- **Модели VK** — сообщения, вложения, заказы и другие объекты с удобными свойствами.
- **Конструктор клавиатур** — обычные и встроенные клавиатуры с разными типами кнопок.
- **Обработка новых типов событий** — поток `onUnsupportedEvent` для неизвестных обновлений.
- **Контроль жизненного цикла** — получатели обновлений можно останавливать и корректно закрывать.
- **Удобство тестирования** — для `Vkontakte` можно передать собственный `http.Client`, а для `Longpoll` — функцию HTTP-запроса.

`vkdart` — клиент и набор моделей, а не готовая платформа для ботов:
бизнес-логику, хранение данных, планирование задач и веб-интерфейс приложение
реализует самостоятельно.
Пакет подходит как для небольшого бота с командами, так и для сервиса, который
реагирует на события сообщества или вызывает любые методы VK API.

## Установка 📦

```shell
dart pub add vkdart
```

Или добавьте пакет вручную в `pubspec.yaml`:

```yaml
dependencies:
  vkdart: ^2.3.3
```

```shell
dart pub get
```

## Быстрый старт ⚡

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

> Не храните настоящий токен в исходниках и не отправляйте его в Git. Git помнит секреты дольше, чем автор — где оставил чай.

Действуйте в разных местах программы через один экземпляр `VkDart`:

```dart
await vkdart.request(
  'groups.getById',
  {'group_id': 123456},
);
```

Метод `request` возвращает поле `response` ответа VK API. Формат ответа зависит от вызываемого метода.
У `VkDart` по умолчанию используются русский язык и версия API `5.131`; их можно
переопределить параметрами `language` и `version`.

Сначала подпишитесь на нужные потоки, затем вызывайте `start()`. Потоки событий
работают в режиме broadcast и не воспроизводят события, пришедшие до подписки.

## Готовые примеры 🧪

В каталоге [`example/`](./example/) лежат самостоятельные примеры:

| Файл | Сценарий |
| --- | --- |
| [`example.dart`](./example/example.dart) | Long Poll-бот с командами, клавиатурой и Callback-кнопкой |
| [`callback_api.dart`](./example/callback_api.dart) | Приём событий через Callback API и корректное завершение сервера |
| [`api_requests.dart`](./example/api_requests.dart) | Прямой вызов метода VK API и обработка `ApiException` |

Для Long Poll-примера задайте токен сообщества и ID группы. В PowerShell:

```powershell
$env:VK_TOKEN = 'ваш_токен'
$env:VK_GROUP_ID = '123456'
dart run example/example.dart
```

Для Callback API-примера дополнительно задайте `VK_CONFIRMATION_TOKEN`;
`VK_CALLBACK_SECRET` необязателен, если секретный ключ не настроен в VK.
Пример слушает HTTP-порт (по умолчанию `8080`), поэтому в production его нужно
разместить за публичным HTTPS reverse proxy. Для прямого HTTPS используйте
пример `Webhook.createHttpsServer` выше.

Не добавляйте реальные токены и секреты в исходники или коммиты. Настраивайте
переменные окружения локально или через секреты вашей среды выполнения.

## Получение событий 🔔

Пакет поддерживает оба варианта получения обновлений сообщества.

| Получатель | Когда подходит | Что понадобится |
| --- | --- | --- |
| `Longpoll` | Не хочется поднимать входящий HTTP-сервер | Токен сообщества и `groupId` |
| `Webhook` | Уже есть публичный сервер или инфраструктура для Callback API | Доступный из интернета URL, подтверждение сервера и настройки Callback API в VK |

В обоих случаях включите нужные типы событий в настройках сообщества VK:
пакет обрабатывает полученные обновления, но не меняет настройки сообщества за вас.

### Long Poll 📡

`Longpoll` запрашивает события через сервер событий VK. Для запуска нужны токен
сообщества и его `groupId`; сам сервер Long Poll отдельно поднимать не требуется.

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

По умолчанию сетевые ошибки повторяются до 5 раз с интервалом в 1 секунду.
Параметры можно настроить:

```dart
final fetcher = Longpoll(
  groupId,
  maxRetries: 3,
  retryDelay: const Duration(seconds: 2),
);
```

Это повторы после первоначальной попытки. Если не удалось получить параметры
сервера Long Poll, `start()` завершится ошибкой. Ошибки, возникшие уже во время
получения обновлений, попадут в `onUpdate()` и типизированные потоки — для них
нужен обработчик `onError`. `stop()` прекращает цикл и игнорирует ответ уже
выполняющегося запроса; после `stop()` Long Poll можно запустить снова.

Когда экземпляр больше не нужен, вызовите `dispose()` — он остановит получатель
обновлений и закроет внутренние потоки. После `dispose()` повторно запустить
экземпляр нельзя.

### Callback API 🌐

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
import 'dart:io';

final webhook = await Webhook.createHttpsServer(
  port: 443,
  privateKey: File('private.key'),
  certificate: File('certificate.pem'),
  confirmationToken: 'СТРОКА_ПОДТВЕРЖДЕНИЯ',
  secretKey: 'СЕКРЕТНЫЙ_КЛЮЧ',
);
```

> Callback-сервер должен быть доступен из сети и отвечать на запросы VK. VK пока
> не умеет телепатию и не достучится до сервера за закрытым NAT.
> Укажите `secretKey`, если он настроен в Callback API сообщества, и задайте
> `confirmationToken`, чтобы сервер мог ответить на проверочный запрос VK.
> `createHttpServer` и `createHttpsServer` только запускают локальный приёмник:
> URL и типы событий Callback API нужно настроить в VK отдельно. Для HTTPS
> передайте действующие сертификат и приватный ключ либо используйте внешний
> TLS-прокси.
>
> `stop()` закрывает HTTP-сервер. Такой экземпляр Webhook повторно запустить
> нельзя — для нового запуска создайте другой. `dispose()` также закрывает
> поток обновлений.

## События 📨

Все обработчики в `VkDart` возвращают `Stream`. Подписаться на несколько обработчиков можно одновременно.
Это broadcast-потоки без буфера: они удобны для нескольких подписчиков, но не
заменяют очередь сообщений и не хранят события, пока подписчика нет.

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

`onUnsupportedEvent()` пригодится, если VK внезапно придумает новый тип события,
а документация ещё не успеет выпить кофе.

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

Полный список методов `VkDart` см. в [исходном коде класса](https://github.com/swedests/vkdart/blob/master/lib/src/vkdart/vkdart.dart).

### Что можно построить

- **Бот с командами и автоответами** — фильтруйте `onMessage()` по `isInbox`,
  `isNew` и тексту сообщения.
- **Интерактивное меню** — отправляйте клавиатуры и отвечайте на нажатия
  Callback-кнопок через `onMessageEvent()`.
- **Модерация и наблюдение за сообществом** — отслеживайте участников через
  `onGroup()` и `onUser()`, а публикации, реакции и комментарии — через
  `onWall()`, `onLike()` и `onComment()`.
- **Автоматизация заказов и подписок** — используйте `onMarketOrder()`,
  `onDonut()` и `onVkpayTransaction()`.
- **Своя логика поверх VK API** — вызывайте методы, для которых в пакете нет
  отдельной обёртки, через `request()`.

Пример простого обработчика команд:

```dart
vkdart
    .onMessage()
    .where((event) => event.isInbox && event.isNew)
    .listen((event) async {
      final text = event.text.trim();
      if (text == '/start') {
        await event.replySendMessage(
          message: 'Привет! Напишите /help, чтобы увидеть команды.',
        );
      } else if (text == '/help') {
        await event.replySendMessage(
          message: 'Доступные команды: /start и /help.',
        );
      }
    });
```

## Ответы на сообщения 💬

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

## Клавиатуры ⌨️

Создайте клавиатуру и добавьте нужные кнопки — пусть пользователь выбирает
действие, а не гадает, какую команду бот ждёт:

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

## Вложения 📎

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

Поддерживаемые вложения представлены в [моделях библиотеки `vkdart.vkontakte`](https://github.com/swedests/vkdart/tree/master/lib/src/vkontakte/model): фотографии, видео, аудио, документы, опросы, товары, записи и другие объекты.

Для отправки вложений передайте их строковое представление:

```dart
await event.sendMessage(
  attachment: [attachment.toString()],
);
```

## Обработка ошибок 🧯

Ошибки ответа VK API выбрасываются в виде `ApiException`. Код ответа доступен
как типизированное значение `ApiErrorCode`, поэтому известные коды можно
обрабатывать без сравнения с числами:

```dart
import 'package:vkdart/vkontakte.dart';
import 'package:vkdart/util.dart';

try {
  await vkdart.request('users.get', {'user_ids': 'durov'});
} on ApiException catch (error) {
  if (error.code == ApiErrorCode.authorizationFailed) {
    // Проверьте схему авторизации и ключ доступа.
    print('Проблемы с авторизацией VK API');
  } else if (error.code == ApiErrorCode.tooManyRequests ||
      error.code == ApiErrorCode.internalServerError) {
    // Повторите запрос позже с паузой или экспоненциальной задержкой.
    print('Временная ошибка VK API');
  } else {
    print('VK API ${error.code}: ${error.message}');
  }
} on HttpClientException catch (error) {
  // Ошибка соединения, некорректный HTTP-ответ или сбой HTTP-клиента.
  print(error.message);
  if (error.cause != null) {
    print('Причина: ${error.cause}');
  }
}
```

В `ApiException.payload` сохранён полный ответ с полями `error_code`,
`error_msg` и `request_params`. Типизированный код можно получить через
`error.code`, текст ошибки — через `error.message`, а исходные параметры —
через `error.requestParams`.

Ошибки первичного подключения Long Poll нужно ловить вокруг `start()`. Если
сбой произойдёт уже при получении обновлений, обработайте ошибку потока:

```dart
vkdart.onMessage().listen(
  (event) {
    print(event.text);
  },
  onError: (Object error, StackTrace stackTrace) {
    print('Ошибка получения обновлений: $error');
  },
);
```

Для ошибок пакета предусмотрены `VkDartException`, `VkDartKeyboardException`,
`LongpollException` и `WebhookException`. Ошибки VK API представлены
`ApiException` с кодом и сообщением из ответа VK.

## Исходный код и API 📚

- [`VkDart`](https://github.com/swedests/vkdart/blob/master/lib/src/vkdart/vkdart.dart) — получение событий и запросы к API.
- [Модели событий](https://github.com/swedests/vkdart/tree/master/lib/src/vkdart/model/updates) — типы обновлений и их свойства.
- [Модели VK и вложений](https://github.com/swedests/vkdart/tree/master/lib/src/vkontakte/model) — сообщения, вложения и объекты API.
- [Конструктор клавиатур](https://github.com/swedests/vkdart/blob/master/lib/src/util/keyboard.dart) — кнопки и их параметры.

## Возможные направления развития 🧭

- Сохранение позиции Long Poll между перезапусками, чтобы приложение могло
  продолжить обработку после восстановления.
- Типизированные обёртки и модели ответов для часто используемых методов VK API.
- Настраиваемые ограничения частоты запросов и политика повторов для вызовов
  VK API.
- Расширение набора моделей и обработчиков по мере появления новых событий VK.
- Больше готовых примеров: Callback API за reverse proxy, тестирование обработчиков
  и типовые сценарии ботов.

Это идеи для возможного развития, а не обещание сроков или уже реализованные
возможности. Новое предложение можно отправить через
[форму для идей и нововведений](https://github.com/swedests/vkdart/issues/new?template=feature_request.yml).

## Обратная связь 🤝

- Репозиторий: https://github.com/swedests/vkdart
- Сообщить о проблеме: https://github.com/swedests/vkdart/issues
- Предложить нововведение: https://github.com/swedests/vkdart/issues/new?template=feature_request.yml
- Пакет на pub.dev: https://pub.dev/packages/vkdart

## Поддержать автора 🍲

Если `vkdart` оказался полезен, автора можно поддержать донатом. Он сейчас в
армии — пусть в меню иногда встречается что-нибудь менее загадочное, чем
армейская котлета.

<div align="center">
  <a href="https://tips.tips/000492924">
    <img src="assets/donation-qr.png" alt="QR-код для поддержки автора" width="240">
  </a>
  <p><sub>🍲 Отсканируйте QR-код камерой телефона. Токен VK не нужен — только доброе намерение.</sub></p>
  <p><a href="https://tips.tips/000492924">Открыть страницу доната</a>, если читать README и сканировать QR с одного телефона неудобно.</p>
</div>

## Лицензия ⚖️

Проект распространяется по лицензии [BSD 3-Clause](LICENSE).
