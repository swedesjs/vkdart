import 'package:analyzer/analysis_rule/analysis_rule.dart';
import 'package:analyzer/analysis_rule/rule_context.dart';
import 'package:analyzer/analysis_rule/rule_visitor_registry.dart';
import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/visitor.dart';
import 'package:analyzer/error/error.dart'; // ← не хватало этого

class TodoLint extends AnalysisRule {
  TodoLint()
      : super(
          name: 'todo_unimplemented',
          description: 'Метод помечен @Todo и ещё не реализован.',
        );

  /// Плейсхолдер {0} — сюда подставится текст задачи при репорте.
  static const LintCode _code = LintCode(
    'todo_unimplemented',
    'Метод помечен @Todo и ещё не реализован: {0}',
  );

  @override
  LintCode get diagnosticCode => _code;

  @override
  void registerNodeProcessors(
    RuleVisitorRegistry registry,
    RuleContext context,
  ) {
    registry.addAnnotation(this, _Visitor(this, context));
  }
}

class _Visitor extends SimpleAstVisitor<void> {
  _Visitor(this.rule, this.context);

  final TodoLint rule;
  final RuleContext context;

  @override
  void visitAnnotation(Annotation node) {
    final name = node.name;
    if (name is! SimpleIdentifier || name.name != 'Todo') return;

    // Достаём текст задачи из @Todo('...') или @Todo(task: '...')
    final task = _extractTask(node);

    // Если текста нет — подставляем понятную заглушку вместо пустоты.
    rule.reportAtNode(node, arguments: [
      (task == null || task.isEmpty) ? 'необходимо реализовать метод' : task,
    ]);
  }

  String? _extractTask(Annotation node) {
    final args = node.arguments?.arguments;
    if (args == null || args.isEmpty) return null;

    for (final arg in args) {
      // позиционный: @Todo('текст')
      if (arg is StringLiteral) return arg.stringValue;

      // именованный: @Todo(task: 'текст')
      if (arg is NamedArgument && arg.name.lexeme == 'task') {
        final inner = arg.argumentExpression;
        if (inner is StringLiteral) return inner.stringValue;
      }
    }
    return null;
  }
}
