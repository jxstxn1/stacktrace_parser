import 'package:flutter/cupertino.dart';
import 'package:stacktrace_parser/data/stacktrace_parser.dart';

class StackTraceHandler extends ChangeNotifier {
  ParseResult? _result;

  ParseResult? get result => _result;

  void parseStacktrace(String stacktrace) {
    _result = parseStackTrace(stacktrace);
    notifyListeners();
  }
}
