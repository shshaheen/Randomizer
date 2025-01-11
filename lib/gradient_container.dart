import 'package:flutter/material.dart';
import 'package:randomizer/style_text.dart';

class GradientContainer extends StatelessWidget {
  final List<Color> colors;
  const GradientContainer({super.key,
  required this.colors});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors:colors,
        ),
      ),
      child: Center(
        
        child: StyleText(text: "Hello Developer..!"),
      ),
    );
  }
}
