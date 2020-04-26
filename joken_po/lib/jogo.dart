import 'dart:math';

import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {

  var _imagemApp = AssetImage("images/padrao.png");
  var _mensagem = Text(
    "Escolha uma opção abaixo",style: TextStyle(
    fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.black
    ),
  );

  void _opcaoSelecionada(String escolhaUsuario){
    var _opcoes = ['pedra', 'papel', 'tesoura'];
    var _numero = Random().nextInt(3);
    var _escolhaApp = _opcoes[_numero];
    setState(() {
      this._imagemApp = AssetImage("images/$_escolhaApp.png");

      if((escolhaUsuario == "pedra" && _escolhaApp == "tesoura") ||
         (escolhaUsuario == "papel" && _escolhaApp == "pedra") ||
         (escolhaUsuario == "tesoura" && _escolhaApp == "papel")
      ){
        this._mensagem = Text(
            "Você venceu! :D",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.green
            ),
        );
      } else if (
          (escolhaUsuario == "pedra" && _escolhaApp == "papel") ||
          (escolhaUsuario == "papel" && _escolhaApp == "tesoura") ||
          (escolhaUsuario == "tesoura" && _escolhaApp == "pedra")
      ){
        this._mensagem = Text(
          "Você perdeu :(",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.red
          ),
        );
      } else {
        this._mensagem = Text(
          "Houve um empate!",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.amber
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jokenpo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              "Escolha do App:",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
            Image(image: this._imagemApp),
            _mensagem,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: () => _opcaoSelecionada("pedra"),
                  child: Image.asset("images/pedra.png", height: 100),
                ),
                GestureDetector(
                  onTap: () => _opcaoSelecionada("papel"),
                  child: Image.asset("images/papel.png", height: 100),
                ),
                GestureDetector(
                  onTap: () => _opcaoSelecionada("tesoura"),
                  child: Image.asset("images/tesoura.png", height: 100),
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}

