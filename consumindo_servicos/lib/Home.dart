import 'dart:math';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  _recuperarCep() async {

    String url = "https://viacep.com.br/ws/01311300/json/";
    http.Response response;

    response = await http.get(url);
    Map<String, dynamic> retorno = json.decode(response.body);
    String logradouro = retorno["logradouro"];
    String complemento = retorno["complemento"];
    String bairro = retorno["bairro"];
    String localidade = retorno["localidade"];

    print("$logradouro\n$complemento\n$bairro\n$localidade");

    //print("resposta: " + logradouro);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Consumo de Serviço da Web"),
      ),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text(
                "Clique Aqui",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22
                ),
              ),
              color: Colors.blue,
              onPressed: _recuperarCep,
            )
          ],
        ),
      ),
    );
  }
}
