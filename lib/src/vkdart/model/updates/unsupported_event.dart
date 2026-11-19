import 'package:vkdart/model.dart';

/// Модель неизвестного события.
class VkDartUnsupportedEventUpdate {
  // ignore: public_member_api_docs
  final VkDartUpdate update;

  // ignore: public_member_api_docs
  VkDartUnsupportedEventUpdate(this.update);

  /// Тип события со стороны VK.
  String get eventType => update.data['type'];

  /// Объект.
  Map<String, dynamic> get object => update.object;
}
