import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:stacktrace_parser/domain/stacktrace_bloc/stacktrace_bloc.dart';

class ShareDialog extends StatefulWidget {
  const ShareDialog();

  @override
  State<ShareDialog> createState() => _ShareDialogState();
}

class _ShareDialogState extends State<ShareDialog> {
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('Enter a password if you want to encrypt your stacktrace'),
              const Gap(20),
              TextFormField(
                obscureText: true,
                controller: _passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Password',
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () async {
                context.read<StacktraceBloc>().add(
                      StacktraceEvent.shareStacktrace(
                        _passwordController.value.text,
                      ),
                    );
                Navigator.of(context).pop();
              },
              child: const Text('Share'),
            ),
          ],
        );
      },
    );
  }
}
