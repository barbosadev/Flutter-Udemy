import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _preco = 0.0;

  _valorBitcoin() async{

    String url = "https://blockchain.info/ticker";
    http.Response response;

    response = await http.get(url);
    Map<String, dynamic> retorno = json.decode(response.body);

    setState(() {
      _preco = retorno["BRL"]["last"];
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset("images/bitcoin.png"),
            Padding(
              padding: EdgeInsets.only(top: 18),
            ),
            Text(
              "R\$  ${_preco.toString()}",
              style: TextStyle(
                fontSize: 28
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 18),
            ),
            RaisedButton(
              child: Text(
                "Atualizar",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
                ),
              ),
              onPressed: _valorBitcoin,
              color: Colors.orange,
            )

          ],
        ),
      ),
    );
  }
}
