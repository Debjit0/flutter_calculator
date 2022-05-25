import 'package:flutter/material.dart';
import 'package:flutter_calculator/models/CalculatorButton.dart';
import 'package:flutter_calculator/pages/outputScreen.dart';

class calculation extends StatefulWidget {
  const calculation({Key? key}) : super(key: key);

  @override
  State<calculation> createState() => _calculationState();
}

class _calculationState extends State<calculation> {
  double result = 0;
  late double firstNum = 0;
  late double secondNum = 0;
  String textToDisplay = '0';
  late String operation;
  late String btnText;
  late String newText;

  btnOnClick(String btnVal) {
    print(btnVal);
    if (btnVal == '0') {
      firstNum = (firstNum * 10) + 0;
      print(firstNum);
      setState(() {
        textToDisplay = firstNum.toString();
      });
      outputScreen(text: textToDisplay);
    } else if (btnVal == '1') {
      firstNum = (firstNum * 10) + 1;
      print(firstNum);
      setState(() {
        textToDisplay = firstNum.toString();
      });
      outputScreen(text: textToDisplay);
    } else if (btnVal == '2') {
      firstNum = (firstNum * 10) + 2;
      print(firstNum);
      setState(() {
        textToDisplay = firstNum.toString();
      });
      outputScreen(text: textToDisplay);
    } else if (btnVal == '3') {
      firstNum = (firstNum * 10) + 3;
      print(firstNum);
      setState(() {
        textToDisplay = firstNum.toString();
      });
      outputScreen(text: textToDisplay);
    } else if (btnVal == '4') {
      firstNum = (firstNum * 10) + 4;
      print(firstNum);
      setState(() {
        textToDisplay = firstNum.toString();
      });
      outputScreen(text: textToDisplay);
    } else if (btnVal == '5') {
      firstNum = (firstNum * 10) + 5;
      print(firstNum);
      setState(() {
        textToDisplay = firstNum.toString();
      });
      outputScreen(text: textToDisplay);
    } else if (btnVal == '6') {
      firstNum = (firstNum * 10) + 6;
      print(firstNum);
      setState(() {
        textToDisplay = firstNum.toString();
      });
      outputScreen(text: textToDisplay);
    } else if (btnVal == '7') {
      firstNum = (firstNum * 10) + 7;
      print(firstNum);
      setState(() {
        textToDisplay = firstNum.toString();
      });
      outputScreen(text: textToDisplay);
    } else if (btnVal == '8') {
      firstNum = (firstNum * 10) + 8;
      print(firstNum);
      setState(() {
        textToDisplay = firstNum.toString();
      });
      outputScreen(text: textToDisplay);
    } else if (btnVal == '9') {
      firstNum = (firstNum * 10) + 9;
      print(firstNum);
      setState(() {
        textToDisplay = firstNum.toString();
      });
      outputScreen(text: textToDisplay);
    } else if (btnVal == '+') {
      if (result == 0) result = firstNum;
      firstNum = 0;
      operation = "+";
      print(operation);
      print(firstNum);
      result = result + firstNum.toInt();
      print(result);
      setState(() {
        textToDisplay = firstNum.toString();
      });
      outputScreen(text: textToDisplay);
    } else if (btnVal == '-') {
      if (result == 0) result = firstNum;
      firstNum = 0;
      operation = "-";
      print(operation);
      print(firstNum);
      result = result - firstNum.toInt();
      print(result);
      setState(() {
        textToDisplay = firstNum.toString();
      });
      outputScreen(text: textToDisplay);
    } else if (btnVal == 'x') {
      if (result == 0) result = 1;
      secondNum = firstNum;
      firstNum = 0;
      operation = "*";
      print(operation);
      print(firstNum);
      result = result * secondNum.toInt();
      secondNum = 0;
      print(result);
      setState(() {
        textToDisplay = firstNum.toString();
      });
    } else if (btnVal == '/') {
      if (result == 0) result = 1;
      secondNum = firstNum;
      firstNum = 0;
      operation = "/";
      print(operation);
      print(secondNum);
      result = secondNum.toInt() / result;
      secondNum = 0;
      print(result);
      setState(() {
        textToDisplay = firstNum.toString();
      });
    } else if (btnVal == '=') {
      if (operation == '+') {
        result = result + firstNum.toInt();
        firstNum = secondNum = 0;
      }
      if (operation == '-') {
        result = result - firstNum.toInt();
        firstNum = secondNum = 0;
      }
      if (operation == '*') {
        result = result * firstNum.toInt();
        firstNum = secondNum = 0;
      }
      if (operation == '/') {
        result = result / firstNum.toInt();
        firstNum = secondNum = 0;
      }
      print(result);
      setState(() {
        textToDisplay = result.toString();
      });
      outputScreen(text: textToDisplay);
    } else if (btnVal == 'ac') {
      secondNum = 0;
      firstNum = 0;
      operation = '';
      result = 0;
      print(operation);
      print(firstNum);
      print(result);
      setState(() {
        textToDisplay = result.toString();
      });
      outputScreen(text: textToDisplay);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          outputScreen(text: textToDisplay),
          Wrap(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(5, 2.5, 5, 2.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CalculatorButton(
                      label: '7',
                      ontap: () {
                        btnOnClick('7');
                      },
                      size: 90,
                    ),
                    CalculatorButton(
                        label: '8',
                        ontap: () {
                          btnOnClick("8");
                        },
                        size: 90),
                    CalculatorButton(
                        label: '9',
                        ontap: () {
                          btnOnClick("9");
                        },
                        size: 90),
                    CalculatorButton(
                      labelColor: Colors.amber,
                      label: '-',
                      ontap: () {
                        btnOnClick('-');
                      },
                      size: 90,
                      backgroundColor: Color.fromARGB(255, 0, 50, 90),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(5, 2.5, 5, 2.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CalculatorButton(
                        label: '4',
                        ontap: () {
                          btnOnClick("4");
                        },
                        size: 90),
                    CalculatorButton(
                        label: '5',
                        ontap: () {
                          btnOnClick("5");
                        },
                        size: 90),
                    CalculatorButton(
                        label: '6',
                        ontap: () {
                          btnOnClick("6");
                        },
                        size: 90),
                    CalculatorButton(
                      labelColor: Colors.amber,
                      label: '+',
                      ontap: () {
                        btnOnClick('+');
                      },
                      size: 90,
                      backgroundColor: Color.fromARGB(255, 0, 50, 90),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(5, 2.5, 5, 2.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CalculatorButton(
                        label: '1',
                        ontap: () {
                          btnOnClick("1");
                        },
                        size: 90),
                    CalculatorButton(
                        label: '2',
                        ontap: () {
                          btnOnClick("2");
                        },
                        size: 90),
                    CalculatorButton(
                        label: '3',
                        ontap: () {
                          btnOnClick("3");
                        },
                        size: 90),
                    CalculatorButton(
                        labelColor: Colors.amber,
                        label: 'x',
                        ontap: () {
                          btnOnClick("x");
                        },
                        size: 90,
                        backgroundColor: Color.fromARGB(255, 0, 50, 90)),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(5, 2.5, 5, 2.5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CalculatorButton(
                      label: '0',
                      ontap: () {
                        btnOnClick("0");
                      },
                      size: 90,
                    ),
                    CalculatorButton(
                        labelColor: Colors.amber,
                        label: 'a/c',
                        ontap: () {
                          btnOnClick("ac");
                        },
                        size: 90,
                        backgroundColor: Color.fromARGB(255, 0, 50, 90)),
                    CalculatorButton(
                      labelColor: Colors.amber,
                      label: '=',
                      ontap: () {
                        btnOnClick("=");
                      },
                      size: 90,
                      backgroundColor: Color.fromARGB(255, 0, 50, 90),
                    ),
                    CalculatorButton(
                        labelColor: Colors.amber,
                        label: '/',
                        ontap: () {
                          btnOnClick("/");
                        },
                        size: 90,
                        backgroundColor: Color.fromARGB(255, 0, 50, 90)),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
