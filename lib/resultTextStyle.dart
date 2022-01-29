import 'package:flutter/material.dart';

class MyStyle extends StatelessWidget {
  var msg, fontSize, color, fontWeight;
  MyStyle(this.msg, this.fontSize, this.color, this.fontWeight);
  @override
  Widget build(BuildContext context) {
    return Text(
      msg,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
}
