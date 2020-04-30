import 'package:flutter/material.dart';

class TelaContato extends StatefulWidget {
  @override
  _TelaContatoState createState() => _TelaContatoState();
}

class _TelaContatoState extends State<TelaContato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contato"),
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Image.asset("images/detalhe_contato.png"),
                Text(
                  "Contato",
                  style: TextStyle(
                    fontSize: 22
                  ),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Text(
                  "E-mail: consultoria@atm.com.br\n\nTelefone: (11) 3333-2222"
                  "\nCelular: (11) 2222-3333",
                  style: TextStyle(
                      fontSize: 16,
                      height: 1.5
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
