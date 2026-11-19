## 2.3.2

Изменения:

- Улучшено управление жизненным циклом `VkDart`, Long Poll и Webhook: остановка и закрытие потоков обрабатываются надёжнее.
- Long Poll повторяет временные сетевые ошибки, восстанавливает подключение и передаёт итоговые ошибки подписчикам.
- Параметры HTTP-запросов корректно кодируются; вложенные списки и карты отправляются как JSON.
- Для `Vkontakte` добавлена возможность передать собственный `http.Client`.
- TLS-сертификаты и ключ Webhook читаются асинхронно; `dispose()` закрывает сервер и поток обновлений.

Новое:

- Тесты запросов VK API работают без токена и внешней сети.
- GitHub Actions проверяет версию тега и публикует пакет на pub.dev после успешных тестов.
- README обновлён: добавлены примеры, описание поведения и QR-код для поддержки автора.

## 2.3.1

Изменения:

- Добавлена возможность подписываться на основной поток несколько раз.

## 2.3.0

Изменения:

- Класс Api переименован в Vkontakte.
- Интерфейсы разделов VK удалены; теперь к методам необходимо обращаться через функцию `request`.
- Параметр `fetcher` класса `VkDart` стал обязательным.

Новое:

- В модель `VkDartMessageEventUpdate` добавлена функция `answer`, отправляющая событие с действием пользователю, нажавшему кнопку Callback.
- В модель `VkDartMessageUpdate` добавлены функции:
    - `sendMessage`: отправляет сообщение в диалог, из которого пришло событие. Если указать параметр `peerIds`, сообщение будет отправлено в нужные диалоги.
    - `replyMessage`: выполняет то же, что и `sendMessage`, но отвечает на сообщение.
    - `setActivity`: изменяет статус набора текста в диалоге.
- В модель `MessageModel` добавлены свойства:
    - `actionType`: тип служебного действия в чате.
    - `actionMemberId`: ID пользователя, который закрепил или открепил сообщение, присоединился к чату и т. п.
    - `actionText`: название беседы.
    - `actionOldText`: прежнее название беседы.
    - `actionEmail`: адрес электронной почты пользователя.
    - `actionPhoto50`: используется вместо `photo50`.
    - `actionPhoto100`: используется вместо `photo100`.
    - `actionPhoto200`: используется вместо `photo200`.

  Удалены свойства: `actionMid`, `photo50`, `photo100`, `photo200`.
- Добавлены потоки для получения сообщений со служебными действиями в чате: `onChatUser`, `onChatPin`, `onChatCreate`, `onChatPhoto`, `onChatTitle`.

## 2.2.0

Изменения:

- Удалён класс `ApiResponse`.
- Удалён миксин класса `VkDartUpdate`, а класс `Update` переименован в `VkDartUpdate`. ([Коммит](https://github.com/swedests/vkdart/commit/215637989b6b3e9758ab0340006641db4eaeb7b3#diff-d57374fc48bdddbb8ba6e673b90a428de20bce6e128f5435b36d5c662f3be063))
    - Свойство `eventData` переименовано в `data`.
- [Api.request](https://pub.dev/documentation/vkdart/2.2.0/vkdart.vkontakte/Api/request.html): изменены реализация вызова API, тип возвращаемого функцией значения и тип входных параметров. ([Коммит](https://github.com/swedests/vkdart/commit/4af4bd67a6767162e40beed3344d96fbf0978d1d))

Новое:

- Для [VkDartLikeUpdate](https://pub.dev/documentation/vkdart/2.2.0/vkdart.model/VkDartLikeUpdate-class.html), [VkDartMarketOrderUpdate](https://pub.dev/documentation/vkdart/latest/vkdart.model/VkDartMarketOrderUpdate-class.html) и [VkDartWallUpdate](https://pub.dev/documentation/vkdart/latest/vkdart.model/VkDartWallUpdate-class.html) добавлены новые [модификаторы](https://github.com/swedests/vkdart/commit/599d169782a82190e4ebff20624baf40c52c1321).

## 2.1.0

Изменения:

- Документация стала точнее и понятнее.
- Удалены зависимости `dia`, `dia_body`, `dio`. `Dio` заменён пакетом `http`, а `dia` — библиотекой `dart:io`.
- В [VkDartUpdate](https://pub.dev/documentation/vkdart/2.1.0/vkdart.model/VkDartUpdate-class.html) свойство payload переименовано в updateObject.

Новое:

- В [MessageModel](https://pub.dev/documentation/vkdart/2.1.0/vkdart.vkontakte/MessageModel-class.html) реализована функция [applyPayload](https://pub.dev/documentation/vkdart/2.1.0/vkdart.vkontakte/MessageModel/applyPayload.html), корректно обрабатывающая payload.
- Добавлен [HttpClient](https://pub.dev/documentation/vkdart/2.1.0/vkdart.util/HttpClient-class.html) для удобной отправки запросов к серверу VK.
- Для [VkDartMessageUpdate](https://pub.dev/documentation/vkdart/2.1.0/vkdart.model/VkDartMessageUpdate-class.html) добавлены новые [модификаторы](https://github.com/swedests/vkdart/commit/a0b2c137d6202a48173c792aa125e53c42ff01d2).
- Добавлен [VkDartKeyboard](https://pub.dev/documentation/vkdart/2.1.0/vkdart.util/VkDartKeyboard-class.html) для удобной работы с клавиатурами VK.

## 2.0.0

Изменения:

- Переработана документация API пакета.
- Выполнен рефакторинг кода.
- Удалены зависимости json_annotation, json_serializable и build_runner.

Новое:

- Добавлены модели вложений, сообщений и событий.
- Добавлен обработчик неподдерживаемых событий.
- Добавлена библиотека util с полезными функциями для работы с пакетом.

## 1.3.6

Изменение: два обработчика `donut` объединены в один (`onDonut()`).

## 1.3.5

Исправление: скорректирована работа обработчиков `donut`.

## 1.3.4

Рефакторинг: исправлены названия обработчиков событий
`group_officers_edit`, `group_change_settings`, `group_change_photo`.
`onGroupUpdate()` переименован в `onGroupChange()`.

## 1.3.3

Рефакторинг: исправлены названия обработчиков событий `wall_post_new`, `wall_repost`.
`onWallPost()` переименован в `onWall()`.

## 1.3.2

Добавлено: обработчик события `message_reaction_event`.

## 1.3.1

Исправление: `Longpoll Fetcher` считывал только одно событие при запуске.

## 1.3.0

Изменения:

- Документация по использованию.
- Структура файлов пакета.
- Структура использования пакета.
- Файл примера.

Новое:

- **Класс Event**. Интерфейс с потоками событий.
- Функции для прослушивания отдельных событий.

## 1.2.0

- Удалены интерфейсы вложений, чтобы уменьшить пакет.
- Удалена поддержка Longpoll API, теперь поддерживается только Callback API.
- Изменена структура интерфейса Callback API.
- Добавлены списки `update types`.

## 1.1.2

- Добавлена функция `getAttachmentFromJson()`.
- Исправлено название интерфейса `AudioAttachment`.
- Добавлен обработчик ошибок при использовании `CallbackAPI`.

## 1.1.1

- Исправлена работа функции `api.request()`.
- В документацию внесены исправления.

## 1.1.0

- Документация полностью переписана.
- Добавлен обработчик ошибок при чтении событий LongPoll.
- Добавлены структуры вложений.
- Добавлены тесты.

## 1.0.4

- Добавлена документация для методов, которые ранее не были описаны.
- Изменена структура получения обновлений Longpoll API и Callback API.
- Добавлены недостающие методы.
- Интерфейсы методов и классы Longpoll API и Callback API перенесены в отдельные библиотеки.

## 1.0.3

- Добавлена поддержка Callback API.

## 1.0.2

- Добавлена поддержка Longpoll API.

## 1.0.1

- Добавлены интерфейсы методов API.

## 1.0.0

- Начальная версия.

