import 'package:flutter/material.dart';

import './question.dart';
import './answers.dart';

void main() => runApp(MyQuizApp());

class MyQuizApp extends StatefulWidget {
  @override
  _MyQuizAppState createState() => _MyQuizAppState();
}

class _MyQuizAppState extends State<MyQuizApp> {
  var _questionIndex = 0;

  var questions = [
    {
      "questionText": "What\'s your favourite color?",
      "answers": ["Black", "Red", "Green", "White"]
    },
    {
      "questionText": "What\'s your favourite animal?",
      "answers": ["Cat", "Dog", "Fish", "Monkey"]
    },
    {
      "questionText": "Who\'s your favourite player?",
      "answers": ["Bale", "Cristiano", "Neymar", "Messi"]
    },
  ];

  _answerQuestion(ans) {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print('Answer Chosen: ' + ans);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: Column(
          children: <Widget>[
            Question(
              questions[_questionIndex]["questionText"],
            ),
            ...(questions[_questionIndex]["answers"] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
