import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  Function answerQuestion;
  String answerText;
  Answer(this.answerQuestion,this.answerText);

  // void _answerQuestion() {
  //   print("Am the answer to your question");
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(this.answerText),
        onPressed: answerQuestion,
      ),
    );
  }
}
