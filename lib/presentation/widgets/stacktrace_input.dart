import 'package:flutter/material.dart';

class StacktraceInput extends StatelessWidget {
  const StacktraceInput({
    super.key,
    required TextEditingController stacktraceController,
  }) : _stacktraceController = stacktraceController;

  final TextEditingController _stacktraceController;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
        ),
      ),
    );
  }
}
