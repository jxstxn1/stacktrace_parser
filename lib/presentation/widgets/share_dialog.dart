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
          backgroundColor: const Color(0xFF29222E),
          content: Align(
            heightFactor: 1,
            alignment: Alignment.topLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Enter a password if you want to encrypt your stacktrace',
                  style: TextStyle(
                    color: Color(0xFFE5D6F1),
                  ),
                ),
                const Gap(20),
                Row(
                  children: <Widget>[
                    Checkbox(
                      side: MaterialStateBorderSide.resolveWith(
                        (states) => const BorderSide(
                          color: Color(0xFFE5D6F1),
                        ),
                      ),
                      activeColor: const Color(0xFFE126B8),
                      value: shouldShowPasswordBox,
                      onChanged: (enabled) => setState(() {
                        shouldShowPasswordBox = enabled ?? false;
                      }),
                    ),
                    const Gap(15),
                    const Text(
                      'Add password',
                      style: TextStyle(
                        color: Color(0xFFE5D6F1),
                      ),
                    ),
                  ],
                ),
                const Gap(5),
                if (shouldShowPasswordBox)
                  TextFormField(
                    obscureText: true,
                    controller: _passwordController,
                    style: const TextStyle(fontSize: 14, color: Color(0xFFE5D6F1)),
                    cursorColor: const Color(0xFFE126B8),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFE5D6F1),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFE5D6F1),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xFFE5D6F1),
                        ),
                      ),
                      hintStyle: TextStyle(fontSize: 14, color: Color(0xFFE5D6F1)),
                      helperStyle: TextStyle(fontSize: 14, color: Color(0xFFE5D6F1)),
                      labelStyle: TextStyle(fontSize: 14, color: Color(0xFFE5D6F1)),
                      prefixStyle: TextStyle(fontSize: 14, color: Color(0xFFE5D6F1)),
                      suffixStyle: TextStyle(fontSize: 14, color: Color(0xFFE5D6F1)),
                      floatingLabelStyle: TextStyle(fontSize: 14, color: Color(0xFFE5D6F1)),
                      counterStyle: TextStyle(fontSize: 14, color: Color(0xFFE5D6F1)),
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
