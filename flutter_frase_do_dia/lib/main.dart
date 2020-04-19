import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Frase do Dia',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: MyHomePage(title: 'Frase do Dia'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = new Random().nextInt(8);
  List _frases = [
    'Tudo o que um sonho precisa para ser realizado é alguém que acredite que ele possa ser realizado.',
    'Imagine uma nova história para sua vida e acredite nela.',
    'A amizade desenvolve a felicidade e reduz o sofrimento, duplicando a nossa alegria e dividindo a nossa dor.',
    'Ser feliz sem motivo é a mais autêntica forma de felicidade.',
    'Não existe um caminho para a felicidade. A felicidade é o caminho.',
    'Não espere por uma crise para descobrir o que é importante em sua vida.',
    'Nunca deixe ninguém te dizer que não pode fazer alguma coisa. Se você tem um sonho tem que correr atrás dele. As pessoas não conseguem vencer e dizem que você também não vai vencer. Se você quer uma coisa corre atrás.',
    'Saber encontrar a alegria na alegria dos outros, é o segredo da felicidade.'
  ];
  
  void _sorteiaFrase() {
    setState(() {
      _counter = new Random().nextInt(8);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              _frases[_counter],
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _sorteiaFrase,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
