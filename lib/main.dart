//import 'package:calculator/screens/imc.dart';
import 'package:calculator/models/drawer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HiddenDrawer(),
    );
  }
}
