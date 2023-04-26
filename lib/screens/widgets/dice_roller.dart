import 'dart:math';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceFace = 1;
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice_face_$currentDiceFace.png',
          height: 200,
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              currentDiceFace = random.nextInt(6) + 1;
            });
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Icon(Icons.refresh),
              SizedBox(
                width: 10,
              ),
              Text(
                'Roll Dice',
                style: TextStyle(
                  fontSize: 20,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
