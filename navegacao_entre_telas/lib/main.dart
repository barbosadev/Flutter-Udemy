import 'package:flutter/material.dart';
import 'package:navegacao_entre_telas/TelaSecundaria.dart';

void main() => runApp(MaterialApp(
  home: TelaPrincipal(),
  debugShowCheckedModeBanner: false,
));

class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Principal"),
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: <Widget>[
            Center(
              child:
                RaisedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TelaSecundaria()
                      )
                    );
                  },
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Text(
                    "Segunda Tela",
                    style: TextStyle(
                        fontSize: 20
                    ),
                  ),
                ),
            )
          ],
        ),
      ),
    );
  }
}