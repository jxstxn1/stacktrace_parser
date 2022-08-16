import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:stacktrace_parser/domain/stacktrace_bloc/stacktrace_bloc.dart';
import 'package:stacktrace_parser/presentation/widgets/share_dialog.dart';
import 'package:wiredash/wiredash.dart';

class HomescreenContent extends StatefulWidget {
  const HomescreenContent({super.key});

  @override
  State<HomescreenContent> createState() => _HomescreenContentState();
}

class _HomescreenContentState extends State<HomescreenContent> {
  final TextEditingController _stacktraceController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: SizedBox(
          width: 700,
          height: 800,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: Builder(
                    builder: (context) {
                      final state = context.watch<StacktraceBloc>().state;
                      if (state.result.error != null) {
                        if (state.result.error!.message != 'Invalid Password') {
                          context.read<StacktraceBloc>().add(const StacktraceEvent.reset());
                          context.go('/');
                        }
                      }
                      if (state.isLoading) {
                        if (state.isEncrypted) {
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              const Text('Enter the password to decrypt the shared stacktrace'),
                              TextFormField(
                                obscureText: true,
                                controller: _passwordController,
                                decoration: InputDecoration(
                                  border: const OutlineInputBorder(),
                                  hintText: 'Password',
                                  errorText: context.watch<StacktraceBloc>().state.result.error?.message,
                                ),
                              ),
                              TextButton(
                                onPressed: () async {
                                  final text = _passwordController.value.text
                                    ..replaceAll(' ', '')
                                    ..replaceAll('\n', '');
                                  if (text.isEmpty) return;
                                  context.read<StacktraceBloc>().add(
                                        StacktraceEvent.decryptStacktrace(
                                          _passwordController.value.text,
                                        ),
                                      );
                                  // Navigator.of(context).pop();
                                },
                                child: const Text('Decrypt'),
                              ),
                            ],
                          );
                        }
                        return const Center(child: CircularProgressIndicator());
                      }
                      if (!state.isLoading) {
                        _stacktraceController.value = TextEditingValue(
                          text: context.read<StacktraceBloc>().state.result.data?.rawStackTrace ?? '',
                        );
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            TextField(
                              controller: _stacktraceController,
                              keyboardType: TextInputType.multiline,
                              maxLines: 8,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Insert your Stacktrace',
                              ),
                            ),
                            const Gap(20),
                            Row(
                              children: <Widget>[
                                ElevatedButton(
                                  onPressed: () {
                                    final text = _stacktraceController.value.text
                                      ..replaceAll(' ', '')
                                      ..replaceAll('\n', '');
                                    if (text.isEmpty) return;
                                    context.read<StacktraceBloc>().add(
                                          StacktraceEvent.parseStacktrace(
                                            _stacktraceController.value.text,
                                          ),
                                        );
                                  },
                                  child: const Text('Parse'),
                                ),
                                const Gap(20),
                                OutlinedButton(
                                  onPressed: () => Wiredash.of(context).show(),
                                  child: const Text('Send Feedback'),
                                ),
                                const Spacer(),
                              ],
                            ),
                            const Gap(20),
                            if (state.result.data != null)
                              ...state.result.data!.relevantLines.map(
                                (line) => Text(
                                  '${line.lineNumber}: ${line.text}',
                                  textAlign: TextAlign.start,
                                ),
                              ),
                            if (state.result.data != null && (state.id == null)) ...[
                              const Gap(20),
                              const Text(
                                'You still need help?\nShare the Stacktrace with a CoWorker',
                                textAlign: TextAlign.start,
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              const Gap(20),
                              ElevatedButton(
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (alertContext) {
                                      return Provider.value(
                                        value: context.read<StacktraceBloc>(),
                                        child: const ShareDialog(),
                                      );
                                    },
                                  );
                                },
                                child: const Text('Share'),
                              ),
                            ] else if (state.result.data != null &&
                                state.id != null &&
                                !(state.hasCreated ?? false)) ...[
                              const Gap(20),
                              ElevatedButton(
                                onPressed: () {
                                  context.read<StacktraceBloc>().add(const StacktraceEvent.reset());
                                  context.go('/');
                                },
                                child: const Text('Parse your own Stacktrace'),
                              ),
                            ],
                            if ((state.hasCreated ?? false) && state.id != null) ...[
                              const Gap(20),
                              const Text(
                                'You can copy the link below to share your Stacktrace with a CoWorker',
                                textAlign: TextAlign.start,
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              const Gap(5),
                              SelectableText(
                                'https://stacktrace-parser.web.app/?id=${state.id}',
                                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ],
                          ],
                        );
                      }
                      return Container();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
