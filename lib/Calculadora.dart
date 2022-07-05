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
      body: new Container(
        padding: const EdgeInsets.all(40), //PREENCHIMENTO DAS LATERAIS
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Texto que mostra resultado do cálculo
            new Text(
              "Resultado: VARIAVEL_RESULTADO",
              style: new TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange),
            ),
            //CAMPO DE TEXTO(input valor 1)
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Informe o valor 1"),
              //controller: t1,
            ),
            //CAMPO DE TEXO (input do valor 2)
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Informe o falor 2"),
              //controller: t2,
            )
          ],
        ),
      ),
    );
  } //Fecha o método build
}//Fecha a classe CalculadoraState
//NADA DEVE SER ADD DEPOIS DO RETURN, POIS NÃO SERÁ LIDO