import 'package:flutter/material.dart';

class EntradaRadioButton extends StatefulWidget {
  @override
  _EntradaRadioButtonState createState() => _EntradaRadioButtonState();
}

class _EntradaRadioButtonState extends State<EntradaRadioButton> {

  String _sexo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de Dados"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            RadioListTile(
              title: Text("Masculino"),
              value: "m",
              onChanged: (String selecionado){
                setState(() {
                  _sexo = selecionado;
                });
              },
              groupValue: _sexo,
            ),
            RadioListTile(
              title: Text("Feminino"),
              value: "f",
              onChanged: (String selecionado){
                setState(() {
                  _sexo = selecionado;
                });
              },
              groupValue: _sexo,
            ),
            RaisedButton(
              child: Text(
                  "Salvar",
                style: TextStyle(
                  fontSize: 20
                ),
              ),
              onPressed: (){
                print("Sexo: $_sexo");
              },
              color: Colors.blue,
              textColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
