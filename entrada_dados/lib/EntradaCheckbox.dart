import 'package:flutter/material.dart';

class EntradaCheckbox extends StatefulWidget {
  @override
  _EntradaCheckboxState createState() => _EntradaCheckboxState();
}

class _EntradaCheckboxState extends State<EntradaCheckbox> {

  bool _checkboxComidaBrasileira = false, _checkboxComidaMexicana = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de Dados"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[

            CheckboxListTile(
              title: Text("Comida Brasileira"),
              //subtitle: Text("A melhor comida do mundo."),
              //activeColor: Colors.green,
              //selected: _checkboxComidaBrasileira,
              secondary: Icon(Icons.fastfood),
              value: _checkboxComidaBrasileira,
              onChanged: (bool valor){
                setState(() {
                  _checkboxComidaBrasileira = valor;
                });
              },
            ),
            CheckboxListTile(
              title: Text("Comida Mexicana"),
              secondary: Icon(Icons.fastfood),
              value: _checkboxComidaMexicana,
              onChanged: (bool valor){
                setState(() {
                  _checkboxComidaMexicana = valor;
                });
              },
            ),
            RaisedButton(
              child: Text(
                  'Salvar',
                style: TextStyle(
                  fontSize: 20
                ),
              ),
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: (){
                print("Comida Brasileira: $_checkboxComidaBrasileira\nComida Mexicana: $_checkboxComidaMexicana");
              },
            )

            /*
            Text("Comida Brasileira"),
            Checkbox(
              value: _checkboxComidaBrasileira,
              onChanged: (bool valor){
                setState(() {
                  _checkboxComidaBrasileira = valor;
                });
              },
            )*/


          ],
        ),
      ),
    );
  }
}
