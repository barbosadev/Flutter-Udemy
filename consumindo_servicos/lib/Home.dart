import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController _controllerCep = TextEditingController();
  var _retorno = "";
  _recuperarCep() async {

    String url = "https://viacep.com.br/ws/"+ _controllerCep.text +"/json";
    http.Response response;

    response = await http.get(url);
    Map<String, dynamic> retorno = json.decode(response.body);
    String logradouro = retorno["logradouro"];
    String complemento = retorno["complemento"];
    String bairro = retorno["bairro"];
    String localidade = retorno["localidade"];

    setState(() {
      _retorno = "$logradouro\n$complemento\n$bairro\n$localidade";
    });

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
            TextField(
              keyboardType: TextInputType.number,
              maxLength: 8,
              decoration: InputDecoration(
                labelText: "CEP"
              ),
              controller: _controllerCep,
            ),
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
            ),
            Text(
              _retorno
            )
          ],
        ),
      ),
    );
  }
}
