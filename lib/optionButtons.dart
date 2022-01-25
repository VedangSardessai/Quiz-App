import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class OptionButtons extends StatelessWidget {
  @override
  final Function selectHandler;
  final String answerText;

  OptionButtons(this.selectHandler, this.answerText);

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      child: ElevatedButton(
        child: Text(answerText,
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            )),
        style: ElevatedButton.styleFrom(
          primary: Colors.orange[700],
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          elevation: 10,
          minimumSize: Size(250, 80),
        ),
        onPressed: selectHandler,
      ),
    );
  }
}
