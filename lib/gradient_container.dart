import 'package:flutter/material.dart';
import 'package:randomizer/style_text.dart';
import 'dice_roller.dart';

class GradientContainer extends StatefulWidget {
  final List<Color> colors;
  const GradientContainer({super.key, required this.colors});

  @override
  State<GradientContainer> createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: widget.colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
