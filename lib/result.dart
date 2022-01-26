import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      'Quiz Completed Successfully!!',
      style: TextStyle(
        fontSize: 28,
        color: Colors.green[800],
        fontWeight: FontWeight.bold,
      ),
    ));
  }
}
