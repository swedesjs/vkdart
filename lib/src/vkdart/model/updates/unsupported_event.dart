import 'package:vkdart/model.dart';

/// A model of an unknown event.
class VkDartUnsupportedEventUpdate {
  // ignore: public_member_api_docs
  final VkDartUpdate update;

  // ignore: public_member_api_docs
  VkDartUnsupportedEventUpdate(this.update);

  /// The type of event from the VK side.
  String get eventType => update.updateData['type'];

  /// Object.
  Map<String, dynamic> get object => update.object;
}
