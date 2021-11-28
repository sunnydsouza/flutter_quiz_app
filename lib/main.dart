import 'package:first_app/results.dart';
import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import 'quiz.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _quiz = [
    {
      'question': 'What is your favorite color',
      'options': [
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 6},
        {'text': 'Blue', 'score': 4}
      ]
    },
    {
      'question': 'What is your favorite day',
      'options': [
        {'text': 'Monday', 'score': 2},
        {'text': 'Wednesday', 'score': 4},
        {'text': 'Friday', 'score': 7}
      ]
    },
    {
      'question': 'What is your favorite snack',
      'options': [
        {'text': 'Bhel', 'score': 4},
        {'text': 'Fried chicken', 'score': 6},
        {'text': 'Burger', 'score': 7}
      ]
    },
  ];
  var _quizIndex = 0;
  int _totalScore = 0;
  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;
    setState(() {
      _quizIndex = _quizIndex + 1;
    });
    print('The score till now is :' + _totalScore.toString());

    // print("Am the answer to your question");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Sample questionare app'),
            ),
            body: _quizIndex < _quiz.length
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    questions: _quiz,
                    questionIndex: _quizIndex)
                : Results()));
  }
}
