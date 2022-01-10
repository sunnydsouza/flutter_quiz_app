import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  int score;
  Function resetQuiz;
  Results(this.resetQuiz,this.score);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          margin: EdgeInsets.all(10),
          child: Center(
              child: Text(
            'No more questions.\nThanks for your time!\n Your total score is ${score}',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25),
          )),
        ),
        FlatButton(onPressed: resetQuiz, child: Text('Reset quiz'))
      ],
    );
  }
}
