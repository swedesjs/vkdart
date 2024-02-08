/// Model Keyboard.
/// Create a button:
/// ```
/// VkDartKeyboard()..addButtonText('Hello world!');
/// ```
///
/// Using Keyboard:
/// ```dart
/// vkdart.messages.send({
///   ...,
///   'keyboard': keyboard.toJson()
/// });
/// ```
/// keyboard - instance [VkDartKeyboard]
class VkDartKeyboard {
  /// Whether to hide the keyboard after pressing the key that sends the message.
  final bool oneTime;

  /// true — the keyboard is displayed inside the message.
  /// false — shows the keyboard in the dialog, under the message input field.
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

  /// Moves to the next row of the table.
  void nextRow() {
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
      (object['action']! as Map).cast<String, dynamic>()['payload'] = payload;
    }

    buttons[_index].add(object);
  }

  /// Adds a text button.
  void addButtonText(String text,
      {VkDartKeyboardColor color = VkDartKeyboardColor.secondary,
      Map<String, dynamic>? payload}) {
    _addButton({'type': 'text', 'label': text}, color, payload);
  }

  /// Adds a link key.
  void addButtonLink(String link, String text,
      {Map<String, dynamic>? payload}) {
    _addButton(
        {'type': 'open_link', 'link': link, 'label': text}, null, payload);
  }

  /// Adds a localized button.
  void addButtonLocation({Map<String, dynamic>? payload}) {
    _addButton({'type': 'location'}, null, payload);
  }

  /// Adds a VK Pay button.
  void addButtonVkPay(String hash, {Map<String, dynamic>? payload}) {
    _addButton({'type': 'vkpay', 'hash': hash}, null, payload);
  }

  /// Adds an open app button.
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

  /// Adds a callback button.
  void addButtonCallback(String text,
      {VkDartKeyboardColor color = VkDartKeyboardColor.secondary,
      Map<String, dynamic>? payload}) {
    _addButton({'type': 'callback', 'label': text}, color, payload);
  }

  /// Converts an object of the class to Json.
  Map<String, dynamic> toJson() =>
      {'one_time': oneTime, 'buttons': buttons, 'inline': inline};
}

/// The enum of colors supported by the VK keyboard.
enum VkDartKeyboardColor {
  /// Main action.
  /// Blue button.
  primary,

  /// Usual button.
  /// White button.
  secondary,

  /// A dangerous action or refusal, such as "Delete" or "Reject".
  /// Red button.
  negative,

  /// "Agree", "Confirm".
  /// Green button.
  positive
}

// ignore: public_member_api_docs
class VkDartKeyboardException implements Exception {
  // ignore: public_member_api_docs
  VkDartKeyboardException(this.message);

  /// Message exception.
  final String message;

  @override
  String toString() => 'VkDartKeyboardException: $message';
}
