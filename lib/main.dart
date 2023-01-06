import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Center(child: Text('Dice App')),
          backgroundColor: Colors.lightBlue,
        ),
        body: DicePage(),
      ),
    ),
  );
}

// class DicePage extends StatelessWidget {
//
//
// }

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int RandomDieLeft = 1;
  int RandomDieRight = 1;

  void setDice() {
    RandomDieRight = Random().nextInt(6) + 1;
    RandomDieLeft = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  setDice();
                });
              },
              child: Image.asset('images/dice$RandomDieLeft.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  setDice();
                });
              },
              child: Image.asset('images/dice$RandomDieRight.png'),
            ),
          )
        ],
      ),
    );
  }
}
