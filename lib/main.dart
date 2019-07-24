import 'package:flutter/material.dart';
import './question.dart';

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
    'What\'s your favorite colour?',
    'What\'s your favorite animal?',
  ];

  @override
  Widget build(BuildContext context) {
    void awnserQuestion() {
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
          Question(questions[_questionsIndex]),
          RaisedButton(
              child: Text('anwser 1'),
              onPressed: awnserQuestion
          ),
          RaisedButton(
              child: Text('anwser 2'),
              onPressed: () => print('clicked 2')
          ),
          RaisedButton(
              child: Text('anwser 3'),
              onPressed: () => print('clicked 3')
          ),
          Text('$_questionsIndex')
        ]),
    ));
  }
}