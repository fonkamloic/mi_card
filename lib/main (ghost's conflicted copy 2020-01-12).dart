import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quizzler.dart';
import 'xylophone.dart';
import 'dice.dart';
import 'eightball.dart';

void main() {
  runApp(
    MaterialApp(
      home: Mi_card(),
    ),
  );
}

class Mi_card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 60.0,
                backgroundImage: AssetImage(
                  "assets/images/loic.jpg",
                ),
              ),
              Text(
                'Fonkam Loic',
                style: TextStyle(
                  fontFamily: 'Zhi',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 24.0,
                  color: Colors.teal.shade900,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.0,
                width: 150,
                child: Divider(
                  color: Colors.teal.shade900,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  title: Text(
                    '+237 699549092',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'SourceSansPro',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'fonkamloic@gmail.com',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'SourceSansPro',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    child: Text('Dice'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => DicePage()));
                    },
                    color: Colors.teal.shade100,
                    textColor: Colors.teal.shade900,
                    padding: EdgeInsets.all(20),
                    splashColor: Colors.teal.shade400,
                  ),
                  RaisedButton(
                    child: Text('8_Ball'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => EightBall()));
                    },
                    color: Colors.teal.shade100,
                    textColor: Colors.teal.shade900,
                    padding: EdgeInsets.all(20),
                    splashColor: Colors.teal.shade400,
                  ),
                  RaisedButton(
                    child: Text('Xylophone'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Xylophone()));
                    },
                    color: Colors.teal.shade100,
                    textColor: Colors.teal.shade900,
                    padding: EdgeInsets.all(20),
                    splashColor: Colors.teal.shade400,
                  ),
                  RaisedButton(
                    child: Text('Quizzler'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Quizzler()));
                    },
                    color: Colors.teal.shade100,
                    textColor: Colors.teal.shade900,
                    padding: EdgeInsets.all(20),
                    splashColor: Colors.teal.shade400,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
