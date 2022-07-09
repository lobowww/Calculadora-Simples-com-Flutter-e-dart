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
              "Resultado: $resultado",
              style: new TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange),
            ),
            //CAMPO DE TEXTO(input valor 1)
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Informe o valor 1"),
              controller: t1,
            ),
            //CAMPO DE TEXTO (input do valor 2)
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Informe o falor 2"),
              controller: t2,
            ),
            //Espaçamento depois dos inputs
            new Padding(padding: const EdgeInsets.only(top: 20)),

            //Nova linha(row)

            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  //child: new Text("+"),
                  child: new Text(
                    "+",
                    style: new TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  color: Colors.deepOrangeAccent,
                  onPressed:
                      somar, //Se tornou uma palavra reservada por conta do setState
                )
              ],
            ),

            new Padding(padding: const EdgeInsets.only(top: 20)),

            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text(
                    "-",
                    style: new TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  color: Colors.deepOrangeAccent,
                  onPressed:
                      subtrair, //Se tornou uma palavra reservada por conta do setState
                )
              ],
            ),

            new Padding(padding: const EdgeInsets.only(top: 20)),

            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text(
                    "*",
                    style: new TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  color: Colors.deepOrangeAccent,
                  onPressed:
                      multiplicar, //Se tornou uma palavra reservada por conta do setState
                )
              ],
            ),

            new Padding(padding: const EdgeInsets.only(top: 20)),

            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text(
                    "/",
                    style: new TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  color: Colors.deepOrangeAccent,
                  onPressed:
                      dividir, //Se tornou uma palavra reservada por conta do setState
                )
              ],
            ),

            //Espaçamento depois dos botões
            new Padding(padding: const EdgeInsets.only(top: 20)),

            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                    child: new Text("Clear"),
                    color: Colors.grey,
                    onPressed: limpar)
              ],
            ),
          ],
        ),
      ),
    );
  } //Fecha o método build

  //Atributos
  dynamic num1;
  dynamic num2;
  dynamic resultado = 0;

  TextEditingController t1 = new TextEditingController(text: "");
  TextEditingController t2 = new TextEditingController(text: "");

  //Métodos
  void somar() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      resultado = num1 + num2;
    });
  }

  void subtrair() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      resultado = num1 - num2;
    });
  }

  void multiplicar() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      resultado = num1 * num2;
    });
  }

  void dividir() {
    setState(() {
      num1 = double.parse(t1.text);
      num2 = double.parse(t2.text);
      resultado = num1 / num2;
    });
  }

  void limpar() {
    setState(() {
      t1.text = "";
      t2.text = "";
      resultado = 0;
    });
  }
}//Fecha a classe CalculadoraState
//NADA DEVE SER ADD DEPOIS DO RETURN, POIS NÃO SERÁ LIDO