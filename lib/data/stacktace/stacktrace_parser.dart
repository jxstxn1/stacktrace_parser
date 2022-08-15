import 'package:dartx/dartx.dart';
import 'package:stacktrace_parser/domain/stacktrace_models.dart';

ParseResult parseStackTrace(String stackTrace) {
  final lines = stackTrace.split('\n');
  final stackTraceLines = lines.mapIndexed((i, it) => StackTraceLine(lineNumber: i + 1, text: it)).toList();

  // remove lines without characters
  final cleanedUp = stackTraceLines.filter((it) => RegExp(r'(flutter)?\w+').hasMatch(it.text)).toList();

  final stackSeparatorLine =
      cleanedUp.firstOrNullWhere((it) => it.text.contains('When the exception was thrown, this was the stack:'));

  final List<StackTraceLine> stackOnlyLines;
  if (stackSeparatorLine != null) {
    stackOnlyLines = cleanedUp.filter((it) => it.lineNumber > stackSeparatorLine.lineNumber).toList();
  } else {
    stackOnlyLines = cleanedUp;
  }

  final filteredLines = stackOnlyLines
      // dart vm
      .filter((it) => !it.text.contains('Invoker._'))
      .filter((it) => !it.text.contains(' testWidgets.'))
      .filter((it) => !it.text.contains('<asynchronous suspension>'))
      .filter((it) => !it.text.contains('dart:ui/hooks.dart'))
      .filter((it) => !it.text.contains('_AssertionError._'))

      // testing
      .filter((it) => !it.text.contains('package:test_api/src/'))
      .filter((it) => !it.text.contains('package:flutter/src/widgets/framework.dart'))
      .filter((it) => !it.text.contains('packages/flutter/src/widgets/framework.dart'))

      // provider is well tested, ignore those
      .filter((it) => !it.text.contains('packages/provider/src/'))
      .filter((it) => !it.text.contains('package:provider/src/'))
      .filter((it) => !it.text.contains('packages/nested/nested.dart'))

      // flutter internal
      .filter((it) => !it.text.contains('_drawFrame '))
      .filter((it) => !it.text.contains('(package:flutter/src/rendering/'))
      .filter((it) => !it.text.contains('SchedulerBinding._'))
      .filter((it) => !it.text.contains('SchedulerBinding.handleDrawFrame'))
      .filter((it) => !it.text.contains('packages/flutter/src/scheduler/binding.dart'))
      .filter((it) => !it.text.contains('Normal element mounting'))
      .filter((it) => !it.text.contains('flutter/src/widgets/binding.dart'))
      .filter((it) => !it.text.startsWith('dart-sdk/lib/_internal/js_dev_runtime/'))

      // flutter internal but maybe relevant
      .filterUnlessItCausesEmpty((it) => !it.text.startsWith('lib/_engine/engine/'))
      .filterUnlessItCausesEmpty((it) => !it.text.startsWith('packages/flutter/src/'))
      .toList();

  return ParseResult(relevantLines: filteredLines, rawStackTrace: stackTrace);
}

extension Remove<T> on Iterable<T> {
  Iterable<T> filterUnlessItCausesEmpty(bool Function(T element) predicate) {
    final filtered = where((it) => predicate(it)).toList();
    if (filtered.isEmpty) {
      return this;
    }
    return filtered;
  }
}
