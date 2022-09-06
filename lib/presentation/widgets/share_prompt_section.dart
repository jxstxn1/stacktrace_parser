import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:stacktrace_parser/domain/stacktrace_bloc/stacktrace_bloc.dart';
import 'package:stacktrace_parser/presentation/widgets/share_dialog.dart';

class SharePromptSection extends StatelessWidget {
  const SharePromptSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
