import 'package:flutter/material.dart';

import 'package:dice_roller_app/screens/home_screen.dart';

void main() => runApp(const DiceRollerApp());

class DiceRollerApp extends StatelessWidget {
  const DiceRollerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
