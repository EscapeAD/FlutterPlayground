import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void anwserQuestion() {
      print('clicked 1');
    }
    var questions = [
      'What\'s your favorite colour?',
      'What\'s your favorite animal?',
    ];
    return MaterialApp(home: Scaffold(
      appBar: AppBar(
          title: Text("Hello World")),
      body: Column(
        children: [
          Text('Questions'),
          RaisedButton(
              child: Text('anwser 1'),
              onPressed: anwserQuestion
          ),
          RaisedButton(
              child: Text('anwser 2'),
              onPressed: () => print('clicked 2')
          ),
          RaisedButton(
              child: Text('anwser 3'),
              onPressed: () => print('clicked 3')
          ),
        ]),
    ));
  }
}