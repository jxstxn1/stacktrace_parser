import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stacktrace_parser/core/app.dart';
import 'package:stacktrace_parser/data/stacktrace_handler.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => StackTraceHandler(),
      child: const StackTraceParser(),
    ),
  );
}
