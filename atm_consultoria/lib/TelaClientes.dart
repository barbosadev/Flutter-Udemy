import 'package:flutter/material.dart';

class TelaClientes extends StatefulWidget {
  @override
  _TelaClientesState createState() => _TelaClientesState();
}

class _TelaClientesState extends State<TelaClientes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clientes"),
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Image.asset("images/detalhe_cliente.png"),
                Text(
                  "Clientes",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Image.asset("images/cliente1.png"),
                    Text(
                      "Empresa de Software",
                      style: TextStyle(
                          fontSize: 16,
                          height: 1.5
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child:
                      Image.asset("images/cliente2.png"),
                    ),
                    Text(
                        "Empresa de Auditoria",
                      style: TextStyle(
                          fontSize: 16,
                          height: 1.5
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}