import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void buttonTrigger({a, b}) {
    setState(() {
      var random = Random();

      var leftRandomNumber = random.nextInt(6) + 1;
      var rightRandomNumber = random.nextInt(6) + 1;

      leftDiceNumber = leftRandomNumber;
      rightDiceNumber = rightRandomNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('images/dice-$leftDiceNumber.png'),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('images/dice-$rightDiceNumber.png'),
                ),
              ),
            ],
          ),
          TextButton(
            onPressed: () {
              buttonTrigger(a: leftDiceNumber, b: rightDiceNumber);
            },
            child: Text(
              'Roll Dice',
              style: GoogleFonts.nunito(
                  textStyle: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              )),
            ),
          )
        ],
      ),
    );
  }
}
