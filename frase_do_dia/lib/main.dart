import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeStateful(),
  ));
}


class HomeStateful extends StatefulWidget {
  @override
  _HomeStatefulState createState() => _HomeStatefulState();
}

class _HomeStatefulState extends State<HomeStateful> {

  var _texto = "Frase do Dia";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frase do Dia"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: (){
                setState(() {
                  _texto = "Curso Flutter";
                });
              },
              child: Text("Clique Aqui"),
              color: Colors.green,
            ),
            Text("Nome: $_texto")
          ],
        ),
      ),
    );
  }
}