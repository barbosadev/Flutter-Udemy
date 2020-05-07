import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List _itens = [];

  void _carregarItens(){
    _itens = [];
    for(int i=0; i<=10; i++){
      Map<String, dynamic> item = Map();
      item["titulo"] =  "Título ${i} Lorem ipsum dolor sit amet.";
      item["descricao"] =  "Descrição ${i} ipsum dolor sit amet.";
      _itens.add(item);
    }
  }

  @override
  Widget build(BuildContext context) {

    _carregarItens();

    return Scaffold(
      appBar: AppBar(
        title: Text("Lista"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: _itens.length,
          itemBuilder: (context, indice){
            return ListTile(
              onTap: (){
                showDialog(
                  context: context,
                  builder: (context){
                    return AlertDialog(
                      title: Text(_itens[indice]["titulo"]),
                      titlePadding: EdgeInsets.all(20),
                      content: Text(_itens[indice]["descricao"]),
                      //backgroundColor: Colors.grey,
                      actions: <Widget>[
                        FlatButton(
                          child: Text("Cancelar"),
                          onPressed: (){
                            Navigator.pop(context);
                          },
                        ),
                        RaisedButton(
                          child: Text(
                            "Enviar",
                            style: TextStyle(
                              color: Colors.white
                            ),
                          ),
                          onPressed: (){

                          },
                          color: Colors.blue,
                        )
                      ],
                    );
                  }
                );
              },
              title: Text(_itens[indice]["titulo"]),
              subtitle: Text(_itens[indice]["descricao"]),
            );
          }
        ),
      ),
    );
  }
}
