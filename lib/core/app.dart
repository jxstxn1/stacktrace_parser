import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:stacktrace_parser/gen/fonts.gen.dart';
import 'package:stacktrace_parser/presentation/homescreen.dart';
import 'package:wiredash/wiredash.dart';

class StackTraceParser extends StatefulWidget {
  const StackTraceParser() : super();

  @override
  State<StackTraceParser> createState() => _StackTraceParserState();
}

class _StackTraceParserState extends State<StackTraceParser> {
  @override
  Widget build(BuildContext context) {
    return Wiredash(
      secret: 'HWVKZqwxzySdEaJ-5fAwd_LVUEeJwD-W',
      projectId: 'stacktraceparser-i6samxc',
      theme: WiredashThemeData.fromColor(
        primaryColor: const Color.fromARGB(255, 132, 39, 198),
        brightness: Brightness.dark,
      ),
      feedbackOptions: const WiredashFeedbackOptions(
        labels: [
          Label(id: 'label-x6obw1fa73', title: 'Bug'),
          Label(id: 'label-emlp3ixqbm', title: 'Feature Request'),
        ],
      ),
      child: MaterialApp.router(
        theme: ThemeData(
          backgroundColor: const Color(0xFF29222E),
          scaffoldBackgroundColor: const Color(0xFF29222E),
          fontFamily: FontFamily.spaceMono,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFE126B8),
            ),
          ),
          outlinedButtonTheme: OutlinedButtonThemeData(
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color(0xFF68E5DE),
              side: const BorderSide(
                color: Color(0xFF68E5DE),
              ),
            ),
          ),
          inputDecorationTheme: const InputDecorationTheme(
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFFE5D6F1),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFFE5D6F1),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFFE5D6F1),
              ),
            ),
            hintStyle: TextStyle(fontSize: 14, color: Color(0xFFE5D6F1)),
            helperStyle: TextStyle(fontSize: 14, color: Color(0xFFE5D6F1)),
            labelStyle: TextStyle(fontSize: 14, color: Color(0xFFE5D6F1)),
            prefixStyle: TextStyle(fontSize: 14, color: Color(0xFFE5D6F1)),
            suffixStyle: TextStyle(fontSize: 14, color: Color(0xFFE5D6F1)),
            floatingLabelStyle: TextStyle(fontSize: 14, color: Color(0xFFE5D6F1)),
            counterStyle: TextStyle(fontSize: 14, color: Color(0xFFE5D6F1)),
          ),
        ),
        scaffoldMessengerKey: context.read<GlobalKey<ScaffoldMessengerState>>(),
        routeInformationProvider: _router.routeInformationProvider,
        routeInformationParser: _router.routeInformationParser,
        routerDelegate: _router.routerDelegate,
      ),
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
