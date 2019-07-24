import 'package:flutter/material.dart';

class Awnser extends StatelessWidget {
  final Function selectHandler;
  final String awnserText;

  Awnser(this.selectHandler, this.awnserText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(awnserText),
        onPressed: selectHandler,
      )
    );
  }
}
