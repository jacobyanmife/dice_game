import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int LeftDiceNumber = 3;
  int RightDiceNumber = 3;

  void ChangeDiceNumber() {
    setState(() {
      LeftDiceNumber = Random().nextInt(6)+1;
      RightDiceNumber = Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: [
        Expanded(
          child: FlatButton(
            onPressed:(){
              ChangeDiceNumber();
            },
            child: Image.asset('images/dice$LeftDiceNumber.png'),
          ),
        ),
        Expanded(
          child: FlatButton(
            onPressed:(){
             ChangeDiceNumber();
            },
            child: Image.asset('images/dice$RightDiceNumber.png'),
          ),
        ),
      ]),
    );
  }
}
