import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:stacktrace_parser/presentation/homescreen.dart';

class StackTraceParser extends StatefulWidget {
  const StackTraceParser() : super();

  @override
  State<StackTraceParser> createState() => _StackTraceParserState();
}

class _StackTraceParserState extends State<StackTraceParser> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      scaffoldMessengerKey: context.read<GlobalKey<ScaffoldMessengerState>>(),
      routeInformationProvider: _router.routeInformationProvider,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
    );
  }

  late final GoRouter _router = GoRouter(
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: '/',
        name: '/',
        builder: (_, state) {
          final valueKey = ValueKey(state.queryParams['id'] ?? 'home');
          return HomeScreen(key: valueKey, id: state.queryParams['id'] ?? 'home');
        },
      ),
    ],
  );
}
