import 'dart:math';

import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = new Random().nextInt(6) + 1;
  int rightDiceNumber = new Random().nextInt(6) + 1;

  random() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade200,
        appBar: AppBar(
          title: Text("Dicee"),
          backgroundColor: Colors.teal.shade300,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: FlatButton(
                    onPressed: () => random(),
                    child: Image.asset('assets/images/dice$leftDiceNumber.png'),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () => random(),
                    child:
                        Image.asset('assets/images/dice$rightDiceNumber.png'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Go back"),
            )
          ],
        ),
      ),
    );
  }
}
