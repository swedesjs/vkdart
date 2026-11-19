/// Модель клавиатуры.
/// Создание кнопки:
/// ```
/// VkDartKeyboard()..addButtonText('Привет, мир!');
/// ```
///
/// Использование клавиатуры:
/// ```dart
/// vkdart.messages.send({
///   ...,
///   'keyboard': keyboard.toJson()
/// });
/// ```
/// keyboard — экземпляр [VkDartKeyboard].
class VkDartKeyboard {
  /// Скрывать ли клавиатуру после нажатия кнопки, отправляющей сообщение.
  final bool oneTime;

  /// true — клавиатура отображается внутри сообщения.
  /// false — клавиатура отображается в диалоге под полем ввода сообщения.
  final bool inline;

  // ignore: public_member_api_docs
  late final List<List<Map<String, dynamic>>> buttons;

  int _index = -1;

  // ignore: public_member_api_docs
  VkDartKeyboard(
      {this.oneTime = true,
      this.inline = false,
      List<List<Map<String, dynamic>>>? buttons}) {
    this.buttons = buttons ?? [];
  }

  /// Переходит к следующей строке таблицы.
  void nextRow() {
    // VK не принимает клавиатуры с пустыми строками.
    if (_index != -1 && (buttons.elementAtOrNull(_index)?.isEmpty ?? false)) {
      throw VkDartKeyboardException(
          'To move to the next line, fill in the previous one by the index $_index');
    }

    _index += 1;
    buttons.add([]);
  }

  void _addButton(Map<String, dynamic> action,
      [VkDartKeyboardColor? color, Map<String, dynamic>? payload]) {
    if (_index == -1) {
      nextRow();
    }

    final object = {'action': action, if (color != null) 'color': color.name};

    if (payload != null) {
      // VK ожидает payload внутри action, а не рядом с ним.
      (object['action']! as Map).cast<String, dynamic>()['payload'] = payload;
    }

    buttons[_index].add(object);
  }

  /// Добавляет текстовую кнопку.
  void addButtonText(String text,
      {VkDartKeyboardColor color = VkDartKeyboardColor.secondary,
      Map<String, dynamic>? payload}) {
    _addButton({'type': 'text', 'label': text}, color, payload);
  }

  /// Добавляет кнопку-ссылку.
  void addButtonLink(String link, String text,
      {Map<String, dynamic>? payload}) {
    _addButton(
        {'type': 'open_link', 'link': link, 'label': text}, null, payload);
  }

  /// Добавляет кнопку отправки местоположения.
  void addButtonLocation({Map<String, dynamic>? payload}) {
    _addButton({'type': 'location'}, null, payload);
  }

  /// Добавляет кнопку VK Pay.
  void addButtonVkPay(String hash, {Map<String, dynamic>? payload}) {
    _addButton({'type': 'vkpay', 'hash': hash}, null, payload);
  }

  /// Добавляет кнопку открытия приложения.
  void addButtonApp(int appId, int ownerId,
      {String? hash, String? appName, Map<String, dynamic>? payload}) {
    _addButton({
      'type': 'open_app',
      'app_id': appId,
      'owner_id': ownerId,
      if (hash != null) 'hash': hash,
      if (appName != null) 'label': appName
    }, null, payload);
  }

  /// Добавляет кнопку Callback.
  void addButtonCallback(String text,
      {VkDartKeyboardColor color = VkDartKeyboardColor.secondary,
      Map<String, dynamic>? payload}) {
    _addButton({'type': 'callback', 'label': text}, color, payload);
  }

  /// Преобразует объект класса в JSON.
  Map<String, dynamic> toJson() =>
      {'one_time': oneTime, 'buttons': buttons, 'inline': inline};
}

/// Перечисление цветов, поддерживаемых клавиатурой VK.
enum VkDartKeyboardColor {
  /// Основное действие.
  /// Синяя кнопка.
  primary,

  /// Обычная кнопка.
  /// Белая кнопка.
  secondary,

  /// Опасное действие или отказ, например «Удалить» или «Отклонить».
  /// Красная кнопка.
  negative,

  /// «Согласиться», «Подтвердить».
  /// Зелёная кнопка.
  positive
}

// ignore: public_member_api_docs
class VkDartKeyboardException implements Exception {
  // ignore: public_member_api_docs
  VkDartKeyboardException(this.message);

  /// Сообщение исключения.
  final String message;

  @override
  String toString() => 'VkDartKeyboardException: $message';
}
