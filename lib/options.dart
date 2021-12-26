import 'package:flutter/material.dart';

class Options extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: null,
      style: ElevatedButton.styleFrom(
        primary: Colors.orange[700],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 15,
        side: BorderSide(color: Colors.black, width: 1),
        minimumSize: Size(180, 50),
      ),
    );
  }
}
