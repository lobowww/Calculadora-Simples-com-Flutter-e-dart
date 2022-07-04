import 'dart:html';

import 'package:calculator_simple/Calculadora.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Calculadora simples",
      theme: new ThemeData(primarySwatch: Colors.deepOrange),
      home: new Calculadora(),
    );
  }
}
