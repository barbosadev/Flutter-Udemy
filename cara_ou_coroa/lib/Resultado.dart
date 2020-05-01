import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {

  String result;
  Resultado(this.result);

  @override
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff61bd86),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset("images/moeda_"+ widget.result +".png"),
          Padding(
            padding: EdgeInsets.only(top: 30),
          ),
          GestureDetector(
            child: Image.asset("images/botao_voltar.png"),
            onTap: (){
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
