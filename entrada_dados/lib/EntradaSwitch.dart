import 'package:flutter/material.dart';

class EntradaSwitch extends StatefulWidget {
  @override
  _EntradaSwitchState createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {

  bool _receberNotificacoes = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de Dados")
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            SwitchListTile(
              value: _receberNotificacoes,
              onChanged: (bool valor){
                setState(() {
                  _receberNotificacoes = valor;
                });
              },
              title: Text("Receber notificações"),
            ),
            RaisedButton(
              onPressed: (){
                print('$_receberNotificacoes');
              },
              color: Colors.blue,
              textColor: Colors.white,
              child: Text(
                "Salvar",
                style: TextStyle(
                  fontSize: 20
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
