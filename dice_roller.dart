import 'package:flutter/material.dart';
import 'dart:math';

final randamizor = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

//Private class - down
class _DiceRollerState extends State<DiceRoller> {
  // activeDiceImage = 'assets/images/$dicenum-dice.png';;
  var dicenum = 2;

  void rollDice() {
    setState(() {
      dicenum = randamizor.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/$dicenum-dice.png'),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              // padding: const EdgeInsets.only(top: 20),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 28,
              )),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
