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
        body: DicePage(
          leftDiceNumber: 1,
          rightDiceNumber: 1,
        ),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  final int leftDiceNumber;
  final int rightDiceNumber;

  DicePage({
    Key key,
    @required this.leftDiceNumber,
    @required this.rightDiceNumber,
  }) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftNumber;
  int rightNumber;

  @override
  void initState() {
    super.initState();
    leftNumber = widget.leftDiceNumber;
    rightNumber = widget.rightDiceNumber;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    leftNumber = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset('images/dice$leftNumber.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    rightNumber = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset('images/dice$rightNumber.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
