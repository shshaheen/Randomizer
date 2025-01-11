import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {

int value=1;
void rollDice() {
  setState(() {
    value = Random().nextInt(6)+1;  
  });
}

  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/dice-$value.png',
              width: 200,
            ),
            SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                // padding: const EdgeInsets.only(top: 20,),
                foregroundColor: Colors.black,
                textStyle: const TextStyle(
                  fontSize: 28,
                ),
              ),
              child: const Text("Roll Dice"),
            ),
          ],
        );
  }
}
