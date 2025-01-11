import 'package:flutter/material.dart';

class StyleText extends StatelessWidget {
  final String text;
  const StyleText( {
    super.key,
    required this.text,
  });
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: const Color.fromARGB(255, 0, 0, 0),
        fontSize: 28.0,
      ),
    );
  }
}
