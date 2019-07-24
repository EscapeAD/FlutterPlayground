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
  var questions = [
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
        _questionsIndex = _questionsIndex + 1 < questions.length ? _questionsIndex + 1 : _questionsIndex;
      });
      print('update index');
    }
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
          title: Text("Hello World")),
      body: Column(
        children: [
          Question(questions[_questionsIndex]['questionText']),
          ...(questions[_questionsIndex]['awnsers'] as List<String>).map((awnser){
            return Awnser(_awnserQuestion, awnser);
          }).toList(),
          Text('Question number: $_questionsIndex')
        ]),
    ));
  }
}