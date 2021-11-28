import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  Function answerQuestion;
  Quiz({@required this.answerQuestion, @required this.questions, @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['question']),
        ...(questions[questionIndex]['options'] as List<Map<String,Object>>).map((o) {
          return Answer(() => answerQuestion(o['score']), o['text']);
        }).toList(),
        // Answer(_answerQuestion, 'test button 1'),
      ],
    );
  }
}
