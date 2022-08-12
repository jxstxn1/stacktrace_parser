import 'package:flutter/cupertino.dart';

import 'package:stacktrace_parser/data/firestore_handler.dart';
import 'package:stacktrace_parser/data/stacktrace_parser.dart';

class StackTraceHandler extends ChangeNotifier {
  StackTraceHandler({
    required this.firestore,
    this.result,
  });
  FirestoreHandler firestore;

  ParseResult? result;

  void parseStacktrace(String stacktrace) {
    result = parseStackTrace(stacktrace);
    notifyListeners();
  }

  StackTraceHandler copyWith({
    FirestoreHandler? firestore,
    ParseResult? result,
  }) {
    return StackTraceHandler(
      firestore: firestore ?? this.firestore,
      result: result ?? this.result,
    );
  }
}
