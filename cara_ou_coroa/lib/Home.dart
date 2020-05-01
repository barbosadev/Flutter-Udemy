import 'dart:math';
import 'package:cara_ou_coroa/Resultado.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void _gerarResultado(){
    var _itens = ['cara', 'coroa'];
    int _numero = Random().nextInt(2);
    _abrirResultado(_itens[_numero]);
  }

  void _abrirResultado(resultado){
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Resultado(resultado)
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/logo.png"),
              Padding(
                padding: EdgeInsets.only(top: 30),
              ),
              GestureDetector(
                  child: Image.asset("images/botao_jogar.png"),
                  onTap: _gerarResultado
              )
            ],
          ),
        )
      )
    );
  }
}