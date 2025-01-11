import 'package:flutter/material.dart';
import 'package:randomizer/style_text.dart';
import 'dart:math';

class GradientContainer extends StatefulWidget {
  final List<Color> colors;
  const GradientContainer({super.key, required this.colors});

  @override
  State<GradientContainer> createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {
  final List<String> images = [
    'assets/images/dice-1.png',
    'assets/images/dice-2.png',
    'assets/images/dice-3.png',
    'assets/images/dice-4.png',
    'assets/images/dice-5.png',
    'assets/images/dice-6.png',
  ];

  int generateRandom() {
    return Random().nextInt(6);
  }

  @override
  Widget build(BuildContext context) {
    print(generateRandom());
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: widget.colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        children: [
          Image.asset(images[generateRandom()]),
          ElevatedButton(
            onPressed: () {
              int value = generateRandom();
              setState(() {
                Image.asset(images[value]);
              });
            },
            child: const Text("Click!"),
          ),
        ],
      ),
    );
  }
}
