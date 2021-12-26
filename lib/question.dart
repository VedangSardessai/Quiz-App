import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  @override
  String questionText;
  Question(this.questionText);

  Widget build(BuildContext context) {
    return Text(questionText,
        style: TextStyle(
          color: Colors.black,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ));
  }
}
