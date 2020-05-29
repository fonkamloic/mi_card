import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'quiz_brain.dart';

class Quizzler extends StatefulWidget {
  @override
  _QuizzlerState createState() => _QuizzlerState();
}

QuizBrain quizBrain = new QuizBrain();
int total = quizBrain.numberOfQuestion();
int score = 0;

class _QuizzlerState extends State<Quizzler> {
  List<Icon> scoreKeeper = [];

  Icon pass = Icon(
    Icons.check,
    color: Colors.green,
  );

  Icon fail = Icon(
    Icons.close,
    color: Colors.red,
  );

  checkAnswer(bool pressed) {
    if (quizBrain.numberOfQuestion() == quizBrain.questionNumber()) {
      Alert(
              context: context,
              title: "Finished!",
              desc:
                  "You've reached the end of the quiz. Your score is $score/$total")
          .show();
      setState(() {
        scoreKeeper.clear();
        quizBrain.reset();
        score = 0;
      });
      return;
    }
    if (quizBrain.getQuestionAnswer() == pressed) {
      setState(() {
        scoreKeeper.add(pass);
        quizBrain.questionNext();
        score++;
      });
    } else {
      setState(() {
        scoreKeeper.add(fail);
        quizBrain.questionNext();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        appBar: AppBar(
          title: Text('Quizzler'),
          backgroundColor: Colors.grey.shade800,
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Center(
                      child: Text(
                        quizBrain.getQuestion(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: FlatButton(
                      textColor: Colors.white,
                      color: Colors.green,
                      child: Text(
                        'True',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                      onPressed: () {
                        checkAnswer(true);
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: FlatButton(
                      color: Colors.red,
                      child: Text(
                        'False',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        checkAnswer(false);
                      },
                    ),
                  ),
                ),
                Row(
                  children: scoreKeeper,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
