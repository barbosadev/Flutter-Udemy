import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeStateful(),
  ));
}


class HomeStateful extends StatefulWidget {
  @override
  _HomeStatefulState createState() => _HomeStatefulState();
}

class _HomeStatefulState extends State<HomeStateful> {

  List _frases = [
    "Gratidão não é pagamento, mas um reconhecimento que se demonstra no dia a dia.",
    "Os melhores momentos na vida são como os arcos-íris: aparecem quando você menos espera.",
    "Às vezes pequenas palavras dizem grandes coisas.",
    "Jamais deixe que a sua felicidade dependa dos outros. Eles não deixariam de ser felizes por você.",
    "Nada sai da nossa vida sem antes nos ensinar o que precisamos aprender."
  ];
  var _frase = "Clique abaixo para gerar uma frase!";

  void gerarFrase(){
    var _numero = Random().nextInt(_frases.length);
    _frase = _frases[_numero];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset("images/logo.png"),
              Text(
                _frase,
                style: TextStyle(
                    fontSize: 24,
                    fontStyle: FontStyle.italic
                ),
                textAlign: TextAlign.justify,
              ),
              RaisedButton(
                onPressed: (){
                  setState(() {
                    gerarFrase();
                  });
                },
                child: Text(
                    'Nova Frase',
                    style: TextStyle(
                      fontSize: 20
                    ),
                ),
                color: Colors.green,
                textColor: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}