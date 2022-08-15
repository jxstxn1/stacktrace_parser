import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:stacktrace_parser/core/app.dart';
import 'package:stacktrace_parser/data/crypto/crypto.dart';
import 'package:stacktrace_parser/data/database/database.dart';
import 'package:stacktrace_parser/data/database/firestore_handler.dart';
import 'package:stacktrace_parser/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  GoRouter.setUrlPathStrategy(UrlPathStrategy.path);
  runApp(
    MultiProvider(
      providers: [
        Provider<Database>(
          create: (_) => FirestoreHandler(),
        ),
        Provider<Crypto>(create: (_) => Crypto()),
      ],
      child: const StackTraceParser(),
    ),
  );
}
