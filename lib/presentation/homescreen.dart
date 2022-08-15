import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stacktrace_parser/data/crypto/crypto.dart';
import 'package:stacktrace_parser/data/database/database.dart';
import 'package:stacktrace_parser/domain/stacktrace_bloc/stacktrace_bloc.dart';
import 'package:stacktrace_parser/presentation/homescreen_content.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({required ValueKey key, required this.id}) : super(key: key);

  final String id;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final bloc = StacktraceBloc(crypto: context.read<Crypto>(), database: context.read<Database>());
        if (widget.id != 'home') {
          bloc.add(StacktraceEvent.loadStacktrace(widget.id));
        }
        return bloc;
      },
      child: const HomescreenContent(),
    );
  }
}
