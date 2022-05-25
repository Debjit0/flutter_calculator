import 'package:flutter/material.dart';

class outputScreen extends StatelessWidget {
  String text;
  outputScreen({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 300,
        color: Colors.black,
        child: Container(
          alignment: Alignment.centerRight,
          padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 60),
          ),
        ));
  }
}
