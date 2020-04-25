import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Frase do Dia"),
          backgroundColor: Colors.black45,
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Text(
              "Conteudo Principal"
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.black26,
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text("Texto 1"),
                Text("Texto 2"),
                Text("Texto 3")
              ],
            ),
          ),
        ),
      )
  ));
}