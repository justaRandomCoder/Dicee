import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: DicePage(),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  int diceNumberOne = 1;
  int diceNumberTwo = 2;
  void rollDice() {
    setState(() {
      diceNumberOne = Random().nextInt(6) + 1;
      diceNumberTwo = Random().nextInt(6) + 1;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Dicee'),
        ),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  rollDice();
                },
                child: Image.asset('images/dice$diceNumberOne.png'),
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Expanded(
              child: FlatButton(
                  onPressed: () {
                    rollDice();
                  },
                  child: Image.asset('images/dice$diceNumberTwo.png')),
            )
          ],
        ),
      ),
      backgroundColor: Colors.red,
    );
  }
}
