import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color.fromARGB(255, 119, 255, 77),
            Colors.indigoAccent,
            const Color.fromARGB(255, 255, 68, 215),
            Colors.greenAccent,
            Colors.deepOrangeAccent,
            const Color.fromARGB(255, 173, 41, 235),
          ],
        ),
      ),
      child: Center(
        child: Text(
          "Hello Developer",
          style: TextStyle(
            color: Colors.amberAccent,
            fontSize: 28.0,
          ),
        ),
      ),
    );
  }
}
