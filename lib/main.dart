import 'package:flutter/material.dart';
import './question.dart';
import './awnser.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionsIndex = 0;
  final questions = const [
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
        _questionsIndex = _questionsIndex < questions.length ? _questionsIndex + 1 : 0;
      });
      print('update index');
    }
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
          title: Text("Hello World Survey!")),
      body: _questionsIndex < questions.length ? Column(
        children: [
          Question(questions[_questionsIndex]['questionText']),
          ...(questions[_questionsIndex]['awnsers'] as List<String>).map((userChoice){
            return Awnser(_awnserQuestion, userChoice);
          }).toList(),
          Text('Question number: $_questionsIndex')
        ]) : Center(child: Text('You finish Survey!')),
    ));
  }
}