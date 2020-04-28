import 'package:flutter/material.dart';

class EntradaSlider extends StatefulWidget {
  @override
  _EntradaSliderState createState() => _EntradaSliderState();
}

class _EntradaSliderState extends State<EntradaSlider> {

  double _valorSlider = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de Dados"),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 60),
        child: Column(
          children: <Widget>[
            Slider(
              value: _valorSlider,
              min: 0,
              max: 100,
              label: _valorSlider.toString(),
              divisions: 10,
              onChanged: (valor){
                setState(() {
                  _valorSlider = valor;
                });
              },
            ),
            RaisedButton(
             child: Text(
                "Salvar",
                style: TextStyle(
                    fontSize: 20
                ),
              ),
              onPressed: (){
               print(_valorSlider);
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
