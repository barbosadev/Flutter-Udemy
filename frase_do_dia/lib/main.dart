import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "Frases do dia",
      home: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Text(
              "Lorem Ipsum",
              style: TextStyle(
                fontSize: 40,
                color: Colors.black45,
                fontWeight: FontWeight.w800,
                letterSpacing: 10,
                decoration: TextDecoration.none
              ),
              textAlign: TextAlign.center,
            ),
            FlatButton(
              onPressed: (){
                print("Botão Pressionado");
              },
              child: Text(
                  "Botão",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.black45,
                  decoration: TextDecoration.none
                ),
              ),
              
            ),
          ],
        ),
      )
  ));
}