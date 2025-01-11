import 'package:flutter/material.dart';
import 'gradient_container.dart';
void main() {
  runApp(MaterialApp(
      home: Scaffold(
    backgroundColor: Color.fromARGB(255, 63, 5, 120),
    body: 
    
    GradientContainer(colors:  [
            const Color.fromARGB(255, 119, 255, 77),
            Colors.indigoAccent,
            const Color.fromARGB(255, 255, 68, 215),
            Colors.greenAccent,
            Colors.deepOrangeAccent,
            const Color.fromARGB(255, 173, 41, 235),
          ],),
  )));
}

