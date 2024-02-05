import 'package:vkdart/model.dart';

/// A model of an unknown event.
class VkDartUnsupportedEventUpdate with VkDartUpdate {
  // ignore: public_member_api_docs
  VkDartUnsupportedEventUpdate(this.update);
  @override
  final Update update;

  /// The type of event from the VK side.
  String get eventType => update.eventData['type'];

  /// Object.
  Map<String, dynamic> get object => updateObject;
}
