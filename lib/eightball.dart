import 'dart:math';

import 'package:flutter/material.dart';

class EightBall extends StatefulWidget {
  @override
  _EightBallState createState() => _EightBallState();
}

class _EightBallState extends State<EightBall> {
  int number = new Random().nextInt(5) + 1;
  changeBall() {
    setState(() {
      number = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue[200],
        appBar: AppBar(
          title: Text("Ask Me AnyThing"),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed: () => changeBall(),
              child: Image.asset("assets/images/ball$number.png"),
            ),
          ],
        ),
      ),
    );
  }
}
