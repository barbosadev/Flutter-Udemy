import 'package:flutter/material.dart';

class TelaServicos extends StatefulWidget {
  @override
  _TelaServicosState createState() => _TelaServicosState();
}

class _TelaServicosState extends State<TelaServicos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Serviços"),
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Image.asset("images/detalhe_servico.png"),
                Text(
                  "Nossos Serviços",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text(
                  "Consultoria\n\nPreços\nAcompanhamento de Projetos",
                  style: TextStyle(
                      fontSize: 16,
                      height: 1.5
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
