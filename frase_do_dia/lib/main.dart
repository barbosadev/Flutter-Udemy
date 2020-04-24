import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Frases do dia",
      home: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 3, color: Colors.blue)
        ),
        padding: EdgeInsets.fromLTRB(10, 60, 10, 0),
        margin: EdgeInsets.all(30),
        //color: Colors.white,
        child: Column(
          children: <Widget>[
            Text(
              "Lorem Ipsum",
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
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
                  color: Colors.white,
                  decoration: TextDecoration.none
                ),
              ),
            ),
            Text("t1"),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Text("t2"),
            ),
            Text("t3"),
          ],
        ),
      )
  ));
}