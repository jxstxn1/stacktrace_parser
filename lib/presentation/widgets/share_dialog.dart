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
  bool shouldShowPasswordBox = false;
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
          content: Align(
            heightFactor: 1,
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('Enter a password if you want to encrypt your stacktrace'),
                const Gap(20),
                Row(
                  children: <Widget>[
                    Checkbox(
                      value: shouldShowPasswordBox,
                      onChanged: (enabled) => setState(() {
                        shouldShowPasswordBox = enabled ?? false;
                      }),
                    ),
                    const Gap(15),
                    const Text('Add password'),
                  ],
                ),
                const Gap(5),
                if (shouldShowPasswordBox)
                  TextFormField(
                    obscureText: true,
                    controller: _passwordController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Password',
                    ),
                  ),
                const Gap(20),
                OutlinedButton(
                  onPressed: () async {
                    context.read<StacktraceBloc>().add(
                          StacktraceEvent.shareStacktrace(
                            _passwordController.value.text,
                          ),
                        );
                    context.read<GlobalKey<ScaffoldMessengerState>>().currentState?.showSnackBar(
                          const SnackBar(
                            content: Text('Stacktrace copied to clipboard'),
                            backgroundColor: Colors.green,
                          ),
                        );
                    Navigator.of(context).pop();
                  },
                  child: const Text('Share'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
