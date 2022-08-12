import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:stacktrace_parser/data/stacktrace_handler.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen();

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String stacktrace = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: SizedBox(
                width: 700,
                height: 800,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      TextField(
                        keyboardType: TextInputType.multiline,
                        maxLines: 8,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Insert your Stacktrace',
                        ),
                        onChanged: (value) => setState(() => stacktrace = value),
                      ),
                      const Gap(20),
                      Row(
                        children: <Widget>[
                          const Spacer(),
                          ElevatedButton(
                            onPressed: () => context.read<StackTraceHandler>().parseStacktrace(stacktrace),
                            child: const Text('Parse'),
                          ),
                        ],
                      ),
                      const Gap(20),
                      if (context.watch<StackTraceHandler>().result != null)
                        ...context.read<StackTraceHandler>().result!.relevantLines.map(
                              (line) => Text(
                                line.toString(),
                                textAlign: TextAlign.start,
                              ),
                            ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
