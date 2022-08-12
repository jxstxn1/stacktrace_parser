import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stacktrace_parser/data/stacktrace_handler.dart';
import 'package:stacktrace_parser/presentation/homescreen.dart';

class StackTraceParser extends StatelessWidget {
  const StackTraceParser() : super();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Consumer<StackTraceHandler>(
        builder: (_, __, ___) => const HomeScreen(),
      ),
    );
  }
}
