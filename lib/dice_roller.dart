import 'package:flutter/material.dart';
import 'dart:math';

//to avoid the redunduncy of creation objects with Random function
final randomizer   = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceRoll = 2;
  //button funcionality
  void rollDice() {
    setState(() {
      activeDiceRoll = randomizer.nextInt(6) + 1; // 1 <> 6
    });

    //print('changing Image ..');
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min, //to center the dice vertically
      children: [
        Image.asset(
          'assets/images/dice-$activeDiceRoll.png',
          width: 200,
        ), //StyledText()
        //Alternative to style like that --- add additional space using
        //const SizeBox(heigth:20)
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                padding: const EdgeInsets.only(top: 20),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 28,
                )),
            child: const Text('Roll Dice'))
      ],
    );
  }
}
