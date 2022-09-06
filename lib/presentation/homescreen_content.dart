import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:stacktrace_parser/domain/stacktrace_bloc/stacktrace_bloc.dart';
import 'package:stacktrace_parser/gen/assets.gen.dart';
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
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height - (width < 400 ? 20 : 90);

    return Scaffold(
      body: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: EdgeInsets.only(left: 8, right: 8, top: width < 400 ? 10 : 80),
          child: SingleChildScrollView(
            child: SizedBox(
              height: height,
              width: 700,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Assets.icons.logo.svg(height: 47, width: 174),
                        const Gap(40),
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
                                      const Text(
                                        'Enter the password to decrypt the shared stacktrace',
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Color(0xFFE5D6F1),
                                        ),
                                      ),
                                      const Gap(10),
                                      TextFormField(
                                        obscureText: true,
                                        controller: _passwordController,
                                        style: const TextStyle(fontSize: 14, color: Color(0xFFE5D6F1)),
                                        cursorColor: const Color(0xFFE126B8),
                                        decoration: InputDecoration(
                                          border: const OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFE5D6F1),
                                            ),
                                          ),
                                          enabledBorder: const OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFE5D6F1),
                                            ),
                                          ),
                                          focusedBorder: const OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0xFFE5D6F1),
                                            ),
                                          ),
                                          hintStyle: const TextStyle(fontSize: 14, color: Color(0xFFE5D6F1)),
                                          helperStyle: const TextStyle(fontSize: 14, color: Color(0xFFE5D6F1)),
                                          labelStyle: const TextStyle(fontSize: 14, color: Color(0xFFE5D6F1)),
                                          prefixStyle: const TextStyle(fontSize: 14, color: Color(0xFFE5D6F1)),
                                          suffixStyle: const TextStyle(fontSize: 14, color: Color(0xFFE5D6F1)),
                                          floatingLabelStyle: const TextStyle(fontSize: 14, color: Color(0xFFE5D6F1)),
                                          counterStyle: const TextStyle(fontSize: 14, color: Color(0xFFE5D6F1)),
                                          hintText: 'Password',
                                          errorText: context.watch<StacktraceBloc>().state.result.error?.message,
                                        ),
                                      ),
                                      const Gap(10),
                                      ElevatedButton(
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
                                        child: const Text(
                                          'Decrypt',
                                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                        ),
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
                                  children: <Widget>[
                                    Expanded(
                                      child: SingleChildScrollView(
                                        primary: false,
                                        child: TextField(
                                          controller: _stacktraceController,
                                          minLines: 10,
                                          maxLines: 26,
                                          style: const TextStyle(fontSize: 14, color: Color(0xFFE5D6F1)),
                                          keyboardType: TextInputType.multiline,
                                          cursorColor: const Color(0xFFE126B8),
                                          decoration: const InputDecoration(
                                            isDense: true,
                                            contentPadding: EdgeInsets.all(8),
                                            filled: true,
                                            fillColor: Color(0xFF332D38),
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF1A0829),
                                              ),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF1A0829),
                                              ),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0xFF1A0829),
                                              ),
                                            ),
                                            hintText: 'INSERT STACKTRACE',
                                            hintStyle: TextStyle(fontSize: 14, color: Color(0xFFE5D6F1)),
                                            helperStyle: TextStyle(fontSize: 14, color: Color(0xFFE5D6F1)),
                                            labelStyle: TextStyle(fontSize: 14, color: Color(0xFFE5D6F1)),
                                            prefixStyle: TextStyle(fontSize: 14, color: Color(0xFFE5D6F1)),
                                            suffixStyle: TextStyle(fontSize: 14, color: Color(0xFFE5D6F1)),
                                            floatingLabelStyle: TextStyle(fontSize: 14, color: Color(0xFFE5D6F1)),
                                            counterStyle: TextStyle(fontSize: 14, color: Color(0xFFE5D6F1)),
                                          ),
                                        ),
                                      ),
                                    ),
                                    if (state.result.data == null) ...[
                                      const Gap(20),
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          fixedSize: const Size(85, 38),
                                        ),
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
                                        child: const Text(
                                          'PARSE',
                                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                    const Gap(20),
                                    if (state.result.data != null && state.result.data!.relevantLines.isNotEmpty)
                                      ...state.result.data!.relevantLines.map(
                                        (line) => Text(
                                          '${line.lineNumber}: ${line.text}',
                                          textAlign: TextAlign.start,
                                          style: const TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFFE5D6F1),
                                          ),
                                        ),
                                      ),
                                    if (state.result.data != null &&
                                        state.result.data!.relevantLines.isNotEmpty &&
                                        (state.id == null)) ...[
                                      const Gap(20),
                                      Row(
                                        children: [
                                          const Text(
                                            'You still need help?\nShare the Stacktrace with a CoWorker',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFFE5D6F1),
                                            ),
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
                                        ],
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
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xFFE5D6F1),
                                        ),
                                      ),
                                      const Gap(5),
                                      SelectableText(
                                        'https://stacktrace-parser.web.app/?id=${state.id}',
                                        style: const TextStyle(
                                          fontSize: 16,
                                          color: Color(0xFFE5D6F1),
                                        ),
                                      )
                                    ],
                                    const Gap(30),
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
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      children: [
                        OutlinedButton(
                          onPressed: () => Wiredash.of(context).show(),
                          child: const Text('SEND FEEDBACK'),
                        ),
                        const Text(
                          '©2022 jxstxn.__',
                          style: TextStyle(
                            color: Color(0xFFE5D6F1),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
