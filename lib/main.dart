import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionsIndex = 0;
  int _totalScore = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your favorite colour?',
      'awnsers': [{'text':'Blue', 'score': 1 }, {'text':'Pink', 'score': 2 }, {'text':'White', 'score': 4 }, {'text':'Red', 'score': 3 }]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'awnsers': [{'text':'Dog', 'score': 1 }, {'text':'Cat', 'score': 2 }, {'text':'Bird', 'score': 4 }, {'text':'Bug', 'score': 3 }]
    },
    {
      'questionText': 'What\'s your favorite movie?',
      'awnsers': [{'text':'FaceOff', 'score': 1 }, {'text':'FaceBook', 'score': 2 }, {'text':'Donkey Punch', 'score': 4 }, {'text':'Uhh', 'score': 3 }]
    },
  ];

  @override
  Widget build(BuildContext context) {
    void _awnserQuestion(int score) {
      setState(() {
        _questionsIndex = _questionsIndex < _questions.length ? _questionsIndex + 1 : 0;
        _totalScore += score;
      });
      print('update index');
    }
    void _resetQuiz () {
      setState(() {
        _questionsIndex = 0;
        _totalScore = 0;
      });
      print('update index');
    }
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
          title: Text("Hello World Survey!")),
      body: _questionsIndex < _questions.length ?
          Quiz(
              questions: _questions,
              questionsIndex: _questionsIndex,
              awnserQuestion: _awnserQuestion)
          : Result(_totalScore, _resetQuiz),
    ));
  }
}