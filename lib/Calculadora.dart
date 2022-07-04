import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  @override
  State createState() => new CalculadoraState();
}

class CalculadoraState extends State<Calculadora> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(":: Calculadora - Simples ::"),
      ),
      body: new Container(),
    );
  } //Fecha o método build
}//Fecha a classe CalculadoraState
//NADA DEVE SER ADD DEPOIS DO RETURN, POIS NÃO SERÁ LIDO