import 'package:consumo_servico_avancado/Post.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String _urlBase = "https://jsonplaceholder.typicode.com";

  Future<List<Post>> _recuperarPostagens() async{
    http.Response response = await http.get(_urlBase + "/posts");
    var dadosJson = json.decode(response.body);

    List<Post> postagens = List(); 
    for(var post in dadosJson){
      Post p = Post(post["userId"], post["id"], post["title"], post["body"]);
      postagens.add(p);
    }
    return postagens;
  }

  _post() async{

    var corpo = json.encode(
        {
          "userId" : 1,
          "id": null,
          "title" : "Novo Post",
          "body" : "Esse é o novo post!!!"
        }
    );


    http.Response response = await http.post(
      _urlBase + "/posts",
      headers: {
        "Content-type": "application/json; charset=UTF-8"
      },
      body: corpo
    );
    print(response.statusCode);
    print(response.body);
  }

  _put(){

  }
  _patch(){

  }

  _delete(){

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Consumo de Serviço Avançado"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                RaisedButton(
                  child: Text("Salvar"),
                  onPressed: _post,
                ),
                RaisedButton(
                  child: Text("Salvar"),
                  onPressed: _post,
                ),
                RaisedButton(
                  child: Text("Salvar"),
                  onPressed: _post,
                ),
              ],
            ),
            Expanded(
              child: FutureBuilder<List<Post>>(
                //initialData: ,
                  future: _recuperarPostagens(),
                  builder: (context, snapshot){
                    switch(snapshot.connectionState){
                      case ConnectionState.none:
                      case ConnectionState.waiting:
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                        break;
                      case ConnectionState.active:
                      case ConnectionState.done:
                        if(snapshot.hasError){
                          print("Lista: Erro ao Carregar");
                        } else {
                          print("Lista Carregada");
                          return ListView.builder(
                              itemCount: snapshot.data.length,
                              itemBuilder: (context, index){

                                List<Post> lista = snapshot.data;
                                Post post = lista[index];

                                return ListTile(
                                  title: Text(post.title),
                                  subtitle: Text(post.id.toString()),
                                );
                              }
                          );
                        }
                        break;
                    }
                  }
              ),
            )
          ],
        ),
      ),
    );
  }
}
