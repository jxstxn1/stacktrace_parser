import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stacktrace_parser/core/app.dart';
import 'package:stacktrace_parser/data/firestore_handler.dart';
import 'package:stacktrace_parser/data/stacktrace_handler.dart';
import 'package:stacktrace_parser/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => FirestoreHandler(),
        ),
        ChangeNotifierProxyProvider<FirestoreHandler, StackTraceHandler>(
          create: (context) => StackTraceHandler(
            firestore: context.read<FirestoreHandler>(),
          ),
          update: (_, firestore, stackTraceHandler) => StackTraceHandler(
            firestore: firestore,
            result: stackTraceHandler?.result,
          ),
        ),
      ],
      child: const StackTraceParser(),
    ),
  );
}
