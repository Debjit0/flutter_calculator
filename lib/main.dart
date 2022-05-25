import 'package:flutter/material.dart';
import 'package:flutter_calculator/pages/calculation.dart';

void main() {
  runApp(CalculatorApp());
}

class CalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter basic calculator',
      home: Scaffold(body: calculation()),
    );
  }
}
