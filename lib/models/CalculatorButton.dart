import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  late String label;
  late VoidCallback ontap;
  late double size;
  late Color? backgroundColor;
  late Color? labelColor;

  CalculatorButton({
    required this.label,
    required this.ontap,
    required this.size,
    this.backgroundColor = Colors.amber,
    this.labelColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 2.5, 0, 2.5),
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(20),
        ),
        //color: backgroundColor,
        child: InkWell(
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                  fontSize: 35, fontWeight: FontWeight.bold, color: labelColor),
            ),
          ),
          onTap: ontap,
        ),
      ),
    );
  }
}
