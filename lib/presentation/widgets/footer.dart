import 'package:flutter/material.dart';
import 'package:wiredash/wiredash.dart';

class Footer extends StatelessWidget {
  const Footer();

  @override
  Widget build(BuildContext context) {
    return Align(
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
    );
  }
}
