import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stacktrace_parser/domain/stacktrace_bloc/stacktrace_bloc.dart';

class StacktraceInput extends StatefulWidget {
  const StacktraceInput({
    super.key,
    required TextEditingController stacktraceController,
  }) : _stacktraceController = stacktraceController;

  final TextEditingController _stacktraceController;

  @override
  State<StacktraceInput> createState() => _StacktraceInputState();
}

class _StacktraceInputState extends State<StacktraceInput> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      primary: false,
      child: TextField(
        controller: widget._stacktraceController,
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
          hintText: 'INSERT YOUR STACKTRACE TO SEE THE MAGIC',
        ),
        onChanged: (_) async {
          // wait for 500ms before parsing the stacktrace
          await Future.delayed(const Duration(milliseconds: 500));
          if (!mounted) return;
          final text = widget._stacktraceController.value.text
            ..replaceAll(' ', '')
            ..replaceAll('\n', '');
          if (text.isEmpty) return;
          context.read<StacktraceBloc>().add(
                StacktraceEvent.parseStacktrace(
                  widget._stacktraceController.value.text,
                ),
              );
        },
      ),
    );
  }
}
