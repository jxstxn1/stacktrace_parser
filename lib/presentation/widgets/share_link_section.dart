import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:stacktrace_parser/domain/stacktrace_bloc/stacktrace_bloc.dart';

class ShareLinkSection extends StatelessWidget {
  const ShareLinkSection({
    super.key,
    required this.state,
  });

  final StacktraceState state;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
    );
  }
}
