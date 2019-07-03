import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyQuiz());

class MyQuiz extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyQuizState();
  }
}

class _MyQuizState extends State<MyQuiz> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Snake', 'score': 10},
        {'text': 'Lion', 'score': 5},
        {'text': 'Cat', 'score': 3},
        {'text': 'Dog', 'score': 1},
      ],
    },
    {
      'questionText': 'Who\'s your favorite football player?',
      'answers': [
        {'text': 'Messi', 'score': 0},
        {'text': 'Cristiano', 'score': 5},
        {'text': 'Mbappe', 'score': 3},
        {'text': 'Neymar', 'score': 10},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz(){
    setState(() {
    _questionIndex = 0;
    _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore,_resetQuiz),
      ),
    );
  }
}
