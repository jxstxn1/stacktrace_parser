import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:stacktrace_parser/domain/stacktrace_bloc/stacktrace_bloc.dart';

class DecryptPrompt extends StatelessWidget {
  DecryptPrompt();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
}
