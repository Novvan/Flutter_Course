import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerQuestion;
  final String answerText;

  Answer(this.answerQuestion, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        onPressed: () {
          answerQuestion(answerText);
        },
        child: Text(answerText),
        color: Theme.of(context).primaryColor,
        textColor: Colors.white,
      ),
      margin: EdgeInsets.only(top: 5),
      width: double.infinity,
    );
  }
}
