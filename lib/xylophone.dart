import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

class Xylophone extends StatefulWidget {
  @override
  _XylophoneState createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  void playsound(int num) {
    final player = AudioCache();
    player.play('sounds/note$num.wav');
  }

  Expanded tile({int soundNumber, Color color}) {
    return Expanded(
      child: FlatButton(
        onPressed: () => playsound(soundNumber),
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              tile(soundNumber: 1, color: Colors.red),
              tile(soundNumber: 2, color: Colors.orange),
              tile(soundNumber: 3, color: Colors.yellow),
              tile(soundNumber: 4, color: Colors.green),
              tile(soundNumber: 5, color: Colors.teal),
              tile(soundNumber: 6, color: Colors.lightBlue),
              tile(soundNumber: 7, color: Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
