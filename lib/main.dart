import 'package:flutter/material.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionsIndex = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your favorite colour?',
      'awnsers': ['Blue', 'Red', 'Black', 'none']
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'awnsers': ['Dog', 'Cat', 'Bird', 'none']
    },
    {
      'questionText': 'What\'s your favorite movie?',
      'awnsers': ['Matrix', 'Faceoff', 'Fight Club', 'none']
    },
  ];

  @override
  Widget build(BuildContext context) {
    void _awnserQuestion() {
      setState(() {
        _questionsIndex = _questionsIndex < _questions.length ? _questionsIndex + 1 : 0;
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
          : Center(child: Text('You finish Survey!')),
    ));
  }
}