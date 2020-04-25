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
        margin: EdgeInsets.only(top: 30),
        //color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text("t1"),
                Text("t2"),
                Text("t3"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text("t4"),
                Text("t5"),
                Text("t6"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text("t7"),
                Text("t8"),
                Text("t9"),
              ],
            ),

          ],
        ),
      )
  ));
}