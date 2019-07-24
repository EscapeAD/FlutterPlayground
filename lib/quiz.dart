import 'package:flutter/material.dart';
import './question.dart';
import './awnser.dart';

class Quiz extends StatelessWidget {
  final int questionsIndex;
  final List<Map<String, Object>> questions;
  final Function awnserQuestion;

  Quiz({@required this.questions, @required this.questionsIndex, @required this.awnserQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Question(questions[questionsIndex]['questionText']),
          ...(questions[questionsIndex]['awnsers'] as List<String>).map((userChoice){
            return Awnser(awnserQuestion, userChoice);
          }).toList(),
          Text('Question number: $questionsIndex')
        ]);
  }
}
