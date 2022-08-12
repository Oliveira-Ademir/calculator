import 'package:calculator/components/display.dart';
import 'package:calculator/components/keyboard.dart';
import 'package:calculator/models/memory.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final Memory memory = Memory();

  _onPressed(String command) {
    setState(() {
      memory.applyCommand(command);
    });
  }

  //final String _title = 'Calculadora';

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return Scaffold(
      body: Column(
        children: <Widget>[
          Display(
            memory.value,
            text: memory.value,
          ),
          Keyboard(
            cb: _onPressed,
          )
        ],
      ),
    );
  }
}
