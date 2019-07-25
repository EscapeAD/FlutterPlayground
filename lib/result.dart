import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;
  Result(this.resultScore, this.resetQuiz);

  String get resultPhase {
    String resultString;
    if (resultScore <= 4) {
      resultString = 'you suck';
    } else if (resultScore <= 7) {
      resultString = 'your poo';
    } else if (resultScore <= 22) {
      resultString = 'your magic';
    } else {
      resultString = 'you broke';
    }
    return resultString;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[Text(resultPhase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center),
            FlatButton(child: Text('Reset Quiz'), onPressed: resetQuiz)]
    ));
  }
}
