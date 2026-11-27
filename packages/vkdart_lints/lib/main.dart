import 'package:analysis_server_plugin/plugin.dart';
import 'package:analysis_server_plugin/registry.dart';

import 'todo_lint.dart';

final plugin = VkdartLintsPlugin();

class VkdartLintsPlugin extends Plugin {
  @override
  String get name => 'vkdart_lints';

  @override
  void register(PluginRegistry registry) {
    registry.registerWarningRule(TodoLint());
  }
}
