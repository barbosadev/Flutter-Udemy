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
        margin: EdgeInsets.only(top: 40),
        //color: Colors.white,
        child: Image.asset(
            "images/coding.png",
            fit: BoxFit.scaleDown,
        )
      )
  ));
}