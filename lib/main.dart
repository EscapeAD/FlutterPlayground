import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int questionsIndex = 0;
  var questions = [
    'What\'s your favorite colour?',
    'What\'s your favorite animal?',
  ];

  @override
  Widget build(BuildContext context) {
    void awnserQuestion() {
      setState(() {
        questionsIndex = questionsIndex + 1 < questions.length ? questionsIndex + 1 : questionsIndex;
      });
      print('update index');
    }
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
          title: Text("Hello World")),
      body: Column(
        children: [
          Text(questions[questionsIndex]),
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
          Text('$questionsIndex')
        ]),
    ));
  }
}