import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:stacktrace_parser/domain/stacktrace_bloc/stacktrace_bloc.dart';
import 'package:stacktrace_parser/gen/assets.gen.dart';
import 'package:stacktrace_parser/presentation/widgets/decrypt_prompt.dart';
import 'package:stacktrace_parser/presentation/widgets/footer.dart';
import 'package:stacktrace_parser/presentation/widgets/share_link_section.dart';
import 'package:stacktrace_parser/presentation/widgets/share_prompt_section.dart';
import 'package:stacktrace_parser/presentation/widgets/stacktrace_input.dart';

class HomescreenContent extends StatefulWidget {
  const HomescreenContent({super.key});

  @override
  State<HomescreenContent> createState() => _HomescreenContentState();
}

class _HomescreenContentState extends State<HomescreenContent> {
  final TextEditingController _stacktraceController = TextEditingController();

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
                                  return DecryptPrompt();
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
                                      child: StacktraceInput(stacktraceController: _stacktraceController),
                                    ),
                                    const Gap(20),
                                    if (state.result.data != null) ...[
                                      if (state.result.data!.relevantLines.isNotEmpty)
                                        const Text(
                                          'Look what I found in your stacktrace, I would definitely check out those lines:',
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFFE5D6F1),
                                          ),
                                        ),
                                      if (state.result.data!.relevantLines.isEmpty)
                                        const Text(
                                          "Unfortuanately I couldn't find anything useful in your stacktrace, but you can still share it with your friends.\nIf you think I'm wrong, please Send Feedback via the Feedback button in the bottom.",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFFE5D6F1),
                                          ),
                                        ),
                                      const Gap(30),
                                      SizedBox(
                                        height: height / 3,
                                        child: SingleChildScrollView(
                                          primary: false,
                                          child: Column(
                                            children: <Widget>[
                                              SelectableText(
                                                state.result.data!.relevantLines
                                                    .map(
                                                      (line) => '${line.lineNumber}: ${line.text}',
                                                    )
                                                    .join('\n'),
                                                textAlign: TextAlign.start,
                                                style: const TextStyle(
                                                  fontSize: 14,
                                                  color: Color(0xFFE5D6F1),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      if (state.result.data!.relevantLines.isNotEmpty && (state.id == null)) ...[
                                        const Gap(20),
                                        const SharePromptSection(),
                                      ] else if (state.id != null && !(state.hasCreated ?? false)) ...[
                                        const Gap(20),
                                        ElevatedButton(
                                          onPressed: () {
                                            context.read<StacktraceBloc>().add(const StacktraceEvent.reset());
                                            context.go('/');
                                          },
                                          child: const Text('Parse your own Stacktrace'),
                                        ),
                                      ],
                                    ],
                                    if ((state.hasCreated ?? false) && state.id != null) ...[
                                      ShareLinkSection(state: state),
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
                  const Footer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
